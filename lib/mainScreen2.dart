import 'package:flutter/material.dart';

class MainScreen2 extends StatefulWidget {
  const MainScreen2({super.key});

  @override
  State<MainScreen2> createState() => _MainScreen2State();
}

class _MainScreen2State extends State<MainScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[100],
        title: const Text("My Saved Cards", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.indigo),),
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.indigo,
          size: 25,
          ),
      ),
      body: const Column(
          children: [ //<Widget> generic belirteç gibi ne anlama geliyor bak!
            PersonCell(),
            PersonCell(),
            NewCardTitle(),
            NewCardBox()
          ],
        ),
      );
  }
}


class PersonCell extends StatelessWidget {
  const PersonCell({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
              child: Container(
                width: 350,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
                ),
                margin: const EdgeInsets.all(10),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 7),
                      child: Row(
                        children: [
                          RadioButton(),
                          PersonelInformation(),
                          PersonCellButtons(),
                        ],
                    ),
                    )
                  ],
                ), 
              ),
            );
  }
}

class RadioButton extends StatelessWidget {
  const RadioButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
          ),
          child: const Icon(
            Icons.radio_button_checked,
            color: Colors.indigo,
            size: 30,
          ),
        ),
      ],
    );
  }
}

class PersonelInformation extends StatelessWidget {
  const PersonelInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 3),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Esma H. Acar", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.indigo),),
          Text("esma.acar3334@gmail.com", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
          Text(" "),
          Text("Card No: 2100 3002 5664 2000", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
          Text("Exp. Date: 09/29, 12/23", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey))
        ],
      ),
    );
  }
}

class PersonCellButtons extends StatelessWidget {
  const PersonCellButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.only(left: 8),
        child: Column(
          children: [
            Icon(Icons.delete_forever, color: Colors.red),
            SizedBox(height: 7),
            Icon(Icons.edit_square, color: Colors.indigo,),
          ],
        ),
      ),
    );
  }
}

class NewCardTitle extends StatelessWidget {
  const NewCardTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
              padding: EdgeInsets.only(top: 25, right: 180),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Add New Card", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.5, color: Colors.indigo),),
                ],
              ),
            );
  }
}

class NewCardBox extends StatelessWidget {
  const NewCardBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
              child: Container(
                width: 350,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
                ),
                margin: const EdgeInsets.all(4),
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 35, left: 25),
                      child: Row(
                        children: [
                          Text("First Name*", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
                          //Divider(height: 10,thickness: 50, color: Colors.black, indent: 20, endIndent: 20), column ile altlarına
                          SizedBox(width: 95),
                          Text("Last Name*", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
  }
}