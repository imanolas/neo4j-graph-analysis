CALL gds.betweenness.stream('myGraphCentrality')
YIELD nodeId, score
RETURN gds.util.asNode(nodeId).UserId AS UserId, score 
ORDER BY score DESC LIMIT 5