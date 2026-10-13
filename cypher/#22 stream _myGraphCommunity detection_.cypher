CALL gds.louvain.stream('myGraphCommunity detection')
YIELD nodeId, communityId, intermediateCommunityIds
RETURN gds.util.asNode(nodeId).UserId AS UserId, communityId, intermediateCommunityIds
ORDER BY UserId ASC
