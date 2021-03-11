import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gerador_versiculo/brain/verse_brain.dart';
import 'package:gerador_versiculo/components/my_button.dart';
import 'package:gerador_versiculo/components/my_image.dart';
import 'package:gerador_versiculo/components/my_test.dart';
import 'package:gerador_versiculo/components/my_text.dart';
import 'package:share/share.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String verseButton = '';
  int versiculoSorteado;

  void gerarVersiculo() {
    var versiculoSorteado = Random().nextInt(versiculos.length);
    setState(() {
      verseButton = versiculos[versiculoSorteado];
    });
  }

  @override
  void initState() {
    super.initState();
    gerarVersiculo();
  }

  share(BuildContext context) {
    final RenderBox box = context.findRenderObject();
    Share.share(verseButton,
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Gerador de Versiculo',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 4,
            child: MyBody(
              title: verseButton,
            ),
          ),

          /* Stack(
            children: [
              MyImage(
                picture: AssetImage('images/paper.jpg'),
              ),
              Center(
                child: MyText(
                  title: verseButton,
                ),
              ),
            ],
          ), */
          Expanded(
            child: Row(
              children: [
                MyButton(
                  title: 'Sortear \nVersiculo',
                  colour: Color(0xffff1a1a),
                  onTap: () {
                    gerarVersiculo();
                  },
                ),
                MyButton(
                  title: 'Compartilhar \nVersiculo',
                  colour: Colors.green[900],
                  onTap: () {
                    share(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      /* floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffff1a1a),
        onPressed: () {
          gerarVersiculo();
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ), */
    );
  }
}
