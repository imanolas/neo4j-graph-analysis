CALL gds.louvain.stream({
     nodeProjection: 'User',
    relationshipProjection: {
        IS_FRIEND_WITH: {
            type: 'IS_FRIEND_WITH'
        }
    },
    includeIntermediateCommunities: true
}) YIELD nodeId, communityId, intermediateCommunityIds
RETURN gds.util.asNode(nodeId).UserId AS UserId, communityId, intermediateCommunityIds
ORDER BY UserId ASC
LIMIT 5

#Path Finding. 
#18 All_shortestPaths.