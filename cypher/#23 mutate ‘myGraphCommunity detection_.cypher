CALL gds.louvain.mutate('myGraphCommunity detection', { mutateProperty: 'communityId' })
YIELD communityCount, modularity, modularities