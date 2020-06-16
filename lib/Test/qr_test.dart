import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;
class QRTEST extends StatefulWidget {
  @override
  _QRTESTState createState() => _QRTESTState();
}

class _QRTESTState extends State<QRTEST> {
  void scan()async {
    var cameraScanResult = await scanner.scan();
    print(cameraScanResult);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              color: Colors.red,
              textColor: Colors.white,
              onPressed: () {
                scan();
              },
              child: Text('Scan'),
            ),
          ],
        ),
      ),
    );
  }
}



