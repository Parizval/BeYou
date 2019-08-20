import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ChatBot extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Column(
        children: <Widget>[
          Container(
            height: 80,
            color: const Color(0xff4EBDEF),
          ),
          Expanded(
            flex : 1 ,
            child:
            new Container(
              height: 200.0,
              color: const Color(0xffF1F0F2),
              child: new Container(
                  decoration: new BoxDecoration(
                      color: const Color(0xff4EBDEF),
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
                              child: new Text("ChatBot",style: new TextStyle(fontSize: 60,color: Colors.white),),
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
                      height: 320,
                      width: 350,
                      child: new Center(
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 20,),
                            new Container(
                              margin: EdgeInsets.fromLTRB(25 , 0, 15, 0),
                              child: new Column(
                                children: <Widget>[
                                  new Text("Description ",style: new TextStyle(fontSize: 30),),
                                  SizedBox(height: 30,),
                                  new Center(
                                    widthFactor: 0.3,
                                    child:new Text("This function of the Application enables you to human like conversation as well get to know "
                                        "the details that you might not be procure on a daily basis without a sweat. ",style: new TextStyle(fontSize: 25),) ,
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
                        _launchURL();
                      },
                      child:  Container(
                        height: 100,
                        width: 300,
                        decoration: new BoxDecoration(
                          color: const Color(0xff4666E5),
                          borderRadius: BorderRadius.all(
                              const Radius.circular(30.0)
                          ),
                        ),
                        child: new Center(
                          child: new Text("Open ChatBot",style: new TextStyle(fontSize: 30,color: Colors.white),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
_launchURL() async {
  const url = 'https://bot.dialogflow.com/8bdd4b05-b56a-4679-9216-cc756b1';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

