-- REQ 8__

-- REQ803 분실물을 찾아갔을 경우, 분실물 상태를 변경한다
SELECT * FROM lostArticle;

UPDATE lostArticle
SET status = '수령'
WHERE articleID = 4;

-- REQ804
-- 분실물 발견 후 30일이 지나면 상태를 '폐기'로 변경한다
DELIMITER $$
CREATE EVENT check_lostarticle_event
ON SCHEDULE EVERY 1 DAY
STARTS CURRENT_TIMESTAMP
DO
BEGIN
    UPDATE lostarticle
    SET status = CASE 
                    WHEN CURDATE() <= DATE_ADD(foundDate, INTERVAL 30 DAY) THEN '분실'
                    ELSE '폐기' 
                 END;
END $$
DELIMITER ;
