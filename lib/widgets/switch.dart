import 'package:custom_switch/custom_switch.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SwitchWidgets extends StatefulWidget {
  const SwitchWidgets({Key key}) : super(key: key);

  @override
  State<SwitchWidgets> createState() => _SwitchWidgetsState();
}

class _SwitchWidgetsState extends State<SwitchWidgets> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        status == true
            ? CustomSwitch(
                activeColor: Colors.pinkAccent,
                value: status,
                onChanged: (value) async {
                  print("English: $value");

                  setState(() {
                    status = value;
                    context.locale = Locale('en', 'US');
                  });
                },
              )
            : CustomSwitch(
                activeColor: Colors.pinkAccent,
                value: status,
                onChanged: (value) {
                  print("Nepali: $value");
                  setState(() {
                    status = value;
                    context.locale = Locale('en', 'NP');
                  });
                },
              )
      ],
    );
  }
}
