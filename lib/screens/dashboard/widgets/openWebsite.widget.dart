import 'package:flutter/material.dart';
import 'package:open_url/open_url.dart';

Widget OpenWebsiteWidget() {
  return Container(
    padding: EdgeInsets.all(5.0),
    child: Card(
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(20.0),
        height: 120.0,
        child: Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
              Container(
                  child: Icon(
                Icons.web_sharp,
                color: Colors.black12,
                size: 60.0,
              )),
              Column(
                children: [
                  Text(
                    "Lifelinesms Web",
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.black87),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  OutlinedButton(
                      onPressed: () async {
                        final String url = "https://lifelinesms.org/dashboard/";
                        final result = await openUrl('https://github.com/renatoathaydes/open_url');
                        if (result.exitCode == 0) {
                            print('URL should be open in your browser');
                          } else {
                            print('Something went wrong (exit code = ${result.exitCode}): '
                                '${result.stderr}');
                          }
                        },
                      child: Text("open website"))
                ],
              )
            ])),
      ),
    ),
  );
}
