
import 'package:flutter/material.dart';
class SEC_SCREEN extends StatelessWidget {
  const SEC_SCREEN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Refine",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 18.0,top: 15),
              child: Text("Select Your Availabilty",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blueGrey),),
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
                        suffixIcon: const Icon(Icons.arrow_drop_down),
                        // prefix: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: const BorderSide(),
                        ),
                      ),
                    ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0,top: 15),
              child: Text("Add Your Status",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blueGrey),),
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
                        suffixIcon: const Icon(Icons.star),
                        // prefix: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: const BorderSide(),
                        ),
                      ),
                    ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:<Widget>[
                    Text("0/250"),]
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0,top: 15),
              child: Text("Select Hyper Local Distance",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blueGrey),),
            ),
            Column(
              children: [
                Slider(value: 0, onChanged: (value){
                }),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0,right: 20),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("1 KM"),
                      Text("100 KM"),
                    ],
                  ),
                ),
                    Padding(
                    padding: const EdgeInsets.only(left: 18.0,top: 15),
                    child: Text("Select Porpose",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blueGrey),),
                    ),
              ],
            ),
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
              ElevatedButton
                (onPressed: (){}, child:
                  Text("Coffee"),
                   style: ElevatedButton.styleFrom(
    side: BorderSide(color: Colors.black,width: 2),
    primary: Colors.white,
    onPrimary: Colors.blueGrey,
    shape: StadiumBorder(),
    )),
                ElevatedButton
                  (onPressed: (){}, child:
                Text("Business"),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.black,width: 2),
                      primary: Colors.white,
                      onPrimary: Colors.blueGrey,
                      shape: StadiumBorder(),
                    )),
                ElevatedButton
                  (onPressed: (){}, child:
                Text("Hobbies"),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.black,width: 2),
                      primary: Colors.white,
                      onPrimary: Colors.blueGrey,
                      shape: StadiumBorder(),
                    )),
                ElevatedButton
                  (onPressed: (){}, child:
                Text("Friendship"),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.black,width: 2),
                      primary: Colors.white,
                      onPrimary: Colors.blueGrey,
                      shape: StadiumBorder(),
                    )),
              ],
            ),
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton
                  (onPressed: (){}, child:
                Text("Movies"),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.black,width: 2),
                      primary: Colors.white,
                      onPrimary: Colors.blueGrey,
                      shape: StadiumBorder(),
                    )),
                ElevatedButton
                  (onPressed: (){}, child:
                Text("Dinning"),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.black,width: 2),
                      primary: Colors.white,
                      onPrimary: Colors.blueGrey,
                      shape: StadiumBorder(),
                    )),
                ElevatedButton
                  (onPressed: (){}, child:
                Text("Dating"),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.black,width: 2),
                      primary: Colors.white,
                      onPrimary: Colors.blueGrey,
                      shape: StadiumBorder(),
                    )),
                ElevatedButton
                  (onPressed: (){}, child:
                Text("Matrimony"),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.black,width: 2),
                      primary: Colors.white,
                      onPrimary: Colors.blueGrey,
                      shape: StadiumBorder(),
                    )),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){}, child:
                Text("Save & Explore"),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.black,width: 2),
                      primary: Colors.blueGrey,
                      onPrimary: Colors.white,
                      shape: StadiumBorder(),
                      fixedSize: Size(200, 40)
                    )),
              ],
            ),
          ]),

    );
  }
 
}

