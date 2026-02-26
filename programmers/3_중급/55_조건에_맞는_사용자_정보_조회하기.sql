-- 조건에 맞는 사용자 정보 조회하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/164670
-- 작성자: 우수한
-- 작성일: 2026. 02. 26. 22:42:01

-- 코드를 입력하세요
select u.user_id, u.nickname, concat(CITY,' ', STREET_ADDRESS1,' ', STREET_ADDRESS2) as '전체주소', concat(substr(u.TLNO, 1,3 ), '-', substr(u.TLNO, 4,4), '-', substr(u.TLNO, 8,4)) as '전화번호'
from used_goods_user u
join 
(SELECT writer_id, count(board_id) as cnt_b
from used_goods_board
group by writer_id
having count(board_id) >= 3) b
on u.user_id = b.writer_id
order by u.user_id desc
