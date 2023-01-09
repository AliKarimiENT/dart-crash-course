void main(List<String> args) {
  try {
    final String? firstname = null;
    print(
        firstname!); // very dangrous action is to use '!' after a null value becuase its risky
  } catch (e) {
    print('error');
  }
}
