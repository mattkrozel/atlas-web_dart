int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int teamAScore = (teamA['Free throws'] ?? 0) + 2 * (teamA['2 pointers'] ?? 0) + 3 * (teamA['3 pointers'] ?? 0);
  int teamBScore = (teamB['Free throws'] ?? 0) + 2 * (teamB['2 pointers'] ?? 0) + 3 * (teamB['3 pointers'] ?? 0);

  if (teamAScore > teamBScore) {
    return(1);
  } else if (teamAScore < teamBScore) {
    return(2);
  }
  return(0);
}