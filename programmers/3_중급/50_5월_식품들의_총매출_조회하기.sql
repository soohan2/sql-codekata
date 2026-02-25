-- 5월 식품들의 총매출 조회하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131117
-- 작성자: 우수한
-- 작성일: 2026. 02. 26. 03:44:26

-- 코드를 입력하세요
select p.product_id, p.product_name, sum(p.price*o.amount) as total_sales
from food_product p
join
(SELECT *
from food_order
where year(produce_date) = '2022' and month(produce_date) = '5') o
on p.product_id = o.product_id
group by p.product_name
order by 3 desc, 1 asc