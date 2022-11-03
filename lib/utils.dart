void cliAssert(bool test, [String message = '']) {
  if (!test) {
    throw AssertionError(message);
  }
}
