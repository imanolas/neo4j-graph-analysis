LOAD CSV FROM 'file:///friends_games.csv' AS line
MERGE(g:Game { Name:line[4], Genre:line[5] })