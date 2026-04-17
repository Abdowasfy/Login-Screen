import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab2/Pages/Sign_up.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController createpassword = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
          Image.asset(
          "assets/top.png",
          width: double.infinity,
          fit: BoxFit.contain,
        ),
        SizedBox(height: 30),
        Text(
          'Welcome Back!',
          style: GoogleFonts.inter(
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xff64C3BF),
              fontSize: 30,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Login',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(color: Color(0xff000000), fontSize: 16),
          ),
        ),
        SizedBox(height: 40),
             Image.asset('assets/center.png',width: 350,),
            SizedBox(height: 15),
        
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: email,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffFFFFFF),
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Color(0xffACA7A7)),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff64C3BF), width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff64C3BF), width: 2),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
        
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: createpassword,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffFFFFFF),
                  hintText: 'Password',
                  suffixIcon: Icon(Icons.visibility),
                  hintStyle: TextStyle(color: Color(0xffACA7A7)),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff64C3BF), width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff64C3BF), width: 2),
                  ),
                ),
              ),
            ),
            SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.only(left: 300),
              child: Text('Forget Password?',style: GoogleFonts.inter(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff64C3BF),

                )),),
            ),
            SizedBox(height: 20,),
            Container(
              width: 199.63,
              height: 38.21,

              decoration: BoxDecoration(
                color: Color(0xff64C3BF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Login',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Color(0xffFFFFFF), fontSize: 16),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),


            Row(
              mainAxisAlignment:  MainAxisAlignment.center,
              children: [
                Text('Already have an Account? '),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Text('SignUp',style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: Colors.blue,
                      )
                  ),),
                ),
              ],
            )
            ]
        ),
      ));
  }
}

