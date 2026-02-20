-- 경기도에 위치한 식품창고 목록 출력하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131114
-- 작성자: 우수한
-- 작성일: 2026. 02. 20. 15:53:38

-- 코드를 입력하세요
SELECT WAREHOUSE_ID, 
       WAREHOUSE_NAME, 
       ADDRESS,
       case
            when freezer_yn is null or freezer_yn = '' then 'N'
            else freezer_yn
       end as FREEZER_YN
from food_warehouse
where address LIKE '경기도%'
order by warehouse_id asc

