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

## 📑 Requirements Specification

[요구사항 명세서 바로가기](https://docs.google.com/spreadsheets/d/1azL5JFYkDG-x_0h_-G_UlzYcp8AVSjmVOD48U23bpF8/edit#gid=0)
<p align="center">
  <img alt="Document" src="https://github.com/beyond-sw-camp/be08-1st-YesterdayWork-Bookify/assets/121468393/93614cda-80d6-4123-bdbd-ce07b8a5d9f4">
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
	<a href="https://github.com/user-attachments/files/15525372/userTest.pdf">
		회원 Test Case 저장하기
	</a>
	<p><img alt="회원 Test Case" src="https://github.com/beyond-sw-camp/be08-1st-YesterdayWork-Bookify/assets/121468393/395622d8-4624-4cc5-a58b-fa82d5156775"></p>
</details>
<details>
<summary><b>🗂️ 대여</b></summary>
	<a href="https://github.com/user-attachments/files/15525398/rentTest.pdf">
		대여 Test Case 저장하기
	</a>
	<p><img alt="대여 Test Case" src="https://github.com/beyond-sw-camp/be08-1st-YesterdayWork-Bookify/assets/121468393/329d80f3-0dc7-49a4-bffb-8f0cc3495320"></p>
</details>
<details>
<summary><b>📆 예약</b></summary>
	<a href="https://github.com/user-attachments/files/15525407/reservationTest.pdf">
		예약 Test Case 저장하기
	</a>
	<p><img alt="예약 Test Case" src="https://github.com/beyond-sw-camp/be08-1st-YesterdayWork-Bookify/assets/121468393/4240e9c0-3ebc-45da-a36c-bbffc20fe44e"></p>
</details>
<details>
<summary><b>📚 도서</b></summary>
	<a href="https://docs.google.com/document/d/1JyLfLlMlXd0mAlyI19VEC2OIYVC5WlmuFZSNnT83Ftc/edit">
		도서 Test Case 저장하기
	</a>
	<p><img alt="도서 Test Case" src="https://github.com/beyond-sw-camp/be08-1st-YesterdayWork-Bookify/assets/121468393/3a9caebd-bde8-4f6c-9e8f-4fd186a0924d"></p>
</details>
<details>
<summary><b>💵 결제</b></summary>
    <a href="https://github.com/user-attachments/files/15525372/userTest.pdf">
	    회원 Test Case 저장가기</a>
	<p><img alt="회원 Test Case" src="https://github.com/beyond-sw-camp/be08-1st-YesterdayWork-Bookify/assets/121468393/395622d8-4624-4cc5-a58b-fa82d5156775"></p>
</details>

***
<details>
<summary><b>🏠 스터디룸</b></summary>
    <a href="https://github.com/user-attachments/files/15525372/userTest.pdf">
	    회원 Test Case 저장가기</a>
	<p><img alt="회원 Test Case" src="https://github.com/beyond-sw-camp/be08-1st-YesterdayWork-Bookify/assets/121468393/395622d8-4624-4cc5-a58b-fa82d5156775"></p>
</details>

***
<details>
<summary><b>📞 스터디룸 예약</b></summary>
    <a href="https://github.com/user-attachments/files/15525372/userTest.pdf">
	    회원 Test Case 저장가기</a>
	<p><img alt="회원 Test Case" src="https://github.com/beyond-sw-camp/be08-1st-YesterdayWork-Bookify/assets/121468393/395622d8-4624-4cc5-a58b-fa82d5156775"></p>
</details>

***
<details>
<summary><b>🗑️ 분실물 관리</b></summary>
    <a href="https://github.com/user-attachments/files/15525372/userTest.pdf">
	    회원 Test Case 저장가기</a>
	<p><img alt="회원 Test Case" src="https://github.com/beyond-sw-camp/be08-1st-YesterdayWork-Bookify/assets/121468393/395622d8-4624-4cc5-a58b-fa82d5156775"></p>
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
|김지원|&nbsp;처음에는 DB를 설계해본 경험이 없어서 걱정이 많이 되었습니다. 그러나 개념적 모델링, 요구사항 명세서 등 초반 설계 작업을 팀원들과 함께 꼼꼼하게 해나가는 과정이 있었기 때문에 프로젝트 진행을 수월하게 할 수 있었던 것 같습니다. 무엇보다 사용자의 입장에서 생각하며 어떻게 기능을 생성해야 편리하게 사용할 수 있을지를 고민하는 과정에서 트리거, 프로시저 등을 깊게 학습할 수 있어서 좋았습니다. 이제 앞으로의 프로젝트에서 DB를 설계하는 과정은 두렵지 않을 것 같습니다.|
|임지훈|&nbsp;첫 프로젝트를 진행하면서 주제 선정, 요구사항 분석, 디비 설계, 데이터 가공, 그리고 프로젝트 진행 절차에 대해 배웠습니다. 새로운 분위기에서 첫 프로젝트의 첫 팀장으로서 많은 부담감이 있었습니다. 일정 조율, 의견 수렴 등 어려운 부분들이 많을 거라 생각해고 프로젝트를 진행했지만, 착하고 실력있는 팀원들을 만나 어려움 없이 수월하게 프로젝트를 진행했던것 같습니다.<br>&nbsp;앞으로 진행하는 프로젝트에서는 어떠한 포지션에서든 큰 어려움 없이 팀원들과 함께 좋은 프로젝트를 만들어 갈 수 있을거라 생각합니다.|
|전지연|&nbsp;처음으로 해 본 프로젝트라 그 어떤 프로젝트보다 기억에 남을 것 같습니다. 학교에서든 부트캠프 수업시간에서든 항상 쿼리문 작성만 해보고 이게 실제로 어떻게 쓰이는진 알 수 없었는데 프로젝트를 직접 해보면서 프로그램에서 내가 쓴 쿼리문이 어떻게 쓰이는지 알게되었습니다. 또한 WBS, 요구사항 명세서 등과 같은 문서화 작업과 깃허브도 사용해봄으로써 실무작업과 매우 가까운 프로젝트를 진행했던 것 같아 작은 프로젝트였지만 정말 많은 것을 배우게 된 시간이었습니다.|
|전현규|&nbsp;이번 기반 기술 프로젝트를 진행하면서 데이터베이스에 대해 많은 것을 알아가게 된 것 같습니다. 데이터베이스는 단순히 데이터를 넣기만 하는 것일 뿐만 아니라 각 테이블 사이의 관계가 중요하다는 것을 깨닫게 된 것 같습니다. 또한 여러 명의 팀원과 진행하는 프로젝트는 처음이었지만 주제 선정부터 시작해 데이터베이스를 설계하고 데이터를 넣어보며 진행 과정과 결과를 기록해 볼 수 있는 좋은 경험을 쌓게 된 것 같습니다.|
|홍석민|&nbsp;단순히 DB 설계 단계에서 프로젝트를 진행한 적이 없어서 이번 프로젝트에서 좀 더 데이터베이스의 순기능들에 집중하고 알게 되었던 것 같고 문서화 작업도 하나하나 다시 배워가고 이러한 것들이 왜 중요한지 알 수 있었던 시간이었던 것 같습니다. <br>&nbsp;사소한 기능에도 서로 다른 시선으로 바라보기에 의견이 갈리기도 하였지만 맞추는 과정과 투합하는 과정들이 좀 더 완성도 높은 프로젝트로 가는 발돋움 이었던 것 같습니다. 혼자 공부하고 혼자 토이 프로젝트만 하다가 팀원들하고 오랜만에 같이 프로젝트를 진행해서 저한테는 너무 소중한 시간이었고 chatgpt라는 좋은 친구도 사귀게 되어 좋았습니다.|
<br>
