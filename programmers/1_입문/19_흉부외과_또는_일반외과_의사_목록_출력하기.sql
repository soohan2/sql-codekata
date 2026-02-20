-- 흉부외과 또는 일반외과 의사 목록 출력하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/132203
-- 작성자: 우수한
-- 작성일: 2026. 02. 20. 16:37:14

-- 코드를 입력하세요
SELECT dr_name, dr_id, MCDP_CD, date_format(HIRE_YMD,'%Y-%m-%d') as HIRE_YMD
from doctor
where MCDP_CD = 'CS' or MCDP_CD = 'GS'
order by hire_ymd desc, dr_name asc