MATCH (u:User)-[:IS_FRIEND_WITH]->(u2:User)
WHERE (u2)-[:IS_FRIEND_WITH]->(u)
WITH u2 as User, count(u) as Friends
ORDER BY Friends DESC
RETURN User, Friends
LIMIT 5