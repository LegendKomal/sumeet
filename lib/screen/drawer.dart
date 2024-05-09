import 'package:flutter/material.dart';
import 'package:sumeet/screen/gift.dart';
import 'package:sumeet/screen/justyou.dart';
import 'package:sumeet/screen/us.dart';

class drawer extends StatefulWidget {
  const drawer({super.key});

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
 Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color(0xff96CBFF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(170),
                  bottomRight: Radius.circular(170),
                )),
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 80, 10, 35),
                  child: CircleAvatar(
                    maxRadius: 50,
                    backgroundImage: AssetImage("images/k23.jpeg"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 35, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Name : ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Sumeet",
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Number : ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "8591646118",
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 50),
            child: Column(
              children: [
                ListTile(
                  onTap: () {
                   Navigator.push(context,
                        MaterialPageRoute(builder: (context) => us()));
                  },
                  title: Text(
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      'Us'),
                  leading: Icon(
                    Icons.people,
                    color: Colors.black,
                  ),
                ),
                Divider(
                  thickness: 0.9,
                  color: Colors.grey,
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => justyou()));
                  },
                  title: Text(
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      'Journey'),
                  leading: Icon(
                    Icons.book_rounded,
                    color: Colors.black,
                  ),
                ),
                 Divider(
                  thickness: 0.9,
                  color: Colors.grey,
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => gift()));
                  },
                  title: Text(
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      'Gift'),
                  leading: Icon(
                    Icons.card_giftcard,
                    color: Colors.black,
                  ),
                ),
                Divider(
                  thickness: 0.9,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 40,
                ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.copyright
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "All rights to Komal ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          
                        ],
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
