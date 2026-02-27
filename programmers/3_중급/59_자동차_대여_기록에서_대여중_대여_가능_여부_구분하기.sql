-- 자동차 대여 기록에서 대여중 / 대여 가능 여부 구분하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/157340
-- 작성자: 우수한
-- 작성일: 2026. 02. 27. 23:23:40

-- 코드를 입력하세요
select DISTINCT a.car_id, 
    case
        when b.car_id is not null then '대여중'
        else '대여 가능' 
    end as AVAILABILITY
from CAR_RENTAL_COMPANY_RENTAL_HISTORY a
left join
(SELECT *
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
where '2022-10-16' between start_date and end_date) b
on a.car_id = b.car_id
order by 1 desc