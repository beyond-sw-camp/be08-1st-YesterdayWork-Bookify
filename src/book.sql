-- REQ401
-- 모든 도서 조회
SELECT * FROM book;
-- 도서명 검색
SELECT * FROM book
WHERE title = 'Learning SQL';


-- 저자 검색
SELECT * FROM book
WHERE writer = 'Jane Doe';
-- 출판사 검색
SELECT * FROM book
WHERE publisher = 'TechBooks';


-- 발행일 검색
SELECT * FROM book
WHERE pubDate >= '2018-01-01'
AND pubDate <= '2020-01-01';
-- 분류기호 검색
SELECT * FROM book
WHERE category = 'IT';


-- 대출 가능 여부 검색
SELECT * FROM book
WHERE rentCheck = 'N';
SELECT * FROM book
WHERE rentCheck = 'Y';


-- 예약 여부 검색
SELECT * FROM book
WHERE reservationCheck = 'N';
SELECT * FROM book
WHERE reservationCheck = 'Y';

 
-- REQ402
INSERT INTO book (bookID, category, writer, publisher, pubDate, title, reservationCheck, rentCheck, count) VALUES
(21, '과학', 'Stephen Hawking', 'UniverseBooks', '2024-06-01', 'A Brief History of Time', 'N', 'N', 20);
 
SELECT * FROM book;

-- 갈못된 값(null) 들어간 경우
INSERT INTO book (bookID, category, writer, publisher, pubDate, title, reservationCheck, rentCheck, count) VALUES
(21, null, null, 'UniverseBooks', '2024-06-01', 'A Brief History of Time', 'N', 'N', 20);


-- REQ403 
-- 원래 입력되어있던 도서 확인
SELECT * FROM book;

-- 도서명과 작가명이 같은 데이터 입력
INSERT INTO book (bookID, category, writer, publisher, pubDate, title, reservationCheck, rentCheck, count) VALUES
(21, '과학', 'kim', '출판사1', '2024-05-05', '도서명1', 'N', 'N', 10);
SELECT * FROM book;

-- 동일한 제목과 작가명을 가진 책이면 수량을 합치는 프로시저 실행
CALL UpdateSameBookCounts();
SELECT * FROM book;
 
-- REQ404
-- 대출 여부 검색
SELECT * FROM book
WHERE rentCheck = 'N';
SELECT * FROM book
WHERE rentCheck = 'Y';
 
-- REQ405
-- 도서 정보 수정
-- 수정 전
SELECT *
FROM book
WHERE title = 'Learning SQL';

-- Learning SQL이라는 도서의 저자 수정
-- 수정 후
UPDATE book
SET writer = 'John Doe'
WHERE title = 'Learning SQL';
 
SELECT *
FROM book
WHERE title = 'Learning SQL';


-- REQ406
-- 도서 삭제
-- 도서의 이름이 Learning SQL인 도서 삭제
-- 삭제 전
SELECT * FROM book WHERE title = 'Learning SQL';
 
-- 삭제 후
DELETE FROM book WHERE title = 'Learning SQL';
SELECT * FROM book WHERE title = 'Learning SQL';  
 



 
 
 

