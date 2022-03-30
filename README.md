## 청정구역 (Clena Area)
### ✔프로젝트 설명
- 현재 아버지께서 운영하고 계신 '청정구역(청소업체)'의 예약 홈페이지를 제작
- 실제 사용 목적이 아닌, 포트폴리오 작성용으로 제작
- 예약하기, 예약조회, 후기작성 의 기능을 갖춤

### 🔗홈페이지
- [청정구역 바로가기](http://54.180.113.138:8080/main_view)
  - 예약조회 테스트 계정 (예약하기 -> 예약조회 에서 확인 가능)
  - 이름: <mark>석유림</mark>
  - 핸드폰번호: <mark>010-3668-2634</mark>

### 📖포트폴리오
[포트폴리오 바로가기](#)

### 1️⃣설계하기
- UI 설계
  - https://ovenapp.io/view/Er4HEdx97oOfgP1xy2nDPzbRthE1Cynd/
- DB, URL 설계
  - https://docs.google.com/spreadsheets/d/1zoXpHhYcAxxV3zpDdZjV7iiG6h7B9MkpXF71DpbimUY/edit#gid=23488153
  
### 2️⃣기능 맛보기
- 예약하기 및 예약조회
  - package: [com.yullmaster.cleanArea.reservation.*](https://github.com/syr96/cleanArea/tree/master/src/main/java/com/yullmaster/cleanArea/reservation)
  - 예약하기 view: [/WEB-INF/jsp/reservation/view.jsp](https://github.com/syr96/cleanArea/blob/master/src/main/webapp/WEB-INF/jsp/reservation/view.jsp)
  - 예약조회 view: [/WEB-INF/jsp/reservation/lookup.jsp](https://github.com/syr96/cleanArea/blob/master/src/main/webapp/WEB-INF/jsp/reservation/lookup.jsp)
- 후기작성 및 후기보기
  - package: [com.yullmaster.cleanArea.reservation.review.*](https://github.com/syr96/cleanArea/tree/master/src/main/java/com/yullmaster/cleanArea/reservation/review)
  - 후기작성 view: [/WEB-INF/jsp/review/createReview.jsp](https://github.com/syr96/cleanArea/blob/master/src/main/webapp/WEB-INF/jsp/review/createReview.jsp)
  - 후기보기 view: [/WEB-INF/jsp/review/createReview.jsp](https://github.com/syr96/cleanArea/blob/master/src/main/webapp/WEB-INF/jsp/review/listReview.jsp)

### 3️⃣자세히보기
[청정구역 맛보기](#)

### ♻출처
- Tomcat: [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0) 
- Mysql: [GPLv2 or proprietary](https://www.gnu.org/licenses/gpl-3.0)
- Spring framework: [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0)  
- Mybatis: [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0)
- Bootstrap: [MIT License](https://opensource.org/licenses/MIT)
- jQuery: [MIT License](https://opensource.org/licenses/MIT)
- 이미지🖼: [pixabay](https://pixabay.com/ko/)

### 🎞향후 계획
- package 재정비 필요
- 문의하기 게시판 추가
- 청소하는 방법 업로드
- 청소 종류 소개 추가
