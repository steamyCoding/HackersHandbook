import 'package:flutter/material.dart';

class CommandBox extends StatelessWidget {
  final String command;
  const CommandBox({super.key, required this.command});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SelectableText(command, style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white),),
      ),
    );
  }
}
