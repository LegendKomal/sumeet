import 'package:flutter/material.dart';

class justyou extends StatefulWidget {
  const justyou({super.key});

  @override
  State<justyou> createState() => _JourneyState();
}

class _JourneyState extends State<justyou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.blue.shade100,
        title: Center(
          child: Text(
            "JUST YOU!!",
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
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Image.asset(
                    'images/k19.jpeg',
                    height: 350,
                    width: 350,
                  ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Center(child: Text("16-10-22 <3", 
            style: TextStyle(
            fontSize: 24,
            )
            ,)
            ),
            SizedBox(
              height: 20,
            ),
          Text("Basically ab hume 1 and half year se jada time ho chuka hai or mujhe yahi chahiye ki  hum aage bhi ase sath me rahe, lekin ager tum saara focus kaam pe hi dene wale ho toh abhi bata do kyu ki tum ab mere pe dhayan bhi nahi dete matlb tum ko samjh raha hai ki humare bich me kitna distance ho gaya hai? Asehi karte rahe na toh kisi din block kar ke gayab ho jaungi tab sochte rehena ki asa kyu kiya, but yaar sumeet me sach me iss time mazak nahi kar rahi tumne sach me mere pe dhayan dena ek dum hi chor diya hai, nahi matlb me eke choti si bachhi hu mere pe dhayan tum nahi doge toh or kon dega??? Samjh rahe ho? Toh ab se tumhare liye achha hoga ager tum mere pe wapis dhayan chalu kar do warna soch lena. Tumhari harkate dekh rahe tumhara paragraph hi daat se shuru ho raha."),
          SizedBox(
            height: 20,
            ),
          Text("Yeh sab ek taraf but tum sach me mere liye matter karte ho. me kitna bhi jagdha karu ya breakup ka bolu end me humesha tum hi ho jiske pass mene jana hai. tabh woh kya khau puchna ho ya kuch or, per abhi tak tumne jitna handle kiya hai mujhe utna shayad hi kisine kiya hoha mummy papa baad and uske liye thank youuu, haa pata hai me kabhi kabhi bohot pareshan karti hu lekin ager tum ko pareshan nahi karungi toh aur kisse karungi haina, toh ab jab mene itna bada app bana liya tumhare liye, toh ab me ek letter toh expect kar sakhti hu? Matlb iss saal milega ya nahi? Tumne bola birthday pe dunga birthday pe bhi nahi diya but thik me tumhe ab baar baar nahi bolungi jab tumhara maan ho tab de dena. Aur ab bas aaj ke liye itna hi ab mujhe padhna bhi hai. Last but not the least"),
          SizedBox(
            height: 20,
            ),
          Text("I LOVE YOU <3", 
          style: 
          TextStyle(
            color: Colors.red,
          ),
          )
          ],
        ),
      ),
    );
  }
}