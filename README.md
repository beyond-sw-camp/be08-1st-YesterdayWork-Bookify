# 📖 Bookify
<a href="https://github.com/beyond-sw-camp/be08-1st-YesterdayWork-Bookify"/>
  <img src="https://github.com/beyond-sw-camp/be08-1st-5team/assets/121468393/2556ef3a-2829-41cd-b7ca-f36a8b1e1dd6"/>
</a>

> [PLAYDATA] 한화시스템 BEYOND SW캠프 / Bookify

> Team - 어제일(어디서든 재미지게 일해요!)
<br>

## ✨ Medium
- [🇺🇸 Medium English.ver](https://medium.com/@ljh01051826177/bookify-book-management-system-1584d119a7a6) <br>
- [🇰🇷 Medium Korean.ver](https://medium.com/@ljh01051826177/bookify-%EB%8F%84%EC%84%9C-%EA%B4%80%EB%A6%AC-%EC%8B%9C%EC%8A%A4%ED%85%9C-1886009e4799)
<br>

## ⚙Tech Stack
<p><strong> OS <br></strong>
<br>
<img src="https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black">
</p>
<p><strong> Database <br></strong>
<br>
<img src="https://img.shields.io/badge/mariaDB-003545?style=for-the-badge&logo=mariaDB&logoColor=white">
</p>
<p><strong> Collaboration Tool <br></strong>
<br>
<img src="https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white"> <img src="https://img.shields.io/badge/Notion-%23000000.svg?style=for-the-badge&logo=notion&logoColor=white">
</p>
<br>

## 🗂️ Project Introduction
**프로젝트 소개:**
<br>
&nbsp;&nbsp;Bookify는 도서 및 회원 정보를 효율적으로 관리하기 위한 도서 관리 프로그램입니다. 이 프로그램은 도서의 재고 관리와 도서관 내의 다양한 서비스를 효율적으로 운영할 수 있는 기능을 제공합니다. 또한, 독서 콘텐츠의 소개와 추천을 통해 사용자들의 독서 활동을 지원하고 독서 문화를 활성화하는 데 도움이 됩니다. 이 프로젝트는 도서 관리 업무 효율성을 높이고, 이용자들에게 더 나은 독서 환경을 제공하기 위해 개발되었습니다.

**프로젝트 필요성:**
<br>
&nbsp;&nbsp;1994년 첫 조사 당시 86%를 넘겼던 종합 독서율은 2013년 이후 계속 줄어 2023년에는 43%가 되었습니다. 이로 인해 한 사이트에서 올린 사과문의 마음이 깊고 간절하다는 뜻의 ‘심심한’ 사과를 지루하고 재미가 없다는 ‘심심하다’로 이해한 사람들이 생기는 등의 문해력 논란이 발생하고 있습니다. 독서는 지식 습득과 창의적 사고와 커뮤니케이션 능력을 향상시키는 데 중요한 역할을 합니다. 이 프로젝트를 통해 줄어들고 있는 독서율을 올려 독서 문화를 활성화시키고 사람들의 문해력을 향상시키며, 지식습득에 도움이 될 것으로 기대됩니다.
<div style="display: flex;">
    <img src="https://github.com/beyond-sw-camp/be08-1st-YesterdayWork-Bookify/assets/121468393/6072c235-188d-4491-9479-68283b3c84fc" alt="Image 1" style="width: 480px; height: 270px; object-fit: cover;">
    <img src="https://github.com/beyond-sw-camp/be08-1st-YesterdayWork-Bookify/assets/121468393/d1d4e736-aff9-47f1-ac11-55e5c54d506e" alt="Image 2" style="width: 480px; height: 270px; object-fit: cover;">
</div>
<br>

**프로젝트 목표:**
&nbsp;&nbsp;
- 요구 사항 명세서 (**Functional Requirements Document**) 작성

- 개념적 모델링 (Conceptual Modeling)

  - 개체 (Entity), 속성 (Attribute), 관계 (Relation) 정의

  - ER-Diagram 작성

- 논리적 모델링 (Logical Modeling)

  - ER-Diagram을 테이블 형태의 모델로 재구성 

  -  Type, Key 추가

  - 정규화 (Normalization)

- 물리적 모델링 (Physical Modeling)

  - 환경 & DB 선택 (Linux-Ubuntu, MariaDB)

  - 선택한 환경 & DB에 맞춰 Query 작성

- 테스트 (Test)

  - 테스트 케이스 명세서 (Test Case Document) 작성

  - 테스트 (Test)
<br>

**기대 효과:**
&nbsp;&nbsp;
- 도서 관리 업무 효율성 증대
- 독서 문화 활성화
- 사용자의 독서 활동 지원
- 문해력 향상, 지식 습득 도움
<br><br>

## 📑 Functional Requirements Document

[요구사항 명세서 바로가기](https://docs.google.com/spreadsheets/d/1azL5JFYkDG-x_0h_-G_UlzYcp8AVSjmVOD48U23bpF8/edit#gid=0)
<p align="center">
  <img alt="Document" src="">
</p>
<br>

## 💾 Project Implementation
### 1. Relation Schema

<p align="center">
  <img alt="Diagram" src="https://github.com/beyond-sw-camp/be08-1st-YesterdayWork-Bookify/assets/121468393/688285ab-1d44-4376-9220-7ca2c4dd3744">
</p>
<br>

### 2. E-R Diagram

<p align="center">
  <img alt="ERD" src="https://github.com/beyond-sw-camp/be08-1st-YesterdayWork-Bookify/assets/121468393/42d98645-f8eb-478c-892c-f9f8ae6224a0">
</p>
<br>

### 3. Queries
```sql
-- user 테이블 생성
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

-- book 테이블 생성
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

-- room 테이블 생성
CREATE TABLE room (
	roomID INT AUTO_INCREMENT PRIMARY KEY,
	roomNo INT NOT NULL,
	capacity INT NOT NULL,
	price VARCHAR(20) NOT NULL,
	description VARCHAR(100) NOT NULL,
	reservationCheck CHAR(1) DEFAULT 'N' CHECK(reservationCheck IN ('Y', 'N'))
);

-- rent 테이블 생성
CREATE TABLE rent (
	rentID INT AUTO_INCREMENT PRIMARY KEY,
	userID INT NOT NULL REFERENCES user(userID),
	bookID INT NOT NULL REFERENCES book(bookID)
);

-- rentinfo 테이블 생성
CREATE TABLE rentinfo (
	infoID INT AUTO_INCREMENT PRIMARY KEY,
	rentID INT NOT NULL REFERENCES rent(rentID),
	borrowDate DATE NOT NULL,
	returnDate DATE NOT NULL,
	renew INT,
	overdueCheck CHAR(1) DEFAULT 'N' CHECK(overdueCheck IN ('Y', 'N'))
);

-- roomreservation 테이블 생성
CREATE TABLE roomreservation (
	reservationID INT AUTO_INCREMENT PRIMARY KEY,
	userID INT NOT NULL REFERENCES user(userID),
	roomID INT NOT NULL REFERENCES room(roomID)
);

-- reservinfo 테이블 생성
CREATE TABLE reservinfo (
	infoID INT AUTO_INCREMENT PRIMARY KEY,
	reservationID INT NOT NULL REFERENCES roomreservation(reservationID),
	reservationDate DATE NOT NULL,
	startTime TIME NOT NULL,
	endTime TIME NOT NULL,
	totalPrice VARCHAR(20) NOT NULL,
	paymentCheck CHAR(1) DEFAULT 'N' CHECK(paymentCheck IN ('Y', 'N'))
);

-- reservation 테이블 생성
CREATE TABLE reservation (
	reservationID INT AUTO_INCREMENT PRIMARY KEY,
	userID INT NOT NULL,
	bookID INT NOT NULL,
	FOREIGN KEY (userID) REFERENCES user(userID),
	FOREIGN KEY (bookID) REFERENCES book(bookID),
	reservationDate DATE NOT NULL
);

-- payment 테이블 생성
CREATE TABLE payment (
	payID INT AUTO_INCREMENT PRIMARY KEY,
	reservationID INT NOT NULL REFERENCES roomreservation(reservationID),
	account VARCHAR(20) NOT NULL,
	payDate DATE NOT NULL
);

-- lostArticle 테이블 생성
CREATE TABLE lostArticle (
	articleID INT AUTO_INCREMENT PRIMARY KEY,
	articleName VARCHAR(20) NOT NULL,
	description VARCHAR(100) NOT NULL,
	foundDate DATE NOT NULL,
	status CHAR(2) CHECK(STATUS IN ('분실', '수령', '폐기'))
);
```
<br>

### 4. Test Case
<details>
<summary><b>👨‍👩‍👧‍👦 회원</b></summary>
    <div>
         <details>
         <summary><b>1. 회원가입</b></summary>
         <p><img src=""/></p>
         </details>
	 <details>
         <summary><b>2. 비밀번호 찾기</b></summary>
         <p><img src=""/></p>
	 <p><img src=""/></p>
         </details>
	 <details>
         <summary><b>3. 회원정보 수정</b></summary>
         <p><img src=""/></p>
	 <p><img src=""/></p>
         </details>
	 <details>
         <summary><b>4. 회원 탈퇴</b></summary>
         <p><img src=""/></p>
	 <p><img src=""/></p>
         </details>
	 <details>
         <summary><b>5. 초대 내역 확인</b></summary>
         <p><img src=""/></p>
         <p><img src=""/></p>
	 <p><img src=""/></p>
	 <p><img src=""/></p>
         </details>
	 <details>
         <summary><b>6. 회원 상태 관리</b></summary>
         <p><img src=""/></p>
	 <p><img src=""/></p>
         </details>
	 <details>
         <summary><b>7. 회원ID 검색</b></summary>
         <p><img src=""/></p>
	 <p><img src=""/></p>
         </details>				 
	 <details>
         <summary><b>8. 닉네임 검색</b></summary>
         <p><img src=""/></p>
	 <p><img src=""/></p>
         </details>
    </div>
</details>

***
<details>
<summary><b>🗂️ 대여</b></summary>
    <div>
         <details>
         <summary><b>1. </b></summary>
         <p><img src=""/></p>
         </details>
    </div>
</details>

***
<details>
<summary><b>📆 예약</b></summary>
    <div>
         <details>
         <summary><b>1. </b></summary>
         <p><img src=""/></p>
         </details>
    </div>
</details>

***
<details>
<summary><b>📚 도서</b></summary>
    <div>
         <details>
         <summary><b>1. </b></summary>
         <p><img src=""/></p>
         </details>
    </div>
</details>

***
<details>
<summary><b>💵 결제</b></summary>
    <div>
         <details>
         <summary><b>1. </b></summary>
         <p><img src=""/></p>
         </details>
    </div>
</details>

***
<details>
<summary><b>🏠 스터디룸</b></summary>
    <div>
         <details>
         <summary><b>1. </b></summary>
         <p><img src=""/></p>
         </details>
    </div>
</details>

***
<details>
<summary><b>📞 스터디룸 예약</b></summary>
    <div>
         <details>
         <summary><b>1. </b></summary>
         <p><img src=""/></p>
         </details>
    </div>
</details>

***
<details>
<summary><b>🗑️ 분실물 관리</b></summary>
    <div>
         <details>
         <summary><b>1. </b></summary>
         <p><img src=""/></p>
         </details>
    </div>
</details>

***
<br>

## 📆 WBS

[WBS 바로가기](https://docs.google.com/spreadsheets/d/1qBXJ-O0gGKtYRTByAJKakIpcM5evuhXJHEDdu9YWGek/edit#gid=0)
<p align="center">
  <img alt="WBS" src="https://github.com/beyond-sw-camp/be08-1st-YesterdayWork-Bookify/assets/121468393/ab87496e-7512-4023-bbdd-6c3d31940eed">
</p>
<br>

## 👨‍👩‍👧‍👦 Member

[김지원](https://github.com/gogowonji)|[임지훈](https://github.com/limjihoon99)|[전지연](https://github.com/jiyeonjeon01)|[전현규](https://github.com/ideapple)|[홍석민](https://github.com/mmvne)|
------|------|------|--------------------------------------|------|
<img alt="김지원" src="https://github.com/beyond-sw-camp/be08-1st-YesterdayWork-Bookify/assets/121468393/6afb6694-95b9-49f0-8366-412e47b15b30" width="400px"/> | <img alt="임지훈" src="https://github.com/beyond-sw-camp/be08-1st-YesterdayWork-Bookify/assets/121468393/c0dba10c-2dd4-42cd-8859-82984a067b50" width="400px"/> | <img alt="전지연" src="https://github.com/beyond-sw-camp/be08-1st-YesterdayWork-Bookify/assets/121468393/1ccec0c4-2529-4f5a-b2ee-0066d5cc1219" width="400px"/> | <img alt="전현규" src="https://github.com/beyond-sw-camp/be08-1st-YesterdayWork-Bookify/assets/121468393/ee7bb43e-399b-4870-9213-06d25e3115f9" width="400px"/> | <img alt="홍석민" src="https://github.com/beyond-sw-camp/be08-1st-YesterdayWork-Bookify/assets/121468393/39bb1f02-eaa5-45c5-a64d-a85676b5e942" width="400px"/> | 

<br>

## 📚 Memoir
|&nbsp;&nbsp;팀&nbsp;원&nbsp;&nbsp;&nbsp;|회고록|
|:---:|---|
|김지원|<br>&nbsp;|
|임지훈|<br>&nbsp;|
|전지연|<br>&nbsp;|
|전현규|<br>&nbsp;|
|홍석민|<br>&nbsp;|
<br>
