-- 없어진 기록 찾기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59042
-- 작성자: 우수한
-- 작성일: 2026. 02. 26. 21:27:18

-- 코드를 입력하세요
SELECT o.animal_id, o.name
from animal_ins i
right join animal_outs o
on i.animal_id = o.animal_id
where i.animal_id IS NULL