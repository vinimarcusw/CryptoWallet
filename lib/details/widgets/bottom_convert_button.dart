import 'package:flutter/material.dart';

class BottomConvertButton extends StatelessWidget {
  const BottomConvertButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromRGBO(224, 43, 87, 1),
        fixedSize: Size(MediaQuery.of(context).size.width * 0.9, 55),
      ),
      child: const Text(
        'Converter moeda',
        style: TextStyle(fontSize: 17),
      ),
    );
  }
}
