import 'package:flutter/material.dart';
import 'package:lifelinesms/models/Admin.model.dart';

class detailsSection extends StatefulWidget {
  const detailsSection({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _detailsSection();
  }
}

class _detailsSection extends State<detailsSection> {
  final List<AdminInfo> adminInfos = [
    AdminInfo(Icon(Icons.admin_panel_settings, color: Colors.deepPurpleAccent.shade400), "Idriss Duval"),
    AdminInfo(Icon(Icons.mark_email_unread, color: Colors.pinkAccent.shade400,), "idrisscoder@gmail.com"),
    AdminInfo(Icon(Icons.phone_android_rounded, color: Colors.blueAccent[400],), "+237693342860")
  ];

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
