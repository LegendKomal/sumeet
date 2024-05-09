import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sumeet/screen/drawer.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<dashboard> {
  late PageController _pageController;
  int _currentPageIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _startAutoScroll();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _stopAutoScroll();
    super.dispose();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (_currentPageIndex < 4) {
        _currentPageIndex++;
      } else {
        _currentPageIndex = 0;
      }
      _pageController.animateToPage(
        _currentPageIndex,
        duration: Duration(milliseconds: 1000),
        curve: Curves.easeInOut,
      );
    });
  }

  void _stopAutoScroll() {
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Some Memory"),
      ),
      drawer: drawer(),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: 8, // Adjusted the item count
              itemBuilder: (context, index) {
                List<String> imagePaths = [
                  'images/k18.jpeg',
                  'images/k1.jpeg',
                  'images/k23.jpeg',
                  'images/k15.jpeg',
                  'images/k22.jpeg',
                  'images/k25.jpeg',
                  'images/k24.jpeg',
                  'images/k28.jpeg'
                ];
                return Container(
                  height: MediaQuery.of(context).size.height * 0.5, // Set a smaller height
                  width: MediaQuery.of(context).size.width * 0.1, // Set a smaller width
                  child: Image.asset(
                    imagePaths[index],
                    fit: BoxFit.cover,
                  ),
                );
              },
              onPageChanged: (index) {
                setState(() {
                  _currentPageIndex = index;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
