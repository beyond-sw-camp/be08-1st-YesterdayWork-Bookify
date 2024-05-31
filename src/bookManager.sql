CREATE TABLE user (
	userID INT AUTO_INCREMENT PRIMARY KEY,
	email VARCHAR(50) NOT NULL,
	userPW VARCHAR(20) NOT NULL,
	userName VARCHAR(15) NOT NULL,
	userNo VARCHAR(15) NOT NULL,
	addr VARCHAR(100) NOT NULL,
	phone VARCHAR(20) NOT NULL,
	level CHAR(1) DEFAULT '1' CHECK(level IN ('1', '2', '3'))
);

CREATE TABLE book (
	bookID INT AUTO_INCREMENT PRIMARY KEY,
	category CHAR(2) CHECK(category IN ('IT', '과학', '수학', '인문', '소설')),
	writer VARCHAR(15) NOT NULL,
	publisher VARCHAR(20) NOT NULL,
	pubDate DATE NOT NULL,
	title VARCHAR(50) NOT NULL,
	reservationCheck CHAR(1) DEFAULT 'N' CHECK(reservationCheck IN ('Y', 'N')),
	rentCheck CHAR(1) DEFAULT 'N' CHECK(rentCheck IN ('Y', 'N')),
	count INT
);

CREATE TABLE room (
	roomID INT AUTO_INCREMENT PRIMARY KEY,
	roomNo INT NOT NULL,
	capacity INT NOT NULL,
	price VARCHAR(20) NOT NULL,
	description VARCHAR(100) NOT NULL,
	reservationCheck CHAR(1) DEFAULT 'N' CHECK(reservationCheck IN ('Y', 'N'))
);

CREATE TABLE rent (
	rentID INT AUTO_INCREMENT PRIMARY KEY,
	userID INT NOT NULL REFERENCES user(userID),
	bookID INT NOT NULL REFERENCES book(bookID)
);

CREATE TABLE rentinfo (
	infoID INT AUTO_INCREMENT PRIMARY KEY,
	rentID INT NOT NULL REFERENCES rent(rentID),
	borrowDate DATE NOT NULL,
	returnDate DATE NOT NULL,
	renew INT,
	overdueCheck CHAR(1) DEFAULT 'N' CHECK(overdueCheck IN ('Y', 'N'))
);

CREATE TABLE roomreservation (
	reservationID INT AUTO_INCREMENT PRIMARY KEY,
	userID INT NOT NULL REFERENCES user(userID),
	roomID INT NOT NULL REFERENCES room(roomID)
);

CREATE TABLE reservinfo (
	infoID INT AUTO_INCREMENT PRIMARY KEY,
	reservationID INT NOT NULL REFERENCES roomreservation(reservationID),
	reservationDate DATE NOT NULL,
	startTime TIME NOT NULL,
	endTime TIME NOT NULL,
	totalPrice VARCHAR(20) NOT NULL,
	paymentCheck CHAR(1) DEFAULT 'N' CHECK(paymentCheck IN ('Y', 'N'))
);

CREATE TABLE reservation (
	reservationID INT AUTO_INCREMENT PRIMARY KEY,
	userID INT NOT NULL,
	bookID INT NOT NULL,
	FOREIGN KEY (userID) REFERENCES user(userID),
	FOREIGN KEY (bookID) REFERENCES book(bookID),
	reservationDate DATE NOT NULL
);

CREATE TABLE payment (
	payID INT AUTO_INCREMENT PRIMARY KEY,
	reservationID INT NOT NULL REFERENCES roomreservation(reservationID),
	account VARCHAR(20) NOT NULL,
	payDate DATE NOT NULL
);

CREATE TABLE lostArticle (
	articleID INT AUTO_INCREMENT PRIMARY KEY,
	articleName VARCHAR(20) NOT NULL,
	description VARCHAR(100) NOT NULL,
	foundDate DATE NOT NULL,
	status CHAR(2) CHECK(STATUS IN ('분실', '수령', '폐기'))
);