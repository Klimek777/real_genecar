import 'package:flutter/material.dart';
import 'package:genecar/widgets/chatlist_widget.dart';

class ListaWiadomosci {
  final String uzytkownik;
  final NetworkImage zdjecie;
  final String lastmess;
  final String godzina;
  ListaWiadomosci(this.zdjecie, this.uzytkownik, this.lastmess, this.godzina);
}

final Chaty = [
  ListaWiadomosci(
      NetworkImage(
          'https://play-lh.googleusercontent.com/I-Yd5tJnxw7Ks8FUhUiFr8I4kohd9phv5sRFHG_-nSX9AAD6Rcy570NBZVFJBKpepmc'),
      'Mariola',
      "Witam akutlane?",
      '17:30'),
  ListaWiadomosci(
      NetworkImage(
          'https://st.depositphotos.com/1269204/1219/i/600/depositphotos_12196477-stock-photo-smiling-men-isolated-on-the.jpg'),
      'Dawid',
      "Jasne, mozemy sie tak umówic.",
      '18:23'),
  ListaWiadomosci(
      NetworkImage(
          'https://www.diethelmtravel.com/wp-content/uploads/2016/04/bill-gates-wealthiest-person.jpg'),
      'Michał',
      "Czy mozna ogladac jutro po 17?",
      '14:32'),
];

class ChatPage extends StatefulWidget {
  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.yellow[600]!, Colors.yellow[700]!]),
          ),
        ),
        backgroundColor: Colors.yellow[600],
        title: RichText(
            text: TextSpan(
          text: 'Wiadomosci',
          style: TextStyle(
            letterSpacing: 2.0,
            fontWeight: FontWeight.bold,
            fontSize: 20,
            fontFamily: 'Montserrat',
          ),
        )),
        actions: [],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Expanded(
            child: Container(
              height: 600,
              child: ListView.separated(
                  itemBuilder: ((context, index) {
                    final chat = Chaty[index];
                    return ListaChatow(chat.zdjecie, chat.uzytkownik,
                        chat.lastmess, chat.godzina);
                  }),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 10,
                      ),
                  itemCount: Chaty.length),
            ),
          ),
        ),
      ),
    );
  }
}
