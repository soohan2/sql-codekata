-- 최댓값 구하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59415
-- 작성자: 우수한
-- 작성일: 2026. 02. 26. 22:10:52

select datetime
from animal_ins
order by datetime desc
limit 1