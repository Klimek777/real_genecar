import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class EditContactInfo extends StatefulWidget {
  const EditContactInfo({Key? key}) : super(key: key);

  @override
  State<EditContactInfo> createState() => _EditContactInfoState();
}

class _EditContactInfoState extends State<EditContactInfo> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showCustomDialog(context),
      child: Icon(
        Icons.edit,
        color: Colors.yellow[600],
      ),
    );
  }

  void showCustomDialog(BuildContext context) => showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Column(children: []),
        );
      });
}
