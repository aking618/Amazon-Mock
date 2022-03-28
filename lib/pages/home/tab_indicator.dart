import 'package:flutter/material.dart';

class TabIndicator extends StatelessWidget {
  final bool isActive;

  const TabIndicator({Key? key, required this.isActive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 6,
      decoration: BoxDecoration(
        color: isActive ? const Color.fromRGBO(0, 130, 149, 1) : Colors.white,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(5.0),
          bottomRight: Radius.circular(5.0),
        ),
        border: isActive
            ? Border.all(
                color: Colors.grey,
                width: 1.0,
              )
            : null,
      ),
    );
  }
}
