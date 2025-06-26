class MathFunctions {
  /// Factorial (n!)
  static int factorial(int n) {
    if (n < 0) throw ArgumentError('n must be non-negative');
    return n <= 1 ? 1 : n * factorial(n - 1);
  }

  /// Fibonacci sequence (0-indexed)
  static int fibonacci(int n) {
    if (n < 0) throw ArgumentError('n must be non-negative');
    if (n == 0) return 0;
    int a = 0, b = 1;
    for (int i = 2; i <= n; i++) {
      int c = a + b;
      a = b;
      b = c;
    }
    return b;
  }

  /// Prime check
  static bool isPrime(int n) {
    if (n <= 1) return false;
    if (n == 2) return true;
    if (n % 2 == 0) return false;
    for (int i = 3; i * i <= n; i += 2) {
      if (n % i == 0) return false;
    }
    return true;
  }

  /// Greatest Common Divisor (Euclidean algorithm)
  static int gcd(int a, int b) {
    while (b != 0) {
      final int temp = b;
      b = a % b;
      a = temp;
    }
    return a.abs();
  }

  /// Least Common Multiple
  static int lcm(int a, int b) {
    if (a == 0 || b == 0) return 0;
    return (a * b).abs() ~/ gcd(a, b);
  }

  /// Factors of a number
  static List<int> factors(int n) {
    if (n <= 0) throw ArgumentError('n must be positive');
    final factors = <int>[];
    for (int i = 1; i * i <= n; i++) {
      if (n % i == 0) {
        factors.add(i);
        if (i != n ~/ i) factors.add(n ~/ i);
      }
    }
    factors.sort();
    return factors;
  }

  /// Prime factors (with multiplicity)
  static Map<int, int> primeFactors(int n) {
    if (n <= 1) throw ArgumentError('n must be > 1');
    final factors = <int, int>{};
    int divisor = 2;
    while (n > 1) {
      while (n % divisor == 0) {
        factors[divisor] = (factors[divisor] ?? 0) + 1;
        n ~/= divisor;
      }
      divisor++;
    }
    return factors;
  }
}