-- 대여 기록이 존재하는 자동차 리스트 구하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/157341
-- 작성자: 우수한
-- 작성일: 2026. 02. 26. 02:22:27

-- 코드를 입력하세요
SELECT DISTINCT c.car_id
from car_rental_company_car c
join car_rental_company_rental_history h
on c.car_id = h.car_id
where c.car_type = '세단' and month(h.start_date) = '10'
order by c.car_id desc