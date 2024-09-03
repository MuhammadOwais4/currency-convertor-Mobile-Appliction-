import 'package:flutter/material.dart';

class InpDecoration extends StatelessWidget {
  const InpDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    var myBorderStyles = OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(
        color: Colors.green,
        width: 4,
      ),
    );
    return TextField(
      keyboardType: TextInputType.number,
      // autofocus: true,
      decoration: InputDecoration(
        // label: Text("Enter Your Amount ")
        // label: Icon(Icons.add_a_photo_rounded)
        labelText: "Enter Your Amount",
        labelStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        hintText: "I am Hint text",
        hintStyle: const TextStyle(),

        // helper: Text("I am helper")
        helperText: "I am helper text",
        helperStyle: const TextStyle(),

        // prefix: Text("H"),
        prefixIcon: const Icon(
          Icons.abc_rounded,
        ),
        prefixText: "Helooo",
        prefixStyle: const TextStyle(),
        prefixIconColor: Colors.amber,

        // suffix: Text("H"),
        suffixIcon: const Icon(
          Icons.abc_rounded,
        ),
        suffixText: "Helooo",
        suffixStyle: const TextStyle(),
        suffixIconColor: Colors.amber,
        enabledBorder: myBorderStyles,
        focusedBorder: myBorderStyles,
      ),
    );
  }
}
