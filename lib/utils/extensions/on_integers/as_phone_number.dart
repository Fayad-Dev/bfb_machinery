extension PhoneNumber on int {
  String get asPhoneNumber {
    List<String> phone = toString().split('');

    if (phone.length <= 3) {
      return toString();
    }

    String result = '${toString().substring(0, 2)} ';
    phone.removeAt(0);
    phone.removeAt(0);

    for (int i = 0; i < phone.length; i++) {
      result += phone[i];

      if ((i + 1) % 3 == 0 && (phone.length - (i + 1)) >= 2) {
        result += ' ';
      }
    }

    return result;
  }
}
