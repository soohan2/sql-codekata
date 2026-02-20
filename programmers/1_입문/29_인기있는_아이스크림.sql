-- 인기있는 아이스크림
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/133024
-- 작성자: 우수한
-- 작성일: 2026. 02. 21. 00:26:28

-- 코드를 입력하세요
SELECT flavor 
from first_half
order by total_order desc, shipment_id asc
