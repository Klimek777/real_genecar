import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  final String labelText;
  final String hintText;
  final TextInputType textInputType;

  const TextFieldInput(
      {Key? key,
      required this.labelText,
      required this.textEditingController,
      this.isPass = false,
      required this.hintText,
      required this.textInputType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        isDense: true,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.amberAccent, width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.amberAccent, width: 2.0),
        ),
        border: OutlineInputBorder(),
        labelStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            letterSpacing: 2.0),
        labelText: labelText,
        hintText: hintText,
      ),
      keyboardType: textInputType,
      obscureText: isPass,
    );
  }
}

/*
 Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Expanded(
                  child: Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        // width: 0.0 produces a thin "hairline" border
                        borderSide:
                            BorderSide(color: Colors.amberAccent, width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        // width: 0.0 produces a thin "hairline" border
                        borderSide:
                            BorderSide(color: Colors.amberAccent, width: 2.0),
                      ),
                      border: OutlineInputBorder(),
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 2.0),
                      labelText: 'Login',
                      hintText: 'Wprowadź swój login lub e-mail'),
                ),
              )),
            ],
          ),
          */