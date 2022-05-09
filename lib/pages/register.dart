// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:genecar/pages/login_page.dart';
import 'package:genecar/resources/auth_methods.dart';
import 'package:genecar/utils/utils.dart';
import 'package:genecar/widgets/text_field_input.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _repeatPasswordController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneNumController = TextEditingController();

  bool checkedValue = false;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _repeatPasswordController.dispose();
    _nameController.dispose();
    _phoneNumController.dispose();
  }

  bool _isLoading = false;

  void registerUser() async {
    setState(() {
      _isLoading = true;
    });
    String res = await AuthMethods().signUpUser(
      email: _emailController.text,
      password: _passwordController.text,
      repeatPassword: _repeatPasswordController.text,
      name: _nameController.text,
      phoneNum: _phoneNumController.text,
      rulesAccepted: checkedValue ? true : false,
    );
    if (res == 'Success!') {
    } else {
      showSnackBar(res, context);
    }
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text(
            'Rejestracja',
            style: TextStyle(letterSpacing: 2.0, fontWeight: FontWeight.bold),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.yellow[600]!, Colors.yellow[700]!]),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFieldInput(
                labelText: 'E-mail',
                textEditingController: _emailController,
                hintText: 'Wprowadź e-mail',
                textInputType: TextInputType.emailAddress,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0, 20, 0),
              child: TextFieldInput(
                labelText: 'Hasło',
                textEditingController: _passwordController,
                hintText: 'Wprowadź hasło',
                textInputType: TextInputType.text,
                isPass: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFieldInput(
                labelText: 'Powtórz hasło',
                textEditingController: _repeatPasswordController,
                hintText: 'Wprowadź hasło ponownie',
                textInputType: TextInputType.text,
                isPass: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0, 20, 0),
              child: TextFieldInput(
                labelText: 'Imię i nazwisko (nazwa)',
                textEditingController: _nameController,
                hintText: 'Wprowadź nazwę dla profilu',
                textInputType: TextInputType.text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFieldInput(
                labelText: 'Numer telefonu',
                textEditingController: _phoneNumController,
                hintText: 'Wprowadź numer telefonu',
                textInputType: TextInputType.text,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40.0, 0, 40, 0),
              child: Center(
                child: CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  value: checkedValue,
                  onChanged: (newValue) {
                    setState(() {
                      checkedValue = newValue!;
                    });
                  },
                  title: Text(
                    'Akceptuję regulamin',
                    textAlign: TextAlign.center,
                  ),
                  activeColor: Colors.yellow[600],
                ),
              ),
            ),
            TextButton(
              onPressed: registerUser,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _isLoading
                      ? [
                          Center(
                            child: CircularProgressIndicator(),
                          )
                        ]
                      : [
                          Text(
                            'Zarejestruj',
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
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Masz juz konto?',
                style: TextStyle(fontSize: 16.5, fontWeight: FontWeight.w400),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => login_page()));
                  },
                  child: Text(
                    'Zaloguj się!',
                    style: TextStyle(
                        fontSize: 16.5,
                        color: Colors.yellow[600],
                        fontWeight: FontWeight.bold),
                  ))
            ])
          ],
        ));
  }
}
