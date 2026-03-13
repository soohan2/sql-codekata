-- 12세 이하인 여자 환자 목록 출력하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/132201
-- 작성자: 우수한
-- 작성일: 2026. 03. 13. 09:56:36

-- 코드를 입력하세요
SELECT pt_name, pt_no, gend_cd, age,
    case 
        when tlno is null or tlno = '' then 'NONE'
        else tlno
    end as tlno
from patient
where age <= 12
  and gend_cd LIKE 'W'
order by age desc, pt_name asc