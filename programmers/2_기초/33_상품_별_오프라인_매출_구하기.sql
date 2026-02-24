-- 상품 별 오프라인 매출 구하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131533
-- 작성자: 우수한
-- 작성일: 2026. 02. 24. 19:29:54

SELECT p.product_code,
       SUM(p.price * s.sales_amount) AS sales
FROM product p
JOIN offline_sale s
ON p.product_id = s.product_id
GROUP BY p.product_code
ORDER BY sales DESC, p.product_code ASC;

