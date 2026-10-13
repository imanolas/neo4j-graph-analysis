LOAD CSV FROM 'file:///digg_votesΚΑ.csv' AS line
MERGE(u:User {UserId: line[1]})