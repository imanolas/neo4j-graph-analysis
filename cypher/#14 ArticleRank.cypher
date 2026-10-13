CALL gds.alpha.articleRank.stream({
  nodeProjection: 'User',
  relationshipProjection: 'IS_FRIEND_WITH',
  maxIterations: 20,
  dampingFactor: 0.85
})
YIELD nodeId, score
RETURN gds.util.asNode(nodeId).UserId AS UserId, score as ArticleRank
ORDER BY score DESC
