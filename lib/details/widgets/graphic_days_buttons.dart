import 'package:flutter/material.dart';

import 'day_button.dart';

class GraphicDaysButtons extends StatelessWidget {
  const GraphicDaysButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        DayButton(day: 5),
        DayButton(day: 15),
        DayButton(day: 30),
        DayButton(day: 45),
        DayButton(day: 90),
      ],
    );
  }
}
