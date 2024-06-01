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


