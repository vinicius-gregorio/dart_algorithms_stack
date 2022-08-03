import 'package:algorithms_stack/algorithms_stack_exercises.dart';

int calculate() {
  return 6 * 7;
}

class Stack<T> implements StackExercises {
  Stack() : _storage = <T>[];
  final List<T> _storage;

// You might want to take an existing iterable collection and convert it to a stack so
// that the access order is guaranteed. Of course it would be possible to loop through
// the elements and push each one. However, you can add a named constructor that just
// sets the underlying private storage.
  Stack.of(Iterable<T> elements) : _storage = List<T>.of(elements);

//This will list all of the elements in _storage with the last one at the top
  @override
  String toString() {
    return '--- Top ---\n'
        '${_storage.reversed.join('\n')}'
        '\n-----------';
  }

// Calling push will add an element to the end of the list while pop will remove the last
// element of the list and return it.
  void push(T element) => _storage.add(element);
  T pop() => _storage.removeLast();

// peek is an operation that is often attributed to the stack interface. The idea of peek
// is to look at the top element of the stack without mutating its contents.
  T get peek => _storage.last;
  bool get isEmpty => _storage.isEmpty;
  bool get isNotEmpty => !isEmpty;

// Exercise 1:
  @override
  void printListInReverseOrder<T>(List<T> list) {
    var stack = Stack<T>();
    for (T item in list) {
      stack.push(item);
    }
    while (stack.isNotEmpty) {
      print(stack.pop());
    }
  }

// Exercise 2:
  @override
  void checkBalancedParentheses(String string) {
    var stack = Stack<String>();
    for (int i = 0; i < string.length; i++) {
      String item = string[i];
      if (item == '(') {
        stack.push(item);
      }
      if (item == ')') {
        stack.pop();
      }
    }
    if (stack.isEmpty) {
      print('Balanced');
    } else {
      print('Unbalanced');
    }
  }
}
