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
-- 도서 예약 조회
SELECT r.reservationID, b.bookID, b.title, b.writer, b.reservationCheck
FROM book b
INNER JOIN reservation r on b.bookID = r.bookID;

DELETE
FROM reservation
WHERE reservationID = 10 and bookID = 1;

SELECT r.reservationID, b.bookID, b.title, b.writer, b.reservationCheck
FROM book b
INNER JOIN reservation r on b.bookID = r.bookID;

-- --------------------------------------------------------------------------------------

-- REQ303 도서 반납시, 예약자에게 대출을 안내한다.
-- db에서 직접 메세지를 출력 하는 방법이 없음
-- 예약한 책을 반납하게 되면 어떤 책이 언제 반납되었는지와 유저에게 보낼 메세지를 기록하는 테이블 생성
CREATE TABLE resbook_log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    message VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

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


