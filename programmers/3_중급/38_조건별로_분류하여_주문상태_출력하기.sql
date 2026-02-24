-- 조건별로 분류하여 주문상태 출력하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131113
-- 작성자: 우수한
-- 작성일: 2026. 02. 24. 23:25:10

SELECT order_id,
       product_id,
       DATE_FORMAT(out_date, '%Y-%m-%d') AS out_date,
       CASE
           WHEN out_date IS NULL THEN '출고미정'
           WHEN out_date <= '2022-05-01' THEN '출고완료'
           WHEN out_date > '2022-05-01' THEN '출고대기'
       END AS 출고여부
FROM food_order
ORDER BY order_id ASC;