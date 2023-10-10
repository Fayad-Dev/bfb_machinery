extension Spread on Set<String> {
  String spreadAndSeperateWith(String seperator) {
    String result = '';
    forEach((element) {
      result += element;
      if (element != last) {
        result += ' $seperator ';
      }
    });

    return result;
  }
}
//
// '${S.of(context).cities(
// e.addZerosForL8n,
// )}${isLast ? '' : ' | '}',
// overflow: TextOverflow.ellipsis,
// style: TextStyle(
// color: kDarkGrey,
// fontSize: isCompact ? 13 : 16,
// ),
