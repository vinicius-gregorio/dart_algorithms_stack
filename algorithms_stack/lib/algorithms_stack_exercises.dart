// the porpose of this exercise is to show the use of the stack data structure
// this class is used to organize the exercises code

abstract class StackExercises {
  //Exercise 1:
  //Create a function that prints the contents of a list in reverse order.
  void printListInReverseOrder<T>(List<T> list);

// --------------------------------------------------------------------------------
  //Exercise 2:

  //Check for balanced parentheses. Given a string, check if there are ( and ) characters,
  // and return true if the parentheses in the string are balanced. For example:

  // 1
  // h((e))llo(world)() // balanced parentheses
  // 2
  // (hello world // unbalanced parentheses
  //

  void checkBalancedParentheses(String string);
}
