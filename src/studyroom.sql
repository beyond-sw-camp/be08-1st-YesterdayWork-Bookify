-- REQ6__

-- REQ604 특정 스터디룸을 삭제할 수 있다

-- 스터디룸 테이블 조회
select * from room;

DELETE
FROM room
WHERE reservationCheck = 'N' and roomID = 10;