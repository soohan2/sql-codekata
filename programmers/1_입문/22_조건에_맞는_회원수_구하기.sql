-- 조건에 맞는 회원수 구하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131535
-- 작성자: 우수한
-- 작성일: 2026. 02. 20. 17:28:46

-- 코드를 입력하세요
SELECT count(joined) as user
from user_info
where joined Like '2021%'
  and age >= 20
  and age <= 29