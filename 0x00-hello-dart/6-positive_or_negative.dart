void main(List<String> args) {
  int number = int.parse(args[0]);
  if (number > 0) print('is positive');
  if (number == 0) print('is zero');
  if (number < 0) print('is negative');
}