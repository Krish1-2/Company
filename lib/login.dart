import 'package:flutter/material.dart';
import 'package:company/auth.dart';
import 'package:http/http.dart' as http;


class Login extends StatefulWidget {
  const Login({
    Key? key
  }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // late String password;
  // late String username;
  bool _passwordVisible=false;

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return  Scaffold(
      backgroundColor:Color.fromARGB(255, 92, 70, 156),
      body: SafeArea(
        child :ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          scrollDirection: Axis.vertical,
          children:<Widget>[
           Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:<Widget>[
                const Text('Login',style: TextStyle(
                    fontFamily: 'NotoSerif',
                    fontSize: 40,
                    fontWeight: FontWeight.bold
                ),),
                SizedBox(height:MediaQuery.of(context).size.height*0.1),
                SizedBox(
                  width:MediaQuery.of(context).size.width*0.9,
                  height: 70,
                  child:TextField(
                    controller: usernameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      filled:true,
                      fillColor: Color.fromARGB(255, 245, 245, 245),
                      hintText: 'Enter Username',
                    ),
                  ),),
                SizedBox(height:MediaQuery.of(context).size.height*0.02),
                SizedBox(
                  width:MediaQuery.of(context).size.width*0.9,
                  height: 70,
                  child:TextField(
                    controller: passwordController,
                    obscureText: !_passwordVisible,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: 'Password',
                      fillColor: Color.fromARGB(255, 245, 245, 245),
                      suffixIcon: IconButton(
                        icon: Icon(
                          // Based on passwordVisible state choose the icon
                          _passwordVisible ? Icons.visibility : Icons.visibility_off,
                          color: Theme.of(context).primaryColorDark,
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordVisible =! _passwordVisible;
                          });
                        },
                      ),
                      filled: true,
                    ),
                  ),),
                SizedBox(height:MediaQuery.of(context).size.height*0.04,),
                SizedBox(
                  width:MediaQuery.of(context).size.width*0.9,
                  height: 60,
                    child:TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 12, 19, 79),
                          elevation: 5,
                          side:const BorderSide(
                              width: 2,
                            color: Colors.white
                          ),
                          shape:  RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          )
                      ),
                      onPressed:(){
                        String username=usernameController.text;
                        String password=passwordController.text;
                        print(username);
                        _login(username,password);
                        // Navigator.pushNamed(context, '/shop');
                      },
                      child:Text('Sign In',style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 25,
                            fontFamily: 'Roboto',
                            color: Colors.white
                        ),),),
                    ),
                SizedBox(height:MediaQuery.of(context).size.height*0.052),
                const Text('Or Continue With',style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  color: Colors.white,
                ),),
                SizedBox(height:MediaQuery.of(context).size.height*0.025),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget>[
                  IconButton(onPressed: (){},   icon: Icon(Icons.g_mobiledata_outlined),iconSize: 40,color:Colors.white,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.facebook_rounded),iconSize: 40,color:Colors.white,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.apple_rounded),iconSize: 40,color:Colors.white,),
                  ],
                ),
                SizedBox(height:MediaQuery.of(context).size.height*0.02,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget>[
                    const Text('Not a member?', style: TextStyle(fontFamily:'Inter',fontSize: 13,color: Colors.black),),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor:Color.fromARGB(255, 92, 70, 156),
                      ),
                        onPressed:(){},
                        child:const Text("SIGN UP",style: TextStyle(
                          color: Color.fromARGB(255, 135, 161, 250)
                        ),))
                  ],
                ),
                ],
            ),
          ],
    )

      ),
      );
  }

  Future<void> _login(String username, String password) async {
    try {
      // Make an HTTP POST request to your server endpoint
      final response = await http.post(
        Uri.parse('http://10.0.2.2:8000'), // Replace with your server endpoint
        body: {
          'username': username,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        // Successful login
        // Handle the response from the server as needed
        print(response);
        print('Logged in successfully');
        Navigator.pushNamed(context, '/shop');
      } else {
        // Login failed
        // Handle the response from the server as needed
        print('Login failed');
      }
    } catch (e) {
      // Handle any exceptions or errors that occur during the request
      print('Error: $e');
    }
  }


}
