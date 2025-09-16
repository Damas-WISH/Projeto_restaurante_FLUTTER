import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
final String label;
final VoidCallback onPressed;


const CustomButton({super.key, required this.label, required this.onPressed});


@override
Widget build(BuildContext context) {
return SizedBox(
width: double.infinity,
child: ElevatedButton(onPressed: onPressed, child: Padding(padding: const EdgeInsets.symmetric(vertical: 14), child: Text(label)) ),
);
}
}