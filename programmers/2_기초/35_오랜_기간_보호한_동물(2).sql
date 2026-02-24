-- 오랜 기간 보호한 동물(2)
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59411
-- 작성자: 우수한
-- 작성일: 2026. 02. 24. 19:50:32

select i.animal_id,
       i.name
from animal_ins i
join animal_outs o
  on i.animal_id = o.animal_id
ORDER BY TIMESTAMPDIFF(SECOND, I.DATETIME, O.DATETIME) DESC
LIMIT 2;