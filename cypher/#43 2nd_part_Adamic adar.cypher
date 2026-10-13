MATCH (p1:User {UserId: '121'})
MATCH (p2:User {UserId: '107'})
RETURN gds.alpha.linkprediction.adamicAdar(p1, p2, {relationshipQuery: 'IS_FRIEND_WITH'}) AS score