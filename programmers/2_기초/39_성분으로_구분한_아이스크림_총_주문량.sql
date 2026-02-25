-- 성분으로 구분한 아이스크림 총 주문량
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/133026
-- 작성자: 우수한
-- 작성일: 2026. 02. 25. 21:28:50

-- 코드를 입력하세요
SELECT i.ingredient_type, sum(f.total_order) as total_order
from first_half f
join icecream_info i
on f.flavor = i.flavor
group by i.ingredient_type
order by 2 asc