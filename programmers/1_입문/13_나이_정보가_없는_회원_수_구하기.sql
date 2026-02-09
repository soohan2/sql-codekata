-- 나이 정보가 없는 회원 수 구하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131528
-- 작성자: 우수한
-- 작성일: 2026. 02. 10. 02:03:10

SELECT count(*) as USERS
from user_info
where age is null