import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab2/Pages/Login.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController firstname = TextEditingController();
    TextEditingController lastname = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController phonenumber = TextEditingController();
    TextEditingController createpassword = TextEditingController();
    TextEditingController coniformpassword = TextEditingController();

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
              'Create Account!',
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
              'Enter your Personal Data',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(color: Color(0xff000000), fontSize: 16),
              ),
            ),
        
            SizedBox(height: 30),
        
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: firstname,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffFFFFFF),
                  hintText: 'First Name',
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
                controller: lastname,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffFFFFFF),
                  hintText: 'Last Name',
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
                controller: phonenumber,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffFFFFFF),
                  hintText: 'Phone Number',
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
                  hintText: 'Create Password',
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
            SizedBox(height: 15),
        
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: coniformpassword,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xffFFFFFF),
                  hintText: 'Coniform Password',
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
                  'Sign Up',
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Text('Login',style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: Colors.blue,
                    )
                  ),),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
