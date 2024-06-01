-- REQ 7__

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

-- REQ710 reservinfo 예약정보 확인
select r.infoID ,rr.userID, rr.roomID, r.reservationDate, r.totalPrice, r.paymentCheck
from roomreservation rr
inner join reservinfo r on rr.reservationID = r.reservationID;

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

-- 예약 날짜, 예약 상태 조회
select r.`reservationID`, rr.`roomID`, r.`reservationDate`, ro.`reservationCheck`
from reservinfo r
inner join roomreservation rr on r.reservationID = rr.reservationID
INNER JOIN room ro ON rr.roomID = ro.roomID;

CALL cur_room();


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
-- 예약정보 조회
SELECT * from reservinfo;

CALL delResProc(35);




-- REQ709 회원은 원하는 스터디룸을 예약을 할 수 있는지 확인한다.
SELECT *
FROM room;


