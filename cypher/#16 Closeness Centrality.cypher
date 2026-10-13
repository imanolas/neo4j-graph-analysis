CALL gds.alpha.closeness.stream({
  nodeProjection: 'User',
  relationshipProjection: 'IS_FRIEND_WITH'})
YIELD nodeId, centrality
RETURN gds.util.asNode(nodeId).UserId AS UserId, centrality
ORDER BY centrality DESC
LIMIT 5
