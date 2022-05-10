import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lifelinesms/http/contact.http.dart';
import 'package:lifelinesms/http/groupe.http.dart';
import 'package:lifelinesms/models/Groupe.model.dart';
import 'package:lifelinesms/models/User.model.dart';
import 'package:lifelinesms/utils/customBtn.dart';
import 'package:lifelinesms/utils/customField.utils.dart';
import 'package:lifelinesms/utils/load.util.dart';
import 'package:lifelinesms/utils/success.util.dart';

class formNewUser extends StatefulWidget {
  const formNewUser({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _formNewUser();
  }
}

class _formNewUser extends State<formNewUser> {
  List<DropdownMenuItem<int>> ctgContacts = [];
  String name = "";
  String phone = "";
  int selectedCtg = 22;
  bool addingUser = false;

  final nameController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
    displayCtg();
  }

  Future displayCtg() async {
    List<DropdownMenuItem<int>> ctgs = await getGroupeParsedAsItem(2);

    setState(() {
      ctgContacts = ctgs;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Container(
          padding: EdgeInsets.all(2.0),
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 300.0,
                  child: SvgPicture.asset(
                    "assets/img/act.svg",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 4.0,
                ),
                TextFieldContainer(
                    child: TextFormField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person_outline_outlined),
                          hintText: "Name",
                          border: DefaultInputRadius(),
                        ),
                        onChanged: (value) {
                          setState(() {
                            name = value;
                          });
                        },
                        controller: nameController,
                        validator: (name) {
                          return name == null || name.length < 2
                              ? "enter a valid name"
                              : null;
                        })),
                TextFieldContainer(
                    child: TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.phone_in_talk_outlined),
                            hintText: "Phone number",
                            border: DefaultInputRadius()),
                        onChanged: (value) {
                          setState(() {
                            phone = value;
                          });
                        },
                        controller: phoneController,
                        validator: (phone) {
                          return phone == null || phone.length < 5
                              ? "enter a valid phone number"
                              : null;
                        })),
                ctgContacts.isEmpty
                    ? const CircularProgressIndicator()
                    : TextFieldContainer(
                        child: DropdownButtonFormField(
                            items: ctgContacts,
                            value: selectedCtg,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.category_outlined),
                                hintText: "Select category",
                                labelText: "Select category",
                                border: DefaultInputRadius()),
                            onChanged: (dynamic selected) {
                              setState(() {
                                selectedCtg = selected;
                              });
                            }),
                      ),
                addingUser
                    ? CircularProgressIndicator.adaptive()
                    : CustomBtn(
                        text: "Add contact",
                        icon: Icons.person_add_alt_1_outlined,
                        onPress: () async {
                          final isValidForm =
                              name.length > 1 && phone.length > 4;

                          if (isValidForm) {
                            setState(() {
                              addingUser = true;
                            });
                            final AddUser user = AddUser("$name", "", "", "237",
                                "$phone", "selectedCtg");
                            bool addUser = await setUser(user);
                            print(addUser);
                            if (addUser) {
                              nameController.clear();
                              phoneController.clear();
                              ShowSuccess(
                                  const Icon(Icons.check_circle_outlined,
                                      color: Colors.white),
                                  "the user has been successfully added",
                                  context);
                              setState(() {
                                addingUser = false;
                              });
                              //Navigator.of(context).pop();
                            } else {
                              setState(() {
                                addingUser = false;
                              });
                              print("User can not added");
                            }
                          }
                        })
              ],
            ),
          ),
        ));
  }
}
