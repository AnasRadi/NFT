import 'package:flutter/material.dart';
class TextFieldWidget extends StatelessWidget {
  String name;

  TextFieldWidget({
    super.key,
    required this.name,
  }

);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
          label: SizedBox(
            width: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name),
                Text(
                  "*",
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              width: 2,
              color: Colors.black,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              width: 2,
              color: Colors.black,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              width: 2,
              color: Colors.black,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              width: 1,
              color: Colors.red,
            ),
          )
      ),
    );
  }
}