-- 식품분류별 가장 비싼 식품의 정보 조회하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131116
-- 작성자: 우수한
-- 작성일: 2026. 02. 26. 03:25:30

-- 코드를 입력하세요
select a.category, a.price, a.product_name
from food_product a
join 
(SELECT category, max(price) as max_p
from food_product
where category IN ('과자', '국', '김치', '식용유')
group by category) b
on a.category = b.category
and a.price = b.max_p
order by a.price desc