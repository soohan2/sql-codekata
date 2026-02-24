-- 있었는데요 없었습니다
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59043
-- 작성자: 우수한
-- 작성일: 2026. 02. 24. 19:50:22

-- 코드를 입력하세요
SELECT i.animal_id, i.name
from animal_ins i
join animal_outs o
on i.animal_id = o.animal_id
and o.datetime < i.datetime
order by i.datetime asc
