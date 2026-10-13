LOAD CSV FROM 'file:///friends_games.csv' AS line
MATCH (u:User),(g:Game)
WHERE u.UserId = line[0] AND g.Name = line[4]
CREATE (u)-[:PLAYS{genre:line[5]}]->(g)