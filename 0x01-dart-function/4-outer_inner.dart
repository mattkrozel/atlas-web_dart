void outer(String name, String id) {
  String inner() {
    int initialPosition = name.indexOf(' ');
    String firstInitial = name[initialPosition + 1];
    String lastName = name.substring(0, initialPosition);
    return ('Hello Agent $firstInitial.$lastName your id is $id');
  }

print(inner());

}