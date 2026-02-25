-- 조건에 맞는 사용자와 총 거래금액 조회하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/164668
-- 작성자: 우수한
-- 작성일: 2026. 02. 25. 22:29:36

-- 코드를 입력하세요
select u.user_id, u.nickname, sum(b.price) as '총거래금액'
from used_goods_user u
join 
(SELECT *
from used_goods_board
where status = 'DONE') b
on b.writer_id = u.user_id
group by u.user_id
having sum(b.price) >= 700000
order by 3

# 없는컬럼 만드는거 대충
# 서브쿼리
# 집계함수 조건 = having
# 아니면 = where
