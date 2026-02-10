-- 중성화 여부 파악하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59409
-- 작성자: 우수한
-- 작성일: 2026. 02. 10. 23:19:13

select animal_id,
       name,
  case
    when sex_upon_intake like '%Neutered%' or
         sex_upon_intake like '%Spayed%' then 'O'
    else 'X'
  end as '중성화'
from animal_ins
order by animal_id;