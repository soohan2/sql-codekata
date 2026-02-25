-- 즐겨찾기가 가장 많은 식당 정보 출력하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131123
-- 작성자: 우수한
-- 작성일: 2026. 02. 26. 03:13:36

select a.food_type, a.rest_id, a.rest_name, a.favorites
from rest_info a
join
(select food_type, max(favorites) as max_fav
from rest_info
group by food_type) b
on a.food_type = b.food_type
and a.favorites = b.max_fav
order by food_type desc



# -- 코드를 입력하세요
# SELECT food_type, rest_id, rest_name, max(favorites) as favorites
# from rest_info
# group by food_type 
# having max(favorites)
# order by food_type desc