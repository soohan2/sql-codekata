-- 자동차 종류 별 특정 옵션이 포함된 자동차 수 구하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/151137
-- 작성자: 우수한
-- 작성일: 2026. 02. 21. 00:43:30

-- 코드를 입력하세요
SELECT car_type, count(options) as count
from car_rental_company_car
where options LIKE '%통풍시트%' or options LIKE '%열선시트%' or options LIKE '%가죽시트%'
group by car_type
order by car_type asc