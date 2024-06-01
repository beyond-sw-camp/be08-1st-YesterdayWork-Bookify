-- 도서 대여 REQ201
INSERT INTO rent VALUES(NULL, 4, 1);

SELECT *
FROM rent;

SELECT *
FROM rentinfo ri;

SELECT *
FROM book;

-- 대여정보 조회 REQ202
SELECT u.userID,
		 u.userName,
		 u.email,
		 u.addr,
		 u.phone,
		 ri.borrowDate,
		 ri.returnDate,
		 ri.renew,
		 ri.overdueCheck
FROM user u
INNER JOIN rent r ON r.userID = u.userID
INNER JOIN rentinfo ri ON ri.rentID = r.rentID;

-- 대여ID로 연장 REQ203
UPDATE rentinfo ri
JOIN rent r ON ri.rentID = r.rentID
SET ri.renew = 1,
	 ri.returnDate = DATE_ADD(ri.returnDate, INTERVAL 3 DAY)
WHERE r.rentID = 2;

-- 연장 여부 확인 REQ204
SELECT u.userID,
		 u.userName,
		 u.email,
		 u.addr,
		 u.phone,
		 ri.renew,
		 ri.returnDate
FROM user u
INNER JOIN rent r ON r.userID = u.userID
INNER JOIN rentinfo ri ON ri.rentID = r.rentID
WHERE ri.renew IS NOT NULL;

-- 반납일 확인 REQ205
SELECT u.userID,
		 u.userName,
		 u.email,
		 ri.returnDate,
		 DATEDIFF(ri.returnDate, CURDATE()) AS '남은일수'
FROM user u
INNER JOIN rent r ON r.userID = u.userID
INNER JOIN rentinfo ri ON ri.rentID = r.rentID;

-- 대여한 도서 반납 REQ206
DELETE 
FROM rent
WHERE rentID = 7;

SELECT *
FROM rent;

SELECT *
FROM book;

-- 회원의 연체여부 확인 REQ207
SELECT u.userID,
		 u.userName,
		 u.email,
		 u.addr,
		 u.phone,
		 ri.returnDate,
		 DATEDIFF(ri.returnDate, CURDATE()) AS '남은일수',
		 ri.overdueCheck
FROM user u
INNER JOIN rent r ON r.userID = u.userID
INNER JOIN rentinfo ri ON ri.rentID = r.rentID;

-- 연체일 날짜에 따라 연체일 증가하고 감소시킨다 REQ208
SELECT r.userID,
		 r.bookID,
		 ABS(DATEDIFF(ri.returnDate, CURDATE())) AS '연체일수'
FROM rentinfo ri
INNER JOIN rent r ON r.rentID = ri.rentID
WHERE DATEDIFF(returnDate, CURDATE()) < 0;

SELECT *
FROM rentinfo ri;