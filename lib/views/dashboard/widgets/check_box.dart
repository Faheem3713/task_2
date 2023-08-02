import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class CheckBoxWidget extends StatelessWidget {
  const CheckBoxWidget({
    super.key,
    required this.isCheck,
    required this.text,
  });
  final bool isCheck;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(unselectedWidgetColor: colorList[1]),
      child: CheckboxListTile(
        checkboxShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        activeColor: colorList[1],
        controlAffinity: ListTileControlAffinity.leading,
        title: Text(text),
        value: isCheck,
        onChanged: (value) {},
      ),
    );
  }
}
