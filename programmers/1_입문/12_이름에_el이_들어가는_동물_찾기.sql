-- 이름에 el이 들어가는 동물 찾기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59047
-- 작성자: 우수한
-- 작성일: 2026. 02. 09. 23:01:06

select animal_id, name
from animal_ins
where animal_type = 'Dog'
  AND lower(name) like '%el%'
order by name;


SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE ANIMAL_TYPE = 'Dog'
  AND LOWER(NAME) LIKE '%el%'
ORDER BY NAME;