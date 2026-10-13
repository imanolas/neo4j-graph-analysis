LOAD CSV FROM 'file:///friends_games.csv' AS line
CREATE(u:User { UserId:line[0], Name:line[1], Age:line[2], Sex:line[3]})