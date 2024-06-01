-- 회원 가입 REQ101
INSERT INTO `user` (`userID`, `email`, `userPw`, `userName`, `userNo`, `addr`, `phone`, `level`) VALUES
(21, 'user21@example.com', 'password21', 'Alex', '850803-0123456', '251 Pineapple St, City, Country', '012-345-6789', '2');

SELECT *
FROM `user`
WHERE userID = 20;

-- 회원 탈퇴 REQ102
DELETE
FROM user 
WHERE userID = 21;

-- 회원 정보 수정(주소, 전화번호, 이름) REQ103
UPDATE user
SET addr = '251 Pineapple St, City, Country',
	 phone = '023-312-7777',
	 userName = 'Alex22222'
WHERE userID = 20;	 

-- 회원 대여 횟수 확인 후 등급 반영 REQ104
SELECT u.userID,
		 u.email,
		 u.phone,
		 u.level,
		 COUNT(*) AS '대여횟수'
FROM rent r
LEFT OUTER JOIN user u ON r.userID= u.userID
GROUP BY u.userID
HAVING COUNT(*) >=4;

UPDATE user
SET `level` = 2
WHERE userID = 1;	

-- 회원 이메일(아이디) 검색 REQ 105
SELECT *
FROM user
WHERE email = 'user15@example.com';

-- 비밀번호 찾기 (회원 이메일과 전화번호를 이용하여 비밀번호를 찾기) REQ106
SELECT userName,
		 email,
		 userPW
FROM user
WHERE email = 'user20@example.com' AND phone = '023-312-7777'; 

-- 회원 등급 관리(관리자가 회원의 등급을 변경) REQ107
UPDATE user
SET `level` = 1
WHERE userID = 20;	

-- 회원 대여 횟수 확인 REQ108
SELECT u.userID,
		 u.email,
		 u.phone,
		 COUNT(*) AS '대여횟수'
FROM rent r
INNER JOIN user u ON r.userID= u.userID
WHERE u.userID = 1;

SELECT *
FROM rent;
