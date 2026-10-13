LOAD CSV FROM 'file:///friendship.csv' AS line
MATCH (u:User),(u2:User)
WHERE u.UserId = line[0] AND u2.UserId = line[1]
MERGE (u)-[:IS_FRIEND_WITH{cost: 1}]->(u2)
MERGE (u2)-[:IS_FRIEND_WITH{cost: 1}]->(u)