-- REQ101 회원 데이터 
INSERT INTO `user` (`userID`, `email`, `userPw`, `userName`, `userNo`, `addr`, `phone`, `level`) VALUES
(1, 'user1@example.com', 'password1', 'John', '901231-1234567', '123 Main St, City, Country', '123-456-7890', '1'),
(2, 'user2@example.com', 'password2', 'Jane', '871015-2345678', '456 Elm St, City, Country', '234-567-8901', '1'),
(3, 'user3@example.com', 'password3', 'David', '800503-3456789', '789 Oak St, City, Country', '345-678-9012', '1'),
(4, 'user4@example.com', 'password4', 'Emily', '950712-4567890', '321 Maple St, City, Country', '456-789-0123', '2'),
(5, 'user5@example.com', 'password5', 'Michael', '920305-5678901', '654 Pine St, City, Country', '567-890-1234', '2'),
(6, 'user6@example.com', 'password6', 'Sarah', '871204-6789012', '987 Cedar St, City, Country', '678-901-2345', '1'),
(7, 'user7@example.com', 'password7', 'Daniel', '901213-7890123', '741 Birch St, City, Country', '789-012-3456', '1'),
(8, 'user8@example.com', 'password8', 'Jessica', '890901-8901234', '852 Walnut St, City, Country', '890-123-4567', '1'),
(9, 'user9@example.com', 'password9', 'Andrew', '940606-9012345', '963 Cherry St, City, Country', '901-234-5678', '1'),
(10, 'user10@example.com', 'password10', 'Amanda', '830407-0123456', '159 Peach St, City, Country', '012-345-6789', '2'),
(11, 'user11@example.com', 'password11', 'Christopher', '920820-1234567', '357 Mango St, City, Country', '123-456-7890', '3'),
(12, 'user12@example.com', 'password12', 'Megan', '870601-2345678', '258 Banana St, City, Country', '234-567-8901', '2'),
(13, 'user13@example.com', 'password13', 'Justin', '800312-3456789', '753 Grape St, City, Country', '345-678-9012', '1'),
(14, 'user14@example.com', 'password14', 'Lauren', '950915-4567890', '951 Lemon St, City, Country', '456-789-0123', '2'),
(15, 'user15@example.com', 'password15', 'Ashley', '890824-5678901', '357 Avocado St, City, Country', '567-890-1234', '3'),
(16, 'user16@example.com', 'password16', 'Ryan', '931207-6789012', '258 Olive St, City, Country', '678-901-2345', '2'),
(17, 'user17@example.com', 'password17', 'Samantha', '840601-7890123', '753 Papaya St, City, Country', '789-012-3456', '1'),
(18, 'user18@example.com', 'password18', 'Brandon', '910515-8901234', '951 Durian St, City, Country', '890-123-4567', '2'),
(19, 'user19@example.com', 'password19', 'Melissa', '870329-9012345', '357 Kiwi St, City, Country', '901-234-5678', '1'),
(20, 'user20@example.com', 'password20', 'Alexandra', '900802-0123456', '258 Pineapple St, City, Country', '012-345-6789', '2');

-- REQ201 대여 데이터 (user, book 테이블 먼저 insert 후 사용)
INSERT INTO `rent` (`rentID`,`userID`, `bookID`) VALUES
(1, 1, 1),
(2, 2, 5),
(3, 3, 9),
(4, 4, 14),
(5, 5, 20),
(6, 6, 21);

-- REQ301 예약 데이터 (user, book 테이블 먼저 insert 후 사용)
INSERT INTO `reservation` (`userID`, `bookID`,`reservationDate`) VALUES
(1, 1,'2024-05-01'),
(2, 3,'2024-05-02'),
(3, 5,'2024-05-03');

