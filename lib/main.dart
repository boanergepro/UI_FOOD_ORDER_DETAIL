import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Details Review',
      home: FoodDetails(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FoodDetails extends StatefulWidget {
  @override
  _FoodDetailsState createState() => new _FoodDetailsState();
 }
class _FoodDetailsState extends State<FoodDetails>  with SingleTickerProviderStateMixin{
  TabController controller;
  @override
    void initState() {
      // TODO: implement initState
      super.initState();
      controller = TabController(length: 3, vsync: this);
    }
  // Uri and Tittle
  List<List> itemsFood = [
    [
      'burger.png',
      'Burger'
    ],
    [
      'coffee-1.png',
      'Coffee'
    ],
    [
      'pizza.png',
      'Pizza'
    ],
    [
      'pancakes.png',
      'Pancakes'
    ],
    [
      'fried-egg.png',
      'Eggs'
    ],
    [
      'button.png',
      ''
    ],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepOrange[800],
        bottom: AppBar(
          elevation: 0,
          backgroundColor: Colors.deepOrange[800],
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu, color: Colors.white,),
          ),
          title: Center(
            child: Text('Food Details Review'),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, color: Colors.white,),
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(30),
              child: ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: Container(
                  height: MediaQuery.of(context).size.height / 9,
                  width: MediaQuery.of(context).size.width / 6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey[300],  width: 3),
                  ),
                  child:  Padding(
                    padding: EdgeInsets.all(12),
                    child: Image.asset('assets/spaghetti.png'),
                  )
                ),
                title: Text(
                  'PeGast Marceau',
                  style: TextStyle(fontSize: 14),
                ),
                subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width / 25
                      ),
                      child: Text(
                        '48 Avenue Marceau, 75008 PARIS',
                        style: TextStyle(fontSize: 11),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.deepOrange[800],
                          size: 13,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.deepOrange[800],
                          size: 13,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.deepOrange[800],
                          size: 13,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.deepOrange[800],
                          size: 13,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey,
                          size: 13,
                        )
                      ],
                    )
                  ],
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert),
                ),
              ),
            ),
            TabBar(
              indicatorColor: Colors.deepOrange[800],
              controller: controller,
              labelColor:Colors.deepOrange[800],
              unselectedLabelColor: Colors.black,
              tabs: <Widget>[
                Tab(
                  text: 'Menu',
                ),
                Tab(
                  text: 'Reviews (951)',
                ),
                Tab(
                  text: 'Informations',
                )
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: GridView.count(
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  crossAxisCount: 3,
                  children: List.generate(6, (index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey[300],  width: 3),
                      ),
                      child: index == 5 && itemsFood[index][1] == '' ? Padding(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/icons/' + itemsFood[index][0],
                              height: MediaQuery.of(context).size.height /15,
                            ),
                          ],
                        ),
                      )
                      : Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'assets/icons/' + itemsFood[index][0],
                              height: MediaQuery.of(context).size.height /15,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(itemsFood[index][1]),
                            )
                          ],
                        ),
                      )
                    );
                  }),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 25),
              width: MediaQuery.of(context).size.width / 1.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.deepOrange[800],
              ),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Center(
                  child: Text('VIEW ALL', style: TextStyle(color: Colors.white),),
                ),
              )
            )

          ],
        ),
      ),
    );
  }
}
