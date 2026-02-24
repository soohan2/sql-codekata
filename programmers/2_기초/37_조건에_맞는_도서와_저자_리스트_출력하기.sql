-- 조건에 맞는 도서와 저자 리스트 출력하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/144854
-- 작성자: 우수한
-- 작성일: 2026. 02. 24. 22:51:17

-- 코드를 입력하세요
SELECT b.book_id, a.author_name, date_format(b.published_date, '%Y-%m-%d') as published_date
from book b
left join author a
on b.author_id = a.author_id
where b.category LIKE '%경제%' 
order by b.published_date asc