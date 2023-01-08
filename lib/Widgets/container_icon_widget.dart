import 'package:flutter/material.dart';

class ContainerIconWidget extends StatelessWidget {
  final IconData iconData;
  const ContainerIconWidget({
    Key? key,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Colors.grey.shade400)),
      child: Icon(iconData),
    );
  }
}
