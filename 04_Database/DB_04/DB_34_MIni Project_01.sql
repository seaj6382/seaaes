USE oz_yes24;

-- 기본 조회 및 필터링 

	-- 모든 제목과 저자 조회 
-- SELECT title, author FROM books;

	-- 평점 4점 이상인 책 조회
-- SELECT * FROM books WHERE rating >=8.0;

	-- 리뷰가 100개 이상인 책 조회
-- SELECT title, review FROM books WHERE review >= 100;
-- SELECT title, review FROM books WHERE review >= 100 ORDER BY review DESC;

	-- 가격이 20,000원 미만인 책
-- SELECT title, price FROM books WHERE price < 20000;

	-- TOP100에 4주 이상인 책
-- SELECT * FROM books WHERE ranking_weeks >= 4 ORDER BY ranking_weeks DESC;

	-- 특정 저자의 모든 책 조회
-- SELECT * FROM books WHERE author = '강용수 저';

	-- 특정 출판사의 책 조회
-- SELECT * FROM books WHERE publisher = '웅진지식하우스';