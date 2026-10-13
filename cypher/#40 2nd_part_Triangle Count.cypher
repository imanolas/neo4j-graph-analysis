CALL gds.triangleCount.stream('myGraphCommunity detection')
YIELD nodeId, triangleCount
RETURN gds.util.asNode(nodeId).UserId AS UserId, triangleCount
ORDER BY triangleCount DESC
LIMIT 5