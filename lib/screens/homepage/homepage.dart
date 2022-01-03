import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Parking List 1"),
        backgroundColor: Colors.deepOrangeAccent,
        elevation: 2,
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.filter_list),
          )
        ],
      ),
      body: Lists(),
    );
  }
}

class Item {
  final String? title;
  final String? catagory;
  final String? place;
  final String? ratings;
  final String? discount;
  final String? image;

  Item(
      {this.title,
        this.catagory,
        this.place,
        this.ratings,
        this.discount,
        this.image});
}

class Lists extends StatelessWidget {
  final List<Item> _data = [
    Item(
        title: 'STC Mall',
        catagory: "Malls",
        place: "Toronto",
        ratings: "5.0/80",
        discount: "10 %",
        image: "https://retailinsider.b-cdn.net/wp-content/uploads/2015/11/image-asset-2021-01-24T224053.730.jpeg"),
    Item(
        title: 'Parkview Mall',
        catagory: "Malls",
        place: "North York",
        ratings: "4.5/90",
        discount: null,
        image: "https://pbs.twimg.com/profile_images/1306244492421410822/zUrY--0A_400x400.jpg"),
    Item(
        title: 'Cedarbrae Mall',
        catagory: "Malls",
        place: "Toronto",
        ratings: "4.5/90",
        discount: "12 %",
        image:
        "https://fcr.ca/wp-content/uploads/2019/12/CCM299_Ground2.jpg"),
    Item(
        title: 'Eaton Center Mall',
        catagory: "Malls",
        place: "Toronto",
        ratings: "4.5/90",
        discount: "15 %",
        image:
        "https://i2.wp.com/mallswell.com/wp-content/uploads/2019/01/mall-of-america.jpg?fit=2048%2C1366&ssl=1"),
    Item(
        title: 'Yorkdale Mall',
        catagory: "Malls",
        place: "Singapore",
        ratings: "4.5/90",
        discount: "12 %",
        image:
        "https://www.google.com/maps/uv?pb=!1s0x882b32340d1980a1%3A0x9948d80f620f1eb9!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipNufDabYcHP16UTEdlRTHIKziT_jdJ6nT99A682%3Dw213-h160-k-no!5syorkdale%20mall%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipNufDabYcHP16UTEdlRTHIKziT_jdJ6nT99A682&hl=en&sa=X&ved=2ahUKEwimv_ji2pb1AhWBWM0KHQH1DjgQoip6BAg6EAM#"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(6),
      itemCount: _data.length,
      itemBuilder: (BuildContext context, int index) {
        Item item = _data[index];
        return Card(
          elevation: 3,
          child: Row(
            children: <Widget>[
              Container(
                height: 125,
                width: 110,
                padding:
                EdgeInsets.only(left: 0, top: 10, bottom: 70, right: 20),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(item.image!), fit: BoxFit.cover)),
                child: item.discount == null
                    ? Container()
                    : Container(
                  color: Colors.deepOrange,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        item.discount!,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        "Discount",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      item.title!,
                      style: TextStyle(
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.w700,
                          fontSize: 17),
                    ),
                    Text(
                      item.catagory!,
                      style: TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                    Text(
                      item.place!,
                      style: TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.pink,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.pink,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.pink,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.pink,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.pink,
                          size: 18,
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          item.ratings!,
                          style: TextStyle(fontSize: 13),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Ratings",
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
