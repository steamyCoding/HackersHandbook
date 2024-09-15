import 'package:flutter/material.dart';

class Payloadsgenbutton extends StatefulWidget {
  final String payloadName;
  const Payloadsgenbutton(
      {super.key, required this.payloadName});

  @override
  State<Payloadsgenbutton> createState() => _PayloadsgenbuttonState();
}

class _PayloadsgenbuttonState extends State<Payloadsgenbutton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
      onPressed: () {},
      child: Text(widget.payloadName),
      style: ButtonStyle(),
    );
  }
}
