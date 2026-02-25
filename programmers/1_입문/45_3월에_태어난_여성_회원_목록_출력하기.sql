-- 3월에 태어난 여성 회원 목록 출력하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131120
-- 작성자: 우수한
-- 작성일: 2026. 02. 26. 02:07:26

-- 코드를 입력하세요
SELECT member_id, member_name, gender, date_format(date_of_birth, '%Y-%m-%d') as date_of_birth
from member_profile
where month(date_of_birth) = '3' and gender = 'W' and TLNO IS NOT NULL