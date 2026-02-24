-- 보호소에서 중성화한 동물
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59045
-- 작성자: 우수한
-- 작성일: 2026. 02. 24. 21:14:07

-- 코드를 입력하세요
SELECT i.animal_id, i.animal_type, i.name
from animal_ins i
join animal_outs o
on i.animal_id = o.animal_id
and i.SEX_UPON_INTAKE LIKE '%Intact%' and (o.SEX_UPON_OUTCOME LIKE '%Spayed%' or o.SEX_UPON_OUTCOME LIKE '%Neutered%')
order by i.animal_id