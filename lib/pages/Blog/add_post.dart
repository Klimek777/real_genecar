import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:genecar/utils/utils.dart';
import 'package:genecar/widgets/text_field_input.dart';
import 'package:image_picker/image_picker.dart';

class BlogAddPost extends StatefulWidget {
  const BlogAddPost({Key? key}) : super(key: key);

  @override
  State<BlogAddPost> createState() => _BlogAddPostState();
}

class _BlogAddPostState extends State<BlogAddPost> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _contentController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _titleController.dispose();
    _contentController.dispose();
  }

  Uint8List? _file;

  _selectImage(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: const Text('Dodaj zdjęcie do artykułu'),
            children: [
              SimpleDialogOption(
                padding: const EdgeInsets.all(20),
                child: const Text('Zrób zdjęcie'),
                onPressed: () async {
                  Navigator.of(context).pop();
                  Uint8List file = await pickImage(
                    ImageSource.camera,
                  );
                  setState(() {
                    _file = file;
                  });
                },
              ),
              SimpleDialogOption(
                padding: const EdgeInsets.all(20),
                child: const Text('Wybierz z galerii'),
                onPressed: () async {
                  Navigator.of(context).pop();
                  Uint8List file = await pickImage(
                    ImageSource.gallery,
                  );
                  setState(() {
                    _file = file;
                  });
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.yellow[600]!, Colors.yellow[700]!]),
          ),
        ),
        title: const Text(
          'Dodaj wpis na bloga',
          style: TextStyle(letterSpacing: 2.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(children: [
            TextFieldInput(
              labelText: 'Tytuł',
              textEditingController: _titleController,
              hintText: 'Wprowadź tytuł posta',
              textInputType: TextInputType.text,
            ),
            _file == null
                ? Center(
                    child: SizedBox(
                      width: 200,
                      height: 150,
                      child: IconButton(
                        icon: const Icon(
                          Icons.upload,
                          size: 60,
                        ),
                        color: Colors.amberAccent,
                        onPressed: () => _selectImage(context),
                      ),
                    ),
                  )
                : SizedBox(
                    height: 150,
                  ),
            TextField(
              controller: _contentController,
              decoration: InputDecoration(
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
                labelText: 'Treść',
                hintText: 'Wprowadź treść artykułu',
              ),
              keyboardType: TextInputType.multiline,
              minLines: 8,
              maxLines: 15,
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dodaj artykuł',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23.0,
                      letterSpacing: 2.0,
                    ),
                  ),
                ],
              ),
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.yellow[600],
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.yellow[600]!, Colors.yellow[700]!]),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
