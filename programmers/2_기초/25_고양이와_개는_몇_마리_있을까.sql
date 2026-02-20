-- 고양이와 개는 몇 마리 있을까
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59040
-- 작성자: 우수한
-- 작성일: 2026. 02. 20. 23:09:48

-- 코드를 입력하세요
SELECT animal_type, count(animal_id) as count
from animal_ins
where animal_type = 'Cat'
   or animal_type = 'Dog'
group by animal_type
order by animal_type