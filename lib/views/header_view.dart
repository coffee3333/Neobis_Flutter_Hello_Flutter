import 'package:flutter/material.dart';

class HeaderInfo extends StatelessWidget {
  const HeaderInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: const BorderRadius.all(Radius.circular(30))),
      alignment: Alignment.centerLeft,
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 15),
      child: Text("To do list".toUpperCase(),
          style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal)),
    );
  }
}
