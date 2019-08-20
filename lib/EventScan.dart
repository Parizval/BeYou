import 'dart:async';
import 'dart:io';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
//import 'Event.dart';
import 'Details.dart';
import 'Articles.dart';
class EventScanner extends StatefulWidget {

  @override
  _EventScannerState createState() => new _EventScannerState();
}

class _EventScannerState extends State<EventScanner> {
  String barcode = "";

  @override
  initState() {
    super.initState();
  }

  File galleryFile;

  imageSelectorGallery() async {
    galleryFile = await ImagePicker.pickImage(
      source: ImageSource.gallery,
// maxHeight: 50.0,
// maxWidth: 50.0,
    );
    print("You selected gallery image : " + galleryFile.path);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
          body:
             new Column(
              children: <Widget>[
                Container(
                  height: 80,
                  color: const Color(0xffB4C55B),
                ),
                Expanded(
                  flex : 1 ,
                  child:
                  new Container(
                    height: 200.0,
                    color: const Color(0xffF1F0F2),
                    child: new Container(
                        decoration: new BoxDecoration(
                            color: const Color(0xffB4C55B),
                            borderRadius: new BorderRadius.only(
                              bottomLeft: const Radius.circular(100.0),
                            )),
                        child: new Row(
                          children: <Widget>[
                            SizedBox(width: 10,),
                            Center(
                              child:Column(
                                children: <Widget>[
                                  Container(
                                    child: new Text("Event Scanner",style: new TextStyle(fontSize: 45,color: Colors.white),),
                                    margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child : new Container(
                    color:  const Color(0xffF1F0F2),
                    child: new Center(
                      child: new Column(
                        children: <Widget>[
                          SizedBox(height: 100,),
                          new Container(
                            decoration: new BoxDecoration(
                              color :  const Color(0xffFFFFFF) ,
                              borderRadius: BorderRadius.all(
                                  const Radius.circular(30.0)
                              ),
                            ),
                            height: 290,
                            width: 350,
                            child: new Center(
                              child: Column(
                                children: <Widget>[
                                  SizedBox(height: 20,),
                                  new Container(
                                    margin: EdgeInsets.fromLTRB(25 , 0, 15, 0),
                                    child: new Column(
                                      children: <Widget>[
                                        new Text("Description",style: new TextStyle(fontSize: 30),),
                                        SizedBox(height: 30,),
                                        new Center(
                                          widthFactor: 0.3,
                                          child:new Text("This function of the application allows you to scan any event going to happen inside the Bennett "
                                              "All you have to do scan the QR Code and the details of the event would appear.",style: new TextStyle(fontSize: 22),) ,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 70,),
                          new GestureDetector(
                            onTap: (){
                                      barcodeScanning();
                            },
                            child:  Container(
                              height: 100,
                              width: 300,
                              decoration: new BoxDecoration(
                                color: const Color(0xff52912E),
                                borderRadius: BorderRadius.all(
                                    const Radius.circular(30.0)
                                ),
                              ),
                                child: new Center(
                                    child: new Text("Capture Code",style: new TextStyle(color: Colors.white,fontSize: 30),)
                                ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // displayImage(),
              ],
            ),
          ),
    );
  }

  Widget displayImage() {
    return new SizedBox(
      height: 300.0,
      width: 400.0,
      child: galleryFile == null
          ? new Text('Sorry nothing to display')
          : new Image.file(galleryFile),
    );
  }

// Method for scanning barcode....
  Future barcodeScanning() async {
//imageSelectorGallery();

    try {
      String barcode = await BarcodeScanner.scan();
      setState(() => this.barcode = barcode);
      if(Headings.contains(barcode))
        {
          if(first.contains(barcode))
          {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ArticlePink(heading: barcode)));
          }
          else if(second.contains(barcode))
            {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ArticleGreen(heading: barcode)));
            }
            else
              {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Article(heading: barcode)));
              }

        }
      else{
        print("Record Not Found");
     //   _showDialog();
      }
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          this.barcode = 'No camera permission!';
        });
      } else {
        setState(() => this.barcode = 'Unknown error: $e');
      }
    } on FormatException {
      setState(() => this.barcode =
      'Nothing captured.');
    } catch (e) {
      setState(() => this.barcode = 'Unknown error: $e');
    }
  }
}
//void _showDialog() {
//  // flutter defined function
//  showDialog(
//   // context: context,
//    builder: (BuildContext context) {
//      // return object of type Dialog
//      return AlertDialog(
//        title: new Text("Alert Dialog title"),
//        content: new Text("Alert Dialog body"),
//        actions: <Widget>[
//          // usually buttons at the bottom of the dialog
//          new FlatButton(
//            child: new Text("Close"),
//            onPressed: () {
//              Navigator.of(context).pop();
//            },
//          ),
//        ],
//      );
//    },
//  );
//}