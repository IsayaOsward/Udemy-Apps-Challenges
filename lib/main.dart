import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main()=>runApp(
  const MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  )
);
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 55.0,
              backgroundImage: AssetImage("images/profiles.jpg"),
            ),
            const SizedBox(height: 10.0,),
            Text("Isaya Osward",
            style: GoogleFonts.pacifico(
              fontSize: 30,
              foreground: Paint()..color= Colors.white
            ),),
            SizedBox(height: 10.0,),
            Text("FLUTTER DEVELOPER",
            style: GoogleFonts.roboto(
              foreground: Paint()..color= Colors.teal.shade100,
              fontSize: 20
            ),),
            SizedBox(height: 20.0,
            width: 170.0,
            child: Divider(
              color: Colors.teal.shade100,
            ),),
            const Card(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 7.0, horizontal: 10.0),
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.teal,),
                  title: Text("+255 755 957 514"),
                ),
              ),
            ),
            const SizedBox(height: 10.0,),
            const Card(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 7.0),
                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.teal,),
                  title: Text("ionthefirst97@gmail.com"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
