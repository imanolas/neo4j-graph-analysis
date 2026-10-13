MATCH (u:User)-[:IS_FRIEND_WITH]-(u2:User)-[:HAS_VOTE]->(:Story)
WITH u2, count(distinct u) as friendCount
ORDER BY friendCount ASC
LIMIT 1
MATCH (u2)-[c1:HAS_VOTE]->(s:Story)<-[c2:HAS_VOTE]-(f:User)
WHERE (u2)-[:IS_FRIEND_WITH]-(:User)-[:IS_FRIEND_WITH]-(f) 
AND NOT (f)-[:IS_FRIEND_WITH]-(u2) 
RETURN s,f,u2