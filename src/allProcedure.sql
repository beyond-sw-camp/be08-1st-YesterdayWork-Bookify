-- booking trigger

-- 책 대여시 대여정보 테이블에 자동 인서트 트리거
DELIMITER $$
CREATE TRIGGER add_rental_record
AFTER INSERT ON rent
FOR EACH ROW
BEGIN
    INSERT INTO rentInfo (rentID, borrowDate, returnDate)
    VALUES (NEW.rentID, NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY));
END$$
DELIMITER ;


-- 대여 데이터 삽입시, 도서 대여여부/수량 변경 트리거
DELIMITER $$
CREATE OR REPLACE TRIGGER trg_book_rent
AFTER INSERT ON rent
FOR EACH ROW
BEGIN
   UPDATE book
   SET rentcheck = 'Y',count = count-1
   WHERE bookID = NEW.bookID;
END $$
DELIMITER ;

-- 대여 데이터 삭제시, 도서 수량 증가 트리거
DELIMITER $$
CREATE OR REPLACE TRIGGER trg_book_rent_return
AFTER DELETE ON rent
FOR EACH ROW
BEGIN
   UPDATE book
   SET count = count + 1
   WHERE bookID = OLD.bookID;
END $$
DELIMITER ;

-- 반납일이 지나면 연체여부 업데이트 스케줄러
SET GLOBAL event_scheduler = ON; -- 이벤트 자동실행은 위한 변수설정

SHOW VARIABLES WHERE variable_name = 'event_scheduler'; -- 변수설정 확인

DELIMITER $$
CREATE EVENT check_overdue_event
ON SCHEDULE EVERY 1 DAY
STARTS CURRENT_TIMESTAMP
DO
BEGIN
    UPDATE rentinfo
    SET overdueCheck = case when returnDate >= CURDATE() then 'N' ELSE 'Y' END;
END $$
DELIMITER ;

-- 책이 반납되면 위의 테이블에 반납된 책의 id, 반납일, 책을 얘약한 사람에게 보낼 메세지를 저장하는 트리거
DELIMITER $$
CREATE TRIGGER trg_resbook_to_user
AFTER DELETE ON rent
FOR EACH ROW
BEGIN
    DECLARE msg VARCHAR(255);
    SET msg = CONCAT('예약한 책이 반납되었습니다. 반납된 책의 ID: ', OLD.bookID);
    INSERT INTO resbook_log (message) VALUES (msg);
END$$
DELIMITER ;

-- REQ302 도서 예약 여부 변경 트리거
DELIMITER $$
CREATE OR REPLACE TRIGGER trg_book_res
AFTER INSERT ON reservation
FOR EACH ROW
BEGIN
	UPDATE book
	SET reservationCheck = 'Y'
	WHERE bookID = NEW.bookID;
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE UpdateSameBookCounts()
BEGIN
    -- 카운트를 합산
    UPDATE book t1
    JOIN (
        SELECT writer, title, SUM(count) AS total_count
        FROM book
        GROUP BY writer, title
    ) t2 ON t1.writer = t2.writer AND t1.title = t2.title
    SET t1.count = t2.total_count;

    -- 중복 제거
    DELETE FROM book
    WHERE (writer, title, bookID) NOT IN (
        SELECT writer, title, MIN(bookID)
        FROM book
        GROUP BY writer, title
    );
END$$
DELIMITER ;

-- REQ304 도서 예약을 취소한다.
DELIMITER $$
CREATE OR REPLACE TRIGGER trg_book_res_cal
AFTER DELETE ON reservation
FOR EACH ROW
BEGIN
	UPDATE book
	SET reservationCheck = 'N'
	WHERE bookID = OLD.bookID;
END $$
DELIMITER ;

-- REQ504 예약 직후 결제 데이터 추가
DELIMITER $$
CREATE OR REPLACE TRIGGER trg_roomres_pay
AFTER INSERT ON roomreservation
FOR EACH ROW
BEGIN
	DECLARE newResID INT;
	DECLARE newAccount VARCHAR(20);
	
	SET newResID = (SELECT reservationID FROM roomreservation WHERE userID = NEW.userID);
	SET newAccount = (SELECT price FROM room WHERE roomID = NEW.roomID);
	
	INSERT INTO payment(`reservationID`, `account`)
			 VALUES(newResID, newAccount);
