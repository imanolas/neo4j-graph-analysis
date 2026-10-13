MATCH (p1:User {UserId: '138338'})
MATCH (p2:User {UserId: '133093'})
RETURN gds.alpha.linkprediction.totalNeighbors(p1, p2, {relationshipQuery: "IS_FRIEND_WITH"}) AS score