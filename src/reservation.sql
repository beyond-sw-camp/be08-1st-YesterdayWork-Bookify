-- REQ301
-- 예약 테이블 조회 (얘약 정보가 아직 insert 되지 않아 테이블이 비어있음)
SELECT * FROM reservation;

-- 예약할 수 있는 도서 조회
SELECT * FROM book WHERE reservationCheck = 'N';

-- 예약 정보 입력
INSERT INTO `reservation` (`userID`, `bookID`,`reservationDate`) VALUES
(1, 1,'2024-05-01'),
(2, 3,'2024-05-02'),
(3, 5,'2024-05-03');

-- 입력 후 확인
SELECT * FROM reservation;

-- REQ302
-- 입력 전
SELECT * FROM book 
WHERE reservationCheck = 'Y';

-- 예약 데이터 입력
INSERT INTO `reservation` (`userID`, `bookID`,`reservationDate`) VALUES
(1, 1,'2024-05-01'),
(2, 3,'2024-05-02'),
(3, 5,'2024-05-03');

-- 입력 후
SELECT * FROM book 
WHERE reservationCheck = 'Y';

-- REQ303 도서 반납시, 예약자에게 대출을 안내한다.
-- 도서 반납 전
SELECT * FROM resbook_log;
SELECT * FROM rent;

-- 도서 반납 후
DELETE FROM rent WHERE userID = 1;
SELECT * FROM resbook_log;
SELECT * FROM rent;

-- REQ304
-- 예약 취소 전
SELECT r.reservationID, b.bookID, b.title, b.writer
FROM reservation r
INNER JOIN book b on r.bookID = b.bookID;

DELETE
FROM reservation
WHERE reservationID = 1 and bookID = 1;

SELECT r.reservationID, b.bookID, b.title, b.writer, b.reservationCheck
FROM book b
INNER JOIN reservation r on b.bookID = r.bookID;

-- REQ305
-- 예약한 user, book, 예약일 조회
SELECT r.reservationID,
		 r.userID,
		 u.userName,
		 r.bookID,
		 b.title,
		 r.reservationDate
FROM reservation r
INNER JOIN user U ON r.userID = u.userID
INNER JOIN book b ON r.bookID = b.bookID
WHERE reservationCheck = 'Y';