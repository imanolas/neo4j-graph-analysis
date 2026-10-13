CALL gds.alpha.allShortestPaths.stream({
  nodeProjection: 'User',
  relationshipProjection: {
    IS_FRIEND_WITH: {
      type: 'IS_FRIEND_WITH',
      properties: 'cost'
    }
  },
  relationshipWeightProperty: 'cost'
})
YIELD sourceNodeId, targetNodeId, distance
WITH sourceNodeId, targetNodeId, distance
WHERE gds.util.isFinite(distance) = true
 
MATCH (source:User) WHERE id(source) = sourceNodeId
MATCH (target:User) WHERE id(target) = targetNodeId
WITH source, target, distance WHERE source <> target
 
RETURN source.UserId AS source, target.UserId AS target, distance
ORDER BY distance DESC, source ASC, target ASC
LIMIT 5
