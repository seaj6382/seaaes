USE oz_yes24;

-- 조인 및 관계

	-- 저자별 출판한 책의 수
-- SELECT author, COUNT(*) AS books_count FROM books GROUP BY author ORDER BY books_count DESC;

	-- 가장 많은 책을 출판한 출판사
-- SELECT publisher, COUNT(*) AS Publishing_count FROM books GROUP BY publisher;

	-- 가장 높은 평균 평점을 가진 저자
-- SELECT author, AVG(rating) AS rating_avg FROM books GROUP BY author ORDER BY rating_avg;

	-- 국내도서랭킹 1위인 책의 제목과 저자
-- SELECT * FROM books WHERE ranking = 1;

	-- 판매지수와 리뷰 수의 높은 상위 10권 조회
-- SELECT title, sales, review FROM books ORDER BY sales DESC, review DESC LIMIT 10;

	-- 가장 최근에 출판한 책 조회
-- SELECT * FROM books ORDER BY publishing DESC LIMIT 5;
