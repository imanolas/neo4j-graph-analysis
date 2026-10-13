CALL gds.pageRank.stream('myGraphCentrality')
YIELD nodeId, score
RETURN gds.util.asNode(nodeId).UserId AS UserId, score
ORDER BY score DESC, UserId ASC
LIMIT 5
