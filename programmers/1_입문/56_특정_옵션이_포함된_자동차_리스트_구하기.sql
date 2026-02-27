-- 특정 옵션이 포함된 자동차 리스트 구하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/157343
-- 작성자: 우수한
-- 작성일: 2026. 02. 27. 21:39:56

-- 코드를 입력하세요
SELECT *
from CAR_RENTAL_COMPANY_CAR
where options like '%네비게이션%'
order by car_id desc