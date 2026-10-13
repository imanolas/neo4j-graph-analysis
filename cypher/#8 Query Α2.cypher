MATCH (u:User)-[r:HAS_VOTE]->(s:Story)
WITH s as Story, count (u) as Votes
ORDER BY Votes DESC
RETURN Story, Votes