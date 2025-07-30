import 'package:flutter/material.dart';

class Class1 extends StatelessWidget {
  const Class1({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    void showAlertDialog() {
      //With barrier Dismissable
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: Text('This is title'),
            content: Text('This is content'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('actions'),
              ),
              SizedBox(height: 5),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Ok'),
              ),
            ],
          );
        },
      );
    }

    void showAlertDialogWithIcon() {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Installation Blocked'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(children: [Icon(Icons.warning), Text('Warning')]),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancle'),
              ),
              SizedBox(height: 5),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Ok'),
              ),
            ],
          );
        },
      );
    }

    void showSimpledialog() {
      showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text('Simple Dialog'),
            children: [Text('Option 1'), Text(' Option 1')],
          );
        },
      );
    }

    void showBottomSheetAlert() {
      showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Choose option', style: TextStyle(fontSize: 18)),
                ListTile(
                  title: Text('Option 1'),
                  onTap: () {},
                  onLongPress: () {},
                ),
                ListTile(title: Text('Option 2')),
                ListTile(title: Text('Option 3')),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    onPressed: () {},
                    child: Text('Tanvir'),
                  ),
                ),
              ],
            ),
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('This is Class 1'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Container(color: Colors.red, width: screenSize.width),
            OutlinedButton(
              onPressed: () {
                showAlertDialog();
              },
              child: Text('Alert!'),
            ),
            SizedBox(height: 5),
            OutlinedButton(
              onPressed: () {
                showAlertDialogWithIcon();
              },
              child: Text('Alert with Icon'),
            ),
            SizedBox(height: 5),
            ElevatedButton(
              onPressed: () {
                showSimpledialog();
              },
              child: Text('Simple Dialog button'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                showBottomSheetAlert();
              },
              child: Text('Bottom SheetButton'),
            ),
          ],
        ),
      ),
    );
  }
}
