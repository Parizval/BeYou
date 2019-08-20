import 'package:flutter/material.dart';
import 'Details.dart';

class Article extends StatelessWidget
{
  String heading = "";
  Article({Key key, this.heading}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Column(
        children: <Widget>[
          Container(
            height: 80,
            color: const Color(0xff4666E5),
          ),
          Expanded(

            flex : 1 ,
            child:
            new Container(

              height: 200.0,
              color: const Color(0xffF1F0F2),
              child: new Container(
                  decoration: new BoxDecoration(
                      color: const Color(0xff4666E5),
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

                              child: new Text("$heading",style: new TextStyle(fontSize: 35,color: Colors.white),),
                              margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                            ),

                            SizedBox(width: 50,height: 20,),
                            new Text(clubthree["$heading"],style: new TextStyle(fontSize: 30,color: Colors.white),),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          Expanded(
            flex: 4,
            child : new Container(
              color:  const Color(0xffF1F0F2),
              child: new Center(
                child: new Column(
                  children: <Widget>[
                    SizedBox(height: 30,),
                    new Container(
                      decoration: new BoxDecoration(
                        color : const Color(0xffFFFFFF),
                        borderRadius: BorderRadius.all(
                            const Radius.circular(30.0)
                        ),
                      ),
                      height: 250,
                      width: 300,
                      child: new Center(
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 5,),
                            new Text("KeyPoints of the Event",style: new TextStyle(fontSize: 25),),
                            SizedBox(height: 15,),
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image(image: AssetImage("assets/Images/calendar.png"),width: 45 ,height: 45,),
                                SizedBox(width: 20,),
                                new Text(datesthree["$heading"],style: new TextStyle(fontSize:24),),
                              ],
                            ),
                            SizedBox(height: 20,),
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image(image: AssetImage("assets/Images/hourglass.png"),width: 45,height: 45,),
                                SizedBox(width: 20,),
                                new Text(timethree["$heading"] ,style: new TextStyle(fontSize:24),),
                              ],
                            ),
                            SizedBox(height: 10,),
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image(image: AssetImage("assets/Images/map.png"),width: 50,height: 50,),
                                SizedBox(width: 20,),
                                new Text(locathree["$heading"],style: new TextStyle(fontSize:24),),
                              ],
                            ),
                          ],
                        ),
                      ),

                    ),
                    SizedBox(height: 30,),
                    new Container(
                      decoration: new BoxDecoration(
                        color :  const Color(0xffFFFFFF) ,
                        borderRadius: BorderRadius.all(
                            const Radius.circular(30.0)
                        ),
                      ),
                      height: 250,
                      width: 300,
                      child: new Center(
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 20,),
                            new Text("Description of the Event",style: new TextStyle(fontSize: 25),),
                            SizedBox(height: 30,),
                            new Center(

                              child:new Text("Description",style: new TextStyle(fontSize: 20),) ,

                            )
                          ],
                        ),
                      ),

                    )
                  ],
                ),
              ),
            ),
          )

        ],
      ),

      // Home Button Linked
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, '/HomePage');
        },
        icon: Icon(Icons.home),
        label: Text("HomePage"),
      ),
    );
  }
}
class ArticlePink extends StatelessWidget
{
  String heading = "";
  ArticlePink({Key key, this.heading}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Column(
        children: <Widget>[
          Container(
            height: 80,
            color: const Color(0xff8A56AC),
          ),
          Expanded(

            flex : 1 ,
            child:
            new Container(

              height: 200.0,
              color: const Color(0xffF1F0F2),
              child: new Container(
                  decoration: new BoxDecoration(
                      color: const Color(0xff8A56AC),
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

                              child: new Text("$heading",style: new TextStyle(fontSize: 35,color: Colors.white),),
                              margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                            ),

                            SizedBox(width: 50,height: 20,),
                            new Text(club["$heading"],style: new TextStyle(fontSize: 30,color: Colors.white),),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          Expanded(
            flex: 4,
            child : new Container(
              color:  const Color(0xffF1F0F2),
              child: new Center(
                child: new Column(
                  children: <Widget>[
                    SizedBox(height: 30,),
                    new Container(
                      decoration: new BoxDecoration(
                        color : const Color(0xffFFFFFF),
                        borderRadius: BorderRadius.all(
                            const Radius.circular(30.0)
                        ),
                      ),
                      height: 250,
                      width: 300,
                      child: new Center(
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 5,),
                            new Text("KeyPoints of the Event",style: new TextStyle(fontSize: 25),),
                            SizedBox(height: 15,),
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image(image: AssetImage("assets/Images/calendar.png"),width: 45 ,height: 45,),
                                SizedBox(width: 20,),
                                new Text(dates["$heading"],style: new TextStyle(fontSize:24),),
                              ],
                            ),
                            SizedBox(height: 20,),
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image(image: AssetImage("assets/Images/hourglass.png"),width: 45,height: 45,),
                                SizedBox(width: 20,),
                                new Text(time["$heading"] ,style: new TextStyle(fontSize:24),),
                              ],
                            ),
                            SizedBox(height: 10,),
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image(image: AssetImage("assets/Images/map.png"),width: 50,height: 50,),
                                SizedBox(width: 20,),
                                new Text(loca["$heading"],style: new TextStyle(fontSize:24),),
                              ],
                            ),
                          ],
                        ),
                      ),

                    ),
                    SizedBox(height: 30,),
                    new Container(
                      decoration: new BoxDecoration(
                        color :  const Color(0xffFFFFFF) ,
                        borderRadius: BorderRadius.all(
                            const Radius.circular(30.0)
                        ),
                      ),
                      height: 250,
                      width: 300,
                      child: new Center(
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 20,),
                            new Text("Description of the Event",style: new TextStyle(fontSize: 25),),
                            SizedBox(height: 30,),
                            new Center(

                              child:new Text("Description",style: new TextStyle(fontSize: 20),) ,

                            )
                          ],
                        ),
                      ),

                    )
                  ],
                ),
              ),
            ),
          )

        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, '/HomePage');
        },
        backgroundColor: const Color(0xffD47FA6),
        icon: Icon(Icons.home),
        label: Text("HomePage"),
      ),
    );
  }
}
class ArticleGreen extends StatelessWidget
{
  String heading = "";
  ArticleGreen({Key key, this.heading}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Column(
        children: <Widget>[
          Container(
            height: 80,
            color: const Color(0xff52912E),
          ),
          Expanded(

            flex : 1 ,
            child:
            new Container(

              height: 200.0,
              color: const Color(0xffF1F0F2),
              child: new Container(
                  decoration: new BoxDecoration(
                      color: const Color(0xff52912E),
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

                              child: new Text("$heading",style: new TextStyle(fontSize: 35,color: Colors.white),),
                              margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                            ),
                            SizedBox(width: 50,height: 20,),
                            new Text(clubtwo["$heading"],style: new TextStyle(fontSize: 30,color: Colors.white,fontFamily: 'Shadows_Into_Light'),),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          Expanded(
            flex: 4,
            child : new Container(
              color:  const Color(0xffF1F0F2),
              child: new Center(
                child: new Column(
                  children: <Widget>[
                    SizedBox(height: 30,),
                    new Container(
                      decoration: new BoxDecoration(
                        color : const Color(0xffFFFFFF),
                        borderRadius: BorderRadius.all(
                            const Radius.circular(30.0)
                        ),
                      ),
                      height: 250,
                      width: 300,
                      child: new Center(
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(height: 5,),
                            new Text("KeyPoints of the Event",style: new TextStyle(fontSize: 25),),
                            SizedBox(height: 15,),
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image(image: AssetImage("assets/Images/calendar.png"),width: 45 ,height: 45,),
                                SizedBox(width: 20,),
                                new Text(datestwo["$heading"],style: new TextStyle(fontSize:24),),
                              ],
                            ),
                            SizedBox(height: 20,),
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image(image: AssetImage("assets/Images/hourglass.png"),width: 45,height: 45,),
                                SizedBox(width: 20,),
                                new Text(timetwo["$heading"] ,style: new TextStyle(fontSize:24),),
                              ],
                            ),
                            SizedBox(height: 10,),
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image(image: AssetImage("assets/Images/map.png"),width: 50,height: 50,),
                                SizedBox(width: 20,),
                                new Text(locatwo["$heading"],style: new TextStyle(fontSize:24),),
                              ],
                            ),
                          ],
                        ),
                      ),

                    ),
                    SizedBox(height: 30,),
                    new Container(
                      decoration: new BoxDecoration(
                        color :  const Color(0xffFFFFFF) ,
                        borderRadius: BorderRadius.all(
                            const Radius.circular(30.0)
                        ),
                      ),
                      height: 250,
                      width: 300,
                      child: new Center(
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 20,),
                            new Text("Description of the Event",style: new TextStyle(fontSize: 25),),
                            SizedBox(height: 30,),
                            new Center(

                              child:new Text("Description",style: new TextStyle(fontSize: 20),) ,

                            )
                          ],
                        ),
                      ),

                    )
                  ],
                ),
              ),
            ),
          )

        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, '/HomePage');
        },
        backgroundColor: const Color(0xffB4C55B),
        icon: Icon(Icons.home),
        label: Text("HomePage"),
      ),
    );
  }
}