-- 진료과별 총 예약 횟수 출력하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/132202
-- 작성자: 우수한
-- 작성일: 2026. 02. 20. 23:30:47

SELECT
 MCDP_CD AS '진료과코드',
 COUNT(DISTINCT PT_NO) AS '5월예약건수'
FROM APPOINTMENT
WHERE YEAR(APNT_YMD) = 2022
  AND MONTH(APNT_YMD) = 5
 GROUP BY MCDP_CD
 ORDER BY 2, 1