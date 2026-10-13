CALL gds.triangleCount.write.estimate('myGraphCommunity detection', { writeProperty: 'triangleCount' })
YIELD nodeCount, relationshipCount, bytesMin, bytesMax, requiredMemory