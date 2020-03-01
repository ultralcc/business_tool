import 'package:flutter/material.dart';

class ShowAlert {
  static void show(BuildContext context, String title, String content,
      {Function onSubmit}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          title: new Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          content: new Text(content),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text(
                "確認",
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: Colors.orange),
              ),
              onPressed: () {
                if (onSubmit != null) onSubmit();
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
