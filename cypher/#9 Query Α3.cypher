MATCH (u:User)-[r:IS_FRIEND_WITH]->(u2:User)
WHERE NOT (u)<-[:IS_FRIEND_WITH]-(u2)
WITH u2, count(u) as Followers
ORDER BY Followers DESC
RETURN u2,Followers LIMIT 5