MATCH (u:User)-[:IS_FRIEND_WITH]-(u1:User)
WITH u1, count(distinct u) as Friend_Counter 
ORDER BY Friend_Counter ASC LIMIT 5
RETURN u1,Friend_Counter