-- REQ401 도서 데이터
INSERT INTO book (bookID, category, writer, publisher, pubDate, title, reservationCheck, rentCheck, count) VALUES
(1, '과학', 'kim', '출판사1', '2024-05-05', '도서명1', 'N', 'N', 30),
(2, '수학', 'pack', '출판사2', '2023-07-15', '도서명2', 'N', 'N', 30),
(3, 'IT', 'na', '출판사3', '2024-05-13', '도서명3', 'N', 'N', 30),
(4, '인문', 'lee', '출판사4', '2022-11-05', '도서명4', 'N', 'N', 30),
(5, '소설', 'choi', '출판사5', '2024-08-21', '도서명5', 'N', 'N', 30),
(6, 'IT', 'James Smith', 'TechBooks', '2021-05-15', 'Learning SQL', 'N', 'N', 10),
(7, '과학', 'Jane Doe', 'SciencePress', '2020-11-10', 'The Quantum World', 'Y', 'N', 5),
(8, '수학', 'Albert Newton', 'MathWorld', '2019-02-22', 'Advanced Calculus', 'N', 'Y', 3),
(9, '인문', 'Sophia Lee', 'HumanitiesPub', '2018-07-30', 'Philosophy Basics', 'N', 'N', 7),
(10, '소설', 'Mark Twain', 'FictionHouse', '2022-01-01', 'The Great Adventure', 'Y', 'Y', 12),
(11, '과학', 'John Doe', 'ScienceWorld', '2021-09-12', 'Physics Fundamentals', 'N', 'N', 25),
(12, '수학', 'Jane Austen', 'MathPro', '2023-02-18', 'Algebra Essentials', 'N', 'N', 15),
(13, 'IT', 'Alan Turing', 'CompSciPress', '2020-10-10', 'Computing Machinery', 'N', 'N', 20),
(14, '인문', 'Mary Shelley', 'LiteratureBooks', '2019-08-01', 'Humanities Insight', 'N', 'N', 5),
(15, '소설', 'George Orwell', 'NovelsInc', '2021-06-06', 'Dystopian Dreams', 'N', 'N', 8),
(16, '과학', 'Isaac Newton', 'PhysicsPress', '2019-03-14', 'Principia Mathematica', 'N', 'N', 12),
(17, '수학', 'Carl Gauss', 'MathGenius', '2022-04-17', 'Number Theory', 'N', 'N', 18),
(18, 'IT', 'Ada Lovelace', 'CodeBooks', '2021-12-25', 'Programming Concepts', 'N', 'N', 22),
(19, '인문', 'Leo Tolstoy', 'ClassicPub', '2023-09-09', 'War and Peace', 'N', 'N', 7),
(20, '소설', 'J.K. Rowling', 'MagicBooks', '2020-07-31', 'Harry Potter', 'N', 'N', 10);

-- REQ601 스터디룸 데이터
INSERT INTO `room` (`roomID`, `roomNo`, `capacity`, `price`, `description`, `reservationCheck`) VALUES
(1, 101, 2, '100', 'Cozy room with a queen bed and ocean view', 'N'),
(2, 102, 4, '200', 'Spacious suite with two bedrooms and a kitchen', 'N'),
(3, 103, 1, '80', 'Single room with a single bed and city view', 'N'),
(4, 104, 2, '120', 'Modern room with a king bed and mountain view', 'N'),
(5, 105, 3, '150', 'Family room with a bunk bed and play area', 'N'),
(6, 106, 2, '110', 'Deluxe room with a double bed and balcony', 'N'),
(7, 107, 2, '90', 'Standard room with a double bed and garden view', 'N'),
(8, 108, 1, '70', 'Economy room with a single bed and no view', 'N'),
(9, 109, 4, '250', 'Luxury suite with a living room and jacuzzi', 'N'),
(10, 110, 2, '130', 'Executive room with a king bed and office space', 'N');

-- REQ802 분실물관리 데이터
INSERT INTO `lostArticle` (`articleID`, `articleName`, `description`, `foundDate`, `status`) VALUES
(1, 'Wallet', 'Black leather wallet with initials "J.S." engraved', '2024-05-15', '분실'),
(2, 'Keys', 'Set of keys with a keychain shaped like a cat', '2024-05-20', '분실'),
(3, 'Phone', 'iPhone X with cracked screen, found near the cafe', '2024-05-18', '분실'),
(4, 'Watch', 'Silver wristwatch with a blue dial and leather strap', '2024-05-22', '분실'),
(5, 'Umbrella', 'Red umbrella with a wooden handle, left in the lobby', '2024-05-25', '분실');