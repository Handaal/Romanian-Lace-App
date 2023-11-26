// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, body_might_complete_normally_nullable, use_key_in_widget_constructors, must_be_immutable, unused_local_variable, use_build_context_synchronously, prefer_final_fields, unnecessary_null_comparison

import 'package:app_2/core/utils/size_config.dart';
import 'package:app_2/core/widgets/constants.dart';
import 'package:app_2/features/register/services/auth.dart';
import 'package:app_2/features/register/services/toast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final FirebaseAuthService _auth = FirebaseAuthService();
  // final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool _obscureText = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,

        body: Stack(
          children: [

            Container(
              height: SizeConfig.screenHeight,
              width: SizeConfig.screenWidth,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    firstColor,
                    thirdColor,
                  ]
                ),
              ),

              child: Padding(
                padding: const EdgeInsets.only(top: 60.0, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'مرحبا بك',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                    ),
                    Text(
                      '!سجل دخولك الآن',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 200.0),
            
              child: Container(
                height: SizeConfig.screenHeight,
                width: SizeConfig.screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)
                  ),
                  color: Colors.white,
                ),
                
                child:  Padding(
                  padding: const EdgeInsets.only(left: 18.0,right: 18),
            
                  child: Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                        TextFormField(

                          validator: (value) {
                            if (value!.isEmpty){
                              return "يرجي إدخال البيانات المطلوبة";
                              // showToast(message: "يرجي إدخال البيانات المطلوبة");
                            }
                          },

                          controller: _emailController,
                          textAlign: TextAlign.end,
                          
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey.shade100,
                            prefixIcon: Icon(
                              Icons.mail,
                              color: kMainColor,                           
                            ),
                            hintText: 'البريد الالكتروني',
                            hintStyle: TextStyle(
                              color: kMainColor,
                            ),
                            
                            border: InputBorder.none,
                            
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: kMainColor,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: firstColor,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                              
                        SizedBox(
                          height: SizeConfig.defaultSize! * 2,
                        ),
                              
                        TextFormField(

                          validator: (value) {
                            if (value!.isEmpty){

                              return "يرجي إدخال البيانات المطلوبة";
                              // showToast(message: "يرجي إدخال البيانات المطلوبة");
                            }
                          },

                          controller: _passwordController,
                          textAlign: TextAlign.end,
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey.shade100,
                            hintText: 'كلمة المرور',
                            hintStyle: TextStyle(
                              color: kMainColor,
                            ),
                            border: InputBorder.none,
                            prefixIcon: IconButton(
                              icon: Icon(
                                _obscureText ? Icons.visibility_off : Icons.visibility,
                                color: _obscureText ? kMainColor : firstColor,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: kMainColor,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: firstColor,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                              
                        SizedBox(
                          height: SizeConfig.defaultSize! * 3,
                        ),
                              
                        Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, "/forgetpass");
                            },
                            child: Text(
                              'هل نسيت كلمة المرور؟',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: kMainColor,
                              ),
                            ),
                          ),
                        ),
                              
                        SizedBox(
                          height: SizeConfig.defaultSize! * 7,
                        ),
                              
                        GestureDetector(
                          onTap: () {
                            _signIn();
                          },
                          child: Container(
                            height: SizeConfig.defaultSize! * 6,
                            width: SizeConfig.defaultSize! * 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: const LinearGradient(
                                colors: [
                                  firstColor,
                                  thirdColor,
                                ]
                              ),
                            ),
                                    
                            child: Center(
                              child: Text(
                                'تسجيل الدخول',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                              
                        SizedBox(
                          height: SizeConfig.defaultSize! * 3,
                        ),
                              
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                                  
                            Text(
                              "لا تمتلك حساب؟",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: thirdColor,
                                fontSize: 17,
                              ),
                            ),
                                  
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, "/signup");
                              },
                              child: Text(
                                "إنشاء حساب جديد",
                                style: TextStyle(///done login page
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: kMainColor,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ),
    );
  }

  void _signIn() async {
    
    setState(() {
      showDialog(
        context: context,
        builder: (context) {
          return Center(child: CircularProgressIndicator());
        }
      );
    });

    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signInWithEmailAndPassword(email, password);

    setState(() {
      Navigator.of(context).pop();
    });


    
    if (_emailController.text == ""){
      showToast(message: "يرجي إدخال البريد الإلكتروني");
    } else if (_passwordController.text == ""){
      showToast(message: "يرجي إدخال كلمة المرور");
    } else if (user != null) {
      showToast(message: "تم تسجيل الدخول بنجاح");
      Navigator.pushNamed(context, "/BottomNavBar");
    } else{
      showToast(message: "لقد حدث خطأ");
    }
  }


//   _signInWithGoogle()async{

//     final GoogleSignIn _googleSignIn = GoogleSignIn();

//     try {

//       final GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();

//       if(googleSignInAccount != null ){
//         final GoogleSignInAuthentication googleSignInAuthentication = await
//         googleSignInAccount.authentication;

//         final AuthCredential credential = GoogleAuthProvider.credential(
//           idToken: googleSignInAuthentication.idToken,
//           accessToken: googleSignInAuthentication.accessToken,
//         );

//         await _firebaseAuth.signInWithCredential(credential);
//         Navigator.pushNamed(context, "/home");
//       }

//     }catch(e) {
// showToast(message: "some error occured $e");
//     }


//   }

}