import 'package:flutter/material.dart';
import 'package:flutter_drawer_example/logic.dart';

class DashboardPage extends StatelessWidget {
  final Logic logic = new Logic();
  final numController = TextEditingController();
  final textToShow = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Form(
          child: Column(
        children: [
          TextFormField(
            controller: numController,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: "Numero decimal"),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              child: Row(
                children: [
                  OutlinedButton(
                      onPressed: () {
                        textToShow.text =
                            logic.convertToBin(numController.text, "2");
                      },
                      child: Text("Convertir a binario")),
                  OutlinedButton(
                      onPressed: () {
                        textToShow.text =
                            logic.convertToBin(numController.text, "16");
                      },
                      child: Text("Convertir a Hexadecimal")),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            controller: textToShow,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Resultado",
            ),
          ),
          SizedBox(height: 15),
        ],
      )),
    );
  }
}
