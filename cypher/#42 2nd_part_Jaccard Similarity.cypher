MATCH (p1:User)-[:PLAYS]->(Game1)
WITH p1, collect(id(Game1)) AS p1Game
MATCH (p2:User)-[:PLAYS]->(Game2) WHERE p1 <> p2
WITH p1, p1Game, p2, collect(id(Game2)) AS p2Game
RETURN p1.UserId AS from,
       p2.UserId AS to,
       gds.alpha.similarity.jaccard(p1Game, p2Game) AS similarity
ORDER BY similarity DESC
LIMIT 5