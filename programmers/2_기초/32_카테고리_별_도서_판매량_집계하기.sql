-- 카테고리 별 도서 판매량 집계하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/144855
-- 작성자: 우수한
-- 작성일: 2026. 02. 24. 19:25:08

-- 코드를 입력하세요
SELECT b.category, sum(s.sales) as total_sales
from book b
left join book_sales s
on b.book_id = s.book_id
where s.sales_date between '2022-01-01' and '2022-01-31'
group by b.category
order by b.category asc