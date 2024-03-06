import 'package:flutter/material.dart';
import 'package:todoapp/utils/button.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue[100],
      // ignore: sized_box_for_whitespace
      content: Container(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Type task name...'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Button(
                  text: 'Save',
                  onPressed: onSave,
                  buttonColor: Colors.green[800],
                ),
                Button(
                  text: 'Cancel',
                  onPressed: onCancel,
                  buttonColor: Colors.red[900],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