END $$
DELIMITER ;

-- REQ505 회원이 결제를 하면 결제일과 결제여부를 변경한다.
DELIMITER $$
CREATE OR REPLACE PROCEDURE payProc(
	IN newResID INT
)
BEGIN
	UPDATE reservinfo
	SET paymentCheck = 'Y'
	WHERE reservationID = newResID;


	UPDATE payment
	SET payDate = CURDATE()
	WHERE reservationID = newResID;

END$$
DELIMITER ;


-- REQ703 예약 데이터 생성시 예약 정보 데이터 생성
DELIMITER $$
CREATE OR REPLACE TRIGGER trg_rres_resinfo
AFTER INSERT ON roomreservation
FOR EACH ROW
BEGIN
	DECLARE newResID INT;
	DECLARE newAccount VARCHAR(20);
	
	SET newResID = (SELECT reservationID FROM roomreservation WHERE roomID = NEW.roomID);
	SET newAccount = (SELECT price FROM room WHERE roomID = NEW.roomID);
	
	Insert into `reservinfo` (reservationID, reservationDate, totalPrice) Values
	(newResID, CURDATE(), newAccount);
	UPDATE room r SET reservationCheck = 'N' WHERE r.roomID = NEW.roomID;
END $$
DELIMITER ;

-- REQ707 회원이 예약한 스터디룸을 취소하면 예약 정보 테이블에서도 삭제되어야 한다
-- 결제, 예약 정보, 예약 순서대로 삭제해야 함
-- 프로시저
DELIMITER $$
CREATE OR REPLACE PROCEDURE delResProc(
	IN deResevID INT
)
BEGIN
	DELETE FROM payment WHERE reservationID = deResevID;
	DELETE FROM reservinfo WHERE reservationID = deResevID;
	DELETE FROM roomreservation WHERE reservationID = deResevID;
	UPDATE room SET reservationCheck = 'Y'
	WHERE roomID = (SELECT roomID 
			FROM roomreservation
			WHERE reservationID = deResevID);
END$$
DELIMITER ;

-- REQ711 스터디룸의 예약 상태 변경
DELIMITER $$
CREATE OR REPLACE TRIGGER trg_roomres_room
AFTER INSERT ON roomreservation
FOR EACH ROW
BEGIN
	UPDATE room
	SET reservationCheck = 'Y'
	WHERE roomID = NEW.roomID;
END $$
DELIMITER ;


-- REQ712 스터디룸 예약 종료시 스터디룸의 예약 상태 변경
-- 예약 날짜 지난 것 확인하고, 스터디룸 예약 상태 변경하기
DELIMITER $$
CREATE OR REPLACE PROCEDURE cur_room()
BEGIN
    DECLARE newDate DATE;
    DECLARE newRoomId INT;
    DECLARE endOfRow BOOLEAN DEFAULT FALSE;
    DECLARE roomCursor CURSOR FOR
      (SELECT rr.roomId, r.reservationDate 
		FROM reservinfo r 
		INNER JOIN roomreservation rr ON r.reservationID = rr.reservationID);
    DECLARE CONTINUE HANDLER
        FOR NOT FOUND SET endOfRow = TRUE;

    OPEN roomCursor;
    
    cursor_loop: LOOP
        FETCH roomCursor INTO newRoomId, newDate;
        IF endOfRow THEN
            LEAVE cursor_loop;
        END IF;
    
        IF newDate < CURDATE() THEN
            UPDATE room r SET reservationCheck = 'Y' WHERE r.roomID = newRoomId;
        END IF;
    END LOOP cursor_loop;
    CLOSE roomCursor;
END $$
DELIMITER ;


-- REQ804 분실물 발견 후 30일이 지나면 상태를 '폐기'로 변경한다
DELIMITER $$
CREATE EVENT check_lostarticle_event
ON SCHEDULE EVERY 1 DAY
STARTS CURRENT_TIMESTAMP
DO
BEGIN
    UPDATE lostarticle
    SET status = CASE 
                    WHEN CURDATE() <= DATE_ADD(foundDate, INTERVAL 30 DAY) THEN '분실'
                    ELSE '폐기' 
                 END;
END $$
DELIMITER ;
