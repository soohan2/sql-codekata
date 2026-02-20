-- DATETIME에서 DATE로 형 변환
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59414
-- 작성자: 우수한
-- 작성일: 2026. 02. 20. 16:27:58

-- 코드를 입력하세요
SELECT animal_id, name, date_format(datetime, '%Y-%m-%d') as '날짜'
from animal_ins
order by animal_id