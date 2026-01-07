void setup() {
  System.out.println( fib(20) ); // fib(50) won't work
}

public int fib(int n) {
  // base case
  if( n == 1 || n == 2 ) {
    return 1;
  }
  return fib(n-1) + fib(n-2);
}
