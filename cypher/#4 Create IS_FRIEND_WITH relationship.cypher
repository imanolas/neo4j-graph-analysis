LOAD CSV FROM 'file:///digg_friendsΚΑ.csv' AS line
MATCH (u:User),(u2:User)
WHERE u.UserId = line[2] AND u2.UserId = line[3] AND (line[0]='1')
MERGE (u)-[:IS_FRIEND_WITH {cost: 1}]->(u2)
MERGE (u2)-[:IS_FRIEND_WITH{cost: 1}]->(u)