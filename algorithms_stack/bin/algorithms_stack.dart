import 'package:algorithms_stack/algorithms_stack.dart';

void main(List<String> arguments) {
  final stack = Stack<int>();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  const listSmoke = ['S', 'M', 'O', 'K', 'E'];
  final smokeStack = Stack.of(listSmoke);
  print(smokeStack);
  smokeStack.pop();

  // Exercise 1:
  List<String> list = ['d', 'r', 'a', 'w', 'e', 'r'];
  stack.printListInReverseOrder(list);

  // Exercise 2:
  stack.checkBalancedParentheses('((abc)def)'); // Balanced
  stack.checkBalancedParentheses('((abc)def'); // Unbalanced
}
