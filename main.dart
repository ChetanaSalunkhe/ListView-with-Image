import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'ListView Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
  //_ListViewWithProfileState createState() => _ListViewWithProfileState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      Navigator.push(context, MaterialPageRoute(builder: (context)=>GridView()));
    });
  }

  @override
  Widget build(BuildContext context) {

    final List<String> entries = <String>["Android Developer","Flutter Developer","Java Developer","Kotlin Developer","PHP Developer",
      "C# Developer",".Net Developer","Python Developer","React Native Developer"];
    final List<int> colorCodes = <int>[600,500,100];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.orange,

        leading: IconButton(icon: Icon(Icons.home,color: Colors.white,), onPressed: null)
      ),
      body: Container(
        //listview
        child:ListView.builder(
           // padding: EdgeInsets.all(10),
            itemCount: entries.length,
            itemBuilder: (BuildContext context,int index){

              //listview1
              return Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                height: 45,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)
                  ),

                  child:Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        color: (index%2==0)?Colors.orange:Colors.indigo,
                        width: 8,
                      ),
                     SizedBox(width: 10,),

                     Icon(Icons.accessibility,color: (index%2==0)?Colors.orange:Colors.indigo,),

                     SizedBox(width: 10,),

                     new Text('${entries[index]}',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w900),),

                      //Image.asset("assets/vrittilogo.png"),
                    ],
                  )
                ),
              );

              //listview2
              return Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                height: 55,
                child: Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)
                    ),

                    child:Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          color: (index%2==0)?Colors.orange:Colors.indigo,
                          width: 8,
                        ),
                        SizedBox(width: 5,),

                        //Icon(Icons.accessibility,color: (index%2==0)?Colors.orange:Colors.indigo,),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child:(index%2==0?
                          Image.asset("assets/img1.jpg",width: 40,height: 40,fit: BoxFit.fill,):
                          Image.asset("assets/boy.png",width: 40,height: 40,fit: BoxFit.fill,))
                        ),

                        SizedBox(width: 10,),

                        new Text('${entries[index]}',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w900),),

                        //Image.asset("assets/vrittilogo.png"),
                      ],
                    )
                ),
              );
            }
           // separatorBuilder: (BuildContext context,int index)=>const Divider(),),

      )

            //Gricview builder
/*
          child:GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3
            ),
            // padding: EdgeInsets.all(10),
              itemCount: entries.length,
              itemBuilder: (BuildContext context,int index){

                //listview1
                *//*return Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                height: 45,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)
                  ),

                  child:Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        color: (index%2==0)?Colors.orange:Colors.indigo,
                        width: 8,
                      ),
                     SizedBox(width: 10,),

                     Icon(Icons.accessibility,color: (index%2==0)?Colors.orange:Colors.indigo,),

                     SizedBox(width: 10,),

                     new Text('${entries[index]}',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w900),),

                      //Image.asset("assets/vrittilogo.png"),
                    ],
                  )
                ),
              );*//*

                //listview2
                return Container(
                  margin: EdgeInsets.fromLTRB(3, 3, 3, 3),
                  height: 55,
                  child: Card(
                    color: Colors.transparent,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)
                      ),

                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            *//*Container(
                            color: (index%2==0)?Colors.orange:Colors.indigo,
                            width: 8,
                          ),*//*
                            SizedBox(height: 10,),

                            //Icon(Icons.accessibility,color: (index%2==0)?Colors.orange:Colors.indigo,),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child:(index%2==0?
                                Image.asset("assets/img1.jpg",width: 55,height: 55,fit: BoxFit.fill,):
                                Image.asset("assets/boy.png",width: 55,height: 55,fit: BoxFit.fill,))
                            ),

                            SizedBox(width: 10,),

                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  new Text('${entries[index]}',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w900,),),
                                ],
                              )
                            )

                            //Image.asset("assets/vrittilogo.png"),
                          ],
                        )
                  ),
                );
              }
            // separatorBuilder: (BuildContext context,int index)=>const Divider(),),

          )
             */
    ),

    floatingActionButton: FloatingActionButton(
      onPressed: _incrementCounter,
      tooltip: 'Increment',
      child: Icon(Icons.add),
    ),
    );
  }
}

