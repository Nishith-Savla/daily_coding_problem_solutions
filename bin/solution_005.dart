// Problem:
//
// This problem was asked by Jane Street.
//
// cons(a, b) constructs a pair, and car(pair) and cdr(pair) returns the first
// and last element of that pair. For example, car(cons(3, 4)) returns 3, and
// cdr(cons(3, 4)) returns 4.
//
// ```python
// Given this implementation of cons:
//
// def cons(a, b):
//     def pair(f):
//         return f(a, b)
//     return pair
// ```
//
// Implement car and cdr.

typedef FunctionTaking2Nums = num Function(num a, num b);

num Function(FunctionTaking2Nums) cons(num a, num b) {
  num pair(FunctionTaking2Nums f) {
    return f(a, b);
  }

  return pair;
}

num car(num Function(FunctionTaking2Nums) pair) {
  num first(num a, num _) {
    return a;
  }

  return pair(first);
}

num cdr(num Function(FunctionTaking2Nums) pair) {
  num last(num _, num b) {
    return b;
  }

  return pair(last);
}

void main() {
  final pair = cons(3, 4);

  print(car(pair));
  print(cdr(pair));
}

/// Specs:
///
/// car:
/// Time Complexity: O(1)
/// Space Complexity: O(1)
///
/// cdr:
/// Time Complexity: O(1)
/// Space Complexity: O(1)
