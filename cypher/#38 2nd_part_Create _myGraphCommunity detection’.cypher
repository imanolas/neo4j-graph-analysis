CALL gds.graph.create(
  'myGraphCommunity detection' ,
  'User',
  {
    IS_FRIEND_WITH: {
      orientation: 'UNDIRECTED'
    }
  }
)
