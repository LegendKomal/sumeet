import 'package:flutter/material.dart';

class us extends StatefulWidget {
  const us({super.key});

  @override
  State<us> createState() => _usState();
}

class _usState extends State<us> {
   final TextEditingController _textFieldController = TextEditingController();
  List<String> enteredTexts = [];

  @override
  void dispose() {
    _textFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade100,
        title: Center(
          child: Text(
            "US <3",
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "The First Date",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/k18.jpeg',
                  height: 250,
                  width: 250,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
                Row(
                  children: [
                    Text(
                        "The first date of our life which was on "),
                          Text("'20/10/20' ", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                  ],
                ),
                 Text("the first day when i actually left lectures for someone, that was actually one of the best day, the movie, the weather, the places everything was just perfect. I stometimes still think of that day, it was the most special day for me."),
           SizedBox(height: 20,),
            Container(
              height: 40,
              width: 300,
              child: TextField(
                controller: _textFieldController,
                decoration: InputDecoration(
                  hintText: 'Type your thought here...',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  enteredTexts.add(_textFieldController.text);
                  _textFieldController.clear();
                });
              },
              child: Text('Add'),
            ),
            SizedBox(height: 20),
            Text(
              'Your Entered Texts:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
             SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              itemCount: enteredTexts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(enteredTexts[index]),
                );
              },
            ),
            
             Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "WOH DIN JAB TUMHARI WAJSE 500 KA FATKA PADA THA",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    'images/k17.jpeg',
                    height: 250,
                    width: 250,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
                    Text(
                        "Yaad hai woh din jis din tumhari wajse 500 ka fatka pada tha CST me, Bandra ka bol ke CST chale gaye,  mujhe aaj tak nahi samjha ki tumhare dimag me chalta kya hai or na hi kabhi samjh aayega, but jo bhi hai end me tumne rehena mere sath hi hai"),
            
           SizedBox(height: 20,),
            Container(
              height: 40,
              width: 300,
              child: TextField(
                controller: _textFieldController,
                decoration: InputDecoration(
                  hintText: 'Type your thought here...',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  enteredTexts.add(_textFieldController.text);
                  _textFieldController.clear();
                });
              },
              child: Text('Add'),
            ),
            SizedBox(height: 20),
            Text(
              'Your Entered Texts:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
             SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              itemCount: enteredTexts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(enteredTexts[index]),
                );
              },
            ),
            
            
             Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "THE SECOND DATE",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    'images/k9.jpeg',
                    height: 250,
                    width: 250,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
                    Text(
                        "Issi date ke baad se humne date pe jana band kiya ig, first time jab gaye the tab october tha or jab next time gaye tab november tha but woh movie thi badi khatarnak, lekin tumhare sath woh bhi achhi lag rahi thi <3"),
            
           SizedBox(height: 20,),
            Container(
              height: 40,
              width: 300,
              child: TextField(
                controller: _textFieldController,
                decoration: InputDecoration(
                  hintText: 'Type your thought here...',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  enteredTexts.add(_textFieldController.text);
                  _textFieldController.clear();
                });
              },
              child: Text('Add'),
            ),
            SizedBox(height: 20),
            Text(
              'Your Entered Texts:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
             SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              itemCount: enteredTexts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(enteredTexts[index]),
                );
              },
            ),


             Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "ONE SIDED??",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    'images/k30.jpeg',
                    height: 250,
                    width: 250,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
                    Text(
                        "Pata start me mujhe laga ki tum mujhe kabhi haa nahi bologe, issi wajse mene jab strta me propose ki thi tab risk liya tha yeh sochke ki haa bola toh thik warna dekha jayega, but tumne 3 baar propose karne per bhi mana kar diya, tum sach me kitne bure ho na"),
            
           SizedBox(height: 20,),
            Container(
              height: 40,
              width: 300,
              child: TextField(
                controller: _textFieldController,
                decoration: InputDecoration(
                  hintText: 'Type your thought here...',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  enteredTexts.add(_textFieldController.text);
                  _textFieldController.clear();
                });
              },
              child: Text('Add'),
            ),
            SizedBox(height: 20),
            Text(
              'Your Entered Texts:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
             SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              itemCount: enteredTexts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(enteredTexts[index]),
                );
              },
            ),
            
          ],
        ),
      ),
    );
  }
}
