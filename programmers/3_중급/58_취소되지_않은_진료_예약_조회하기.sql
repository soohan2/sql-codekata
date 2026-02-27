-- 취소되지 않은 진료 예약 조회하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/132204
-- 작성자: 우수한
-- 작성일: 2026. 02. 27. 22:59:04

select a.APNT_NO, p.pt_name, p.pt_no, d.MCDP_CD, d.dr_name, a.APNT_YMD
from doctor d
join
(SELECT *
from appointment 
where date_format(APNT_YMD, '%Y-%m-%d') = '2022-04-13' and APNT_CNCL_YN = 'N' and MCDP_CD = 'CS') a
on d.dr_id = a.MDDR_ID
join patient p
on a.PT_NO = p.PT_NO
order by 6 asc

# 진료예약번호, 환자이름, 환자번호, 진료과코드, 의사이름, 진료예약일시