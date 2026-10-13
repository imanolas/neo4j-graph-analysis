CALL gds.louvain.write.estimate('myGraphCommunity detection', { writeProperty: 'community' })
YIELD nodeCount, relationshipCount, bytesMin, bytesMax, requiredMemory