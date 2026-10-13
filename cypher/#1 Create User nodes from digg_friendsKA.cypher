LOAD CSV FROM 'file:///digg_friendsΚΑ.csv' AS line
MERGE(:User {UserId: line[2]})
MERGE(:User {UserId: line[3]})