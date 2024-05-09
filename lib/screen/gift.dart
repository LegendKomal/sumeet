import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';

class gift extends StatefulWidget {
  const gift({Key? key}) : super(key: key);

  @override
  State<gift> createState() => _giftState();
}

class _giftState extends State<gift> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade100,
        title: Center(
          child: Text(
            "GIFT FOR YOU <3",
            style: TextStyle(fontSize: 22),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ScratchCardGrid(),
    );
  }
}

class ScratchCardGrid extends StatelessWidget {
  final List<ScratchCardData> scratchCards = [
    ScratchCardData(
      imagePath: "images/k3.jpeg",
      prize: "You owe me Rs. 50",
      gifPaths: [
        "images/cat1.gif",
      ], 
      caption: "Open and see whats inside" 
    ),//1

    ScratchCardData(
      imagePath: "images/k4.jpeg",
      prize: "Oh no, better luck next time!!",
      gifPaths: [
       "images/cat2.gif",
      ], 
      caption: "Open and see whats inside" 
    ),//2

     ScratchCardData(
      imagePath: "images/k5.jpeg",
      prize: "You are coming home with me!!",
      gifPaths: [
        "images/cat5.gif",
      ],
      caption: "Open and see whats inside" 
    ),//3

    ScratchCardData(
      imagePath: "images/k8.jpeg",
      prize: "You are, supposed to treat me with pizza",
      gifPaths: [
       "images/cat3.gif",
      ],
      caption: "Open and see whats inside" 
    ), //4

    ScratchCardData(
      imagePath: "images/k10.jpeg",
      prize: "Bad luck, maybe next time",
      gifPaths: [
        "images/cat4.gif",
      ],
      caption: "Open and see whats inside" 
    ),//5

    ScratchCardData(
      imagePath: "images/k32.jpeg",
      prize: "I LOVE YOU <3",
      gifPaths: [
       "images/cat7.gif",
      ],
      caption: "Open and see whats inside" 
    ),//6

     ScratchCardData(
      imagePath: "images/k6.jpeg",
      prize: "Cashback of 0 rupees",
      gifPaths: [
        "images/cat9.gif",
      ],
      caption: "Open and see whats inside" 
    ), //7

    ScratchCardData(
      imagePath: "images/k33.jpeg",
      prize: "Ice Cream??",
      gifPaths: [
       "images/cat6.gif",
      ],
      caption: "Open and see whats inside" 
    ),//8

     ScratchCardData(
      imagePath: "images/k13.jpeg",
      prize: "USSS <3",
      gifPaths: [
        "images/cat8.gif",
      ],
      caption: "Open and see whats inside" 
    ),//9

    ScratchCardData(
      imagePath: "images/k12.jpeg",
      prize: "Oh no, you have been catzoned!!",
      gifPaths: [
       "images/cat10.gif",
      ],
      caption: "Open and see whats inside" 
    ),//10
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
      ),
      itemCount: scratchCards.length,
      itemBuilder: (context, index) {
        return ScratchCard(
          imagePath: scratchCards[index].imagePath,
          prize: scratchCards[index].prize,
          gifPaths: scratchCards[index].gifPaths,
        );
      },
    );
  }
}

class ScratchCardData {
  final String imagePath;
  final String prize;
  final List<String> gifPaths;
   final String caption;

  ScratchCardData({
    required this.imagePath,
    required this.prize,
    required this.gifPaths,
    required this.caption,
  });
}

class ScratchCard extends StatefulWidget {
  final String imagePath;
  final String prize;
  final List<String> gifPaths;

  const ScratchCard({
    required this.imagePath,
    required this.prize,
    required this.gifPaths,
  });

  @override
  _ScratchCardState createState() => _ScratchCardState();
}

class _ScratchCardState extends State<ScratchCard> {
  int currentGifIndex = 0;

  @override
  void initState() {
    super.initState();
    _startGifAnimation();
  }

  void _startGifAnimation() {
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        currentGifIndex = (currentGifIndex + 1) % widget.gifPaths.length;
      });
      _startGifAnimation();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scratcher(
        brushSize: 50,
        threshold: 50,
        color: Colors.red,
        image: Image.asset(
          widget.imagePath,
          fit: BoxFit.fill,
        ),
        onChange: (value) => print("Scratch progress: $value%"),
        onThreshold: () => print("Threshold reached, you won!"),
        child: Container(
          height: 200,
          width: 200,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                widget.gifPaths[currentGifIndex],
                fit: BoxFit.contain,
                width: 70,
                height: 70,
              ),
              Column(
                children: [
                  Text(
                    "You won",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    widget.prize,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
