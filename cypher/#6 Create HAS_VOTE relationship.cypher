LOAD CSV FROM 'file:///digg_votesΚΑ.csv' AS line
MATCH (u:User),(s:Story)
WHERE u.UserId = line[1] AND s.StoryId = line[2]
CREATE (u)-[r:HAS_VOTE {VoteDate: line[0]}]->(s)
