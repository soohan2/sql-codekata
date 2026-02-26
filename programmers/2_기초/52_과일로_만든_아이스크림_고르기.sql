-- 과일로 만든 아이스크림 고르기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/133025
-- 작성자: 우수한
-- 작성일: 2026. 02. 26. 21:39:39

-- 코드를 입력하세요
select i.flavor
from icecream_info i
join
(SELECT *
from first_half
where total_order > 3000) h
on i.flavor = h.flavor
where i.ingredient_type = 'fruit_based'
order by h.total_order desc