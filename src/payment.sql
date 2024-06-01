-- REQ 5__

-- REQ503 결제 상태 확인
SELECT p.payID, rr.userID, rr.roomID, p.account, r.paymentCheck, p.payDate
FROM payment p
INNER JOIN reservinfo r on p.reservationID = r.reservationID
INNER JOIN roomreservation rr on r.reservationID = rr.reservationID;

-- REQ504 예약 직후 결제 데이터 추가
DELIMITER $$
CREATE OR REPLACE TRIGGER trg_roomres_pay
AFTER INSERT ON roomreservation
FOR EACH ROW
BEGIN
	DECLARE newResID INT;
	DECLARE newAccount VARCHAR(20);
	
	SET newResID = (SELECT reservationID FROM roomreservation WHERE userID = NEW.userID);
	SET newAccount = (SELECT price FROM room WHERE roomID = NEW.roomID);
	
	INSERT INTO payment(`reservationID`, `account`)
			 VALUES(newResID, newAccount);
END $$
DELIMITER ;

-- REQ505 회원이 결제를 하면 결제일과 결제여부를 변경한다.
DELIMITER $$
CREATE OR REPLACE PROCEDURE payProc(
	IN newResID INT
)
BEGIN
	UPDATE reservinfo
	SET paymentCheck = 'Y'
	WHERE reservationID = newResID;


	UPDATE payment
	SET payDate = CURDATE()
	WHERE reservationID = newResID;

END$$
DELIMITER ;

-- 결제일 결제여부 변경 확인
select rr.reservationID, p.payID, rr.userID, rr.roomID, p.account, p.payDate, ri.paymentCheck
from roomreservation rr
inner join payment p on rr.reservationID = p.reservationID
inner join reservinfo ri on p.reservationID = ri.reservationID;

CALL payProc(37);



