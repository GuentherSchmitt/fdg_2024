void main(List<String> args) {
  for (var arg in args) {
    int? i = int.tryParse(arg);
    if (i == null) {
      print("the argument '$arg' is no integer");
    } else {
      var factorialAsString = getBigIntFactorial(i).toString();
      print("$arg! is $factorialAsString (this number has ${factorialAsString.length} digits)");
    }
    print ("");  // print an empty line after the output of each argument
  }
}

BigInt getBigIntFactorial(int n) {
  BigInt result = BigInt.from(1);
  for (var i = 2; i <= n; i++) {
    result *= BigInt.from(i);
  }
  result = result * BigInt.from(1);
  return result;
}

double getFactorialAsDouble(int n) {
  var result = 1.0;
  for (var i = 2; i <= n; i++) {
    result *= i;
    print ("$i: $result");
  }
  return result;
}
