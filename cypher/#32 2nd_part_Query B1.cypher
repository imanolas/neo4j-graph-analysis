MATCH (u:User)-[:IS_FRIEND_WITH]->(u2:User)-[:PLAYS]->(g:Game),(u)-[:PLAYS]->(g2:Game)
WHERE u.UserId = "121"
AND g.Genre=g2.Genre 
AND NOT (u)-[:PLAYS]->(g) 
RETURN g