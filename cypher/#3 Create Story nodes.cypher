LOAD CSV FROM 'file:///digg_votesΚΑ.csv' AS line
MERGE (:Story {StoryId: line[2]})