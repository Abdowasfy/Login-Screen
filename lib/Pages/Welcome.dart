import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab2/Pages/Login.dart';
import 'package:lab2/Pages/Sign_up.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Image.asset(
            "assets/top.png",
            width: double.infinity,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 30),
          Text(
            'Welcome!',
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff64C3BF),
                fontSize: 40,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Find the things that you Love!!',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(color: Color(0xff000000), fontSize: 16),
            ),
          ),
          SizedBox(height: 75),

          Image.asset('assets/center.png'),
          SizedBox(height: 30),

          GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (c) => SignUp()));
              },
            child: Container(
              width: 199.63,
              height: 38.21,
            
              decoration: BoxDecoration(
                color: Color(0xff64C3BF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Sign Up',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Color(0xffFFFFFF), fontSize: 16),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 20),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (c) => Login()));
            },
            child: Container(
              width: 199.63,
              height: 38.21,

              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color(0xff64C3BF),
                  width: 2,
                ),
              ),
              child: Center(
                child: Text(
                  'Login',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Color(0xff64C3BF), fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
