-- 조건에 맞는 도서 리스트 출력하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/144853
-- 작성자: 우수한
-- 작성일: 2026. 02. 25. 21:44:00

-- 코드를 입력하세요
SELECT book_id, date_format(PUBLISHED_DATE, '%Y-%m-%d') as PUBLISHED_DATE
from book
where year(PUBLISHED_DATE) = '2021' and category = '인문'
order by PUBLISHED_DATE asc