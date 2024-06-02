DELIMITER $$
CREATE PROCEDURE UpdateSameBookCounts()
BEGIN
    -- 카운트를 합산
    UPDATE book t1
    JOIN (
        SELECT writer, title, SUM(count) AS total_count
        FROM book
        GROUP BY writer, title
    ) t2 ON t1.writer = t2.writer AND t1.title = t2.title
    SET t1.count = t2.total_count;

    -- 중복 제거
    DELETE FROM book
    WHERE (writer, title, bookID) NOT IN (
        SELECT writer, title, MIN(bookID)
        FROM book
        GROUP BY writer, title
    );
END$$
DELIMITER ;
