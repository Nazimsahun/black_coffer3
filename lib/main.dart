import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_nav_bar/google_nav_bar.dart'; //used for fullscreen
import 'SEC_SCREEN.dart';

void main() => runApp(AwesomeApp());

class AwesomeApp extends StatefulWidget {
  @override
  _AwesomeAppState createState() => _AwesomeAppState();

}

class _AwesomeAppState extends State<AwesomeApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]); //hides navigation and status bar making app fullscreen
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyListView(),
    );
  }
}

class MyListView extends StatelessWidget {
  List<List<Color>> colors = <List<Color>>[
    [
      Colors.grey,
      Colors.green,
    ],
    [
      Colors.greenAccent,
      Colors.blue,
    ],
    [
      Colors.yellow,
      Colors.blueGrey,
    ],
    [
      Colors.orange,
      Colors.yellow,
    ],
    [
      Colors.purple,
      Colors.green,
    ],
    [Colors.cyanAccent, Colors.white30]
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          bottomNavigationBar:GNav(
            gap: 0,
            backgroundColor: Colors.blueGrey,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.white38,
            padding: EdgeInsets.all(15),
            tabs:const [
              GButton(icon: Icons.remove_red_eye,
              text: "Explore",),
              GButton(icon: Icons.sports_basketball,
            text: "Explore",),
              GButton(icon: Icons.chat,
              text: "Explore",),
              GButton(icon: Icons.contacts,
                text: "Explore",),
              GButton(icon: Icons.tag,
                text: "Explore",),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){},
            child: Icon(Icons.add,),

          ),
          body: Column(
            children: <Widget>[
              Container(
                  height: 80,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.blue, Colors.blueGrey],
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(left: 5, right: 5, ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.menu, color: Colors.white,size: 35,), onPressed: () {  },
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:<Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Text("Nazim Sahun",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)),
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined,color: Colors.white,),
                            Text("Rohini,Delhi",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white)),
                          ],
                        ),]),
                        IconButton(
                          icon: Icon(Icons.checklist, color: Colors.white,size: 35,), onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>SEC_SCREEN())); },
                        )
                      ],
                    ),
                  )),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blueGrey, Colors.blue],
                  ),
                ),
                child: TabBar(
                  tabs: <Widget>[
                    Tab(
                      child: Text("Personal",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white)),
                    ),
                    Tab(
                      child: Text("Business",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white)),
                    ),
                    Tab(
                      child: Text("Merchent",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white)),
                    )
                  ],
                ),
              ),
                  Padding(
    padding: const EdgeInsets.all(10),
    child: Column(
    children: [
    TextField(
    // onChanged: (value) => _runFilter(value),
    decoration: InputDecoration(
    contentPadding:
    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
    hintText: "Search",
    suffixIcon: const Icon(Icons.search),
    // prefix: Icon(Icons.search),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20.0),
    borderSide: const BorderSide(),
    ),
    ),
    ),
    ]),
    ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    Container(
                      // padding: EdgeInsets.only(left: 10, right: 10),
                      child: ListView.builder(
                        itemCount: 20, //total no of list items
                        itemBuilder: (BuildContext context, int currentitem) {
                          return GestureDetector(
                            onTap: () {
                              print("tapped on item $currentitem");
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors:
                                    colors[currentitem % colors.length]),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  new BoxShadow(
                                      color: Colors.black54,
                                      blurRadius: 100,
                                      offset: new Offset(1.0, 2.0)),
                                ],
                              ),
                              margin: EdgeInsets.only(
                                  top: 10, left: 20, right: 20, bottom: 10),
                              height: 180,
                              child: Row(
                                children: <Widget>[
                                  Expanded(  //left half image avtar of listitem
                                    flex: 1,
                                    child: Container(
                                      alignment: Alignment.topLeft,
                                      margin: EdgeInsets.only(left: 20,top: 15),
                                      child:CircleAvatar(
                                        radius: 40.0,
                                        backgroundImage:
                                        NetworkImage('https://img.freepik.com/premium-vector/vector-cartoon-illustration-face-boy_194552-382.jpg?w=1380'),
                                        backgroundColor: Colors.transparent,
                                      )
                                    ),
                                  ),
                                  Expanded(   //center of listitem
                                    flex: 2,
                                    child: Container(
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.only(top: 20,left: 5),
                                      child: Column(
                                        children: <Widget>[
                                          Expanded(
                                              flex: 4,
                                              child: Container(
                                                alignment: Alignment.centerLeft,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text("Kartik Rai",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold,),),
                                                    Text("delhi | Student",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold,),),
                                                    Text("Within100m",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold,),),
                                                  ],
                                                ),
                                              )
                                          ),
                                          Expanded(
                                            flex: 3,
                                            child: Container(
                                              child: Row(
                                                children: <Widget>[
                                                  Expanded(
                                                    flex: 1,
                                                    child: Container(
                                                        child: Column(
                                                          children: <Widget>[
                                                            Icon(Icons.coffee_outlined,color: Colors.white,size: 25,),
                                                            Text("Coffee|",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white))
                                                          ],
                                                        )
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: Container(
                                                        child: Column(
                                                          children: <Widget>[
                                                            Icon(Icons.business,color: Colors.white,size: 25,),
                                                            Text("Busines|",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white))

                                                          ],
                                                        )
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: Container(
                                                        child: Column(
                                                          children: <Widget>[
                                                            Icon(Icons.book,color: Colors.white,size: 25,),
                                                            Text("Book |",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white)),

                                                          ],
                                                        )
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          )

                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(   //right half of listitem
                                    flex: 1,
                                    child: Container(
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            children: [
                                              IconButton(icon: Icon(Icons.add,color: Colors.white,size: 30,), onPressed: () {  },),
                                              Text("INVITE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.white),)
                                            ],
                                          ),

                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}