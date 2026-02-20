-- 가격이 제일 비싼 식품의 정보 출력하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131115
-- 작성자: 우수한
-- 작성일: 2026. 02. 20. 17:13:23

select product_id, product_name, product_cd, category, price
from food_product
group by product_id
having max(price)
order by price desc
limit 1