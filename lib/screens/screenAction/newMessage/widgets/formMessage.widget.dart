import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lifelinesms/utils/customField.utils.dart';

class formMessage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _formMessage();
  }
}

class _formMessage extends State<formMessage> {
  String message = "";
  final messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [
            Expanded(
                child: Container(
                    color: Colors.white,
                    child: SvgPicture.asset("assets/img/login.svg"))),
            Container(
                child: Card(
              elevation: 2.0,
              margin: EdgeInsets.only(left: 0, top: 4, right: 0, bottom: 0),
              child: TextFieldContainer(
                  child: TextFormField(
                autofocus: true,
                autocorrect: true,
                keyboardType: TextInputType.multiline,
                minLines: 1,
                maxLines: 5,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.flutter_dash),
                    suffixIcon: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.indigo,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.send_rounded,
                            color: Colors.white,
                            size: 28,
                          ),
                          onPressed: () {
                          },
                        )),
                    hintText: "Type your message here",
                    border: DefaultInputRadiusMessage()),
                onChanged: (value) {
                  setState(() {
                    message = value;
                  });
                },
                controller: messageController,
              )),
            ))
          ],
        ),
      ),
    );
  }
}
