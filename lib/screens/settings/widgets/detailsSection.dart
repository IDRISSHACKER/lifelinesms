import 'package:flutter/material.dart';
import 'package:lifelinesms/models/Admin.model.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';

class detailsSection extends StatefulWidget {
  const detailsSection({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _detailsSection();
  }
}

class _detailsSection extends State<detailsSection> {
  List<AdminInfo> adminInfos = [
    AdminInfo(Icon(Icons.admin_panel_settings, color: Colors.deepPurpleAccent.shade400), "Idriss Duval"),
    AdminInfo(Icon(Icons.mark_email_unread, color: Colors.pinkAccent.shade400,), "idrisscoder@gmail."),
    AdminInfo(Icon(Icons.phone_android_rounded, color: Colors.blueAccent[400],), "+237693342860")
  ];

  @override
  void initState() async{
    setState(() async{
        List<AdminInfo> adminInfos = [
          AdminInfo(Icon(Icons.admin_panel_settings, color: Colors.deepPurpleAccent.shade400), "${await SessionManager().get('name')} ${await SessionManager().get('surname')}"),
          AdminInfo(Icon(Icons.mark_email_unread, color: Colors.pinkAccent.shade400,), "${await SessionManager().get('email')}"),
          AdminInfo(Icon(Icons.phone_android_rounded, color: Colors.blueAccent[400],), "+${await SessionManager().get('pays_id')}${await SessionManager().get('phone')}")
        ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Card(
            elevation: 0.0,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: adminInfos.length,
                itemBuilder: (_, index) {
                  final info = adminInfos[index];

                  return Card(
                      elevation: 0.3,
                      child: ListTile(
                        leading: info.icon,
                        title: Text(info.info),
                      ));
                }),
          )
        ],
      ),
    );
  }
}
