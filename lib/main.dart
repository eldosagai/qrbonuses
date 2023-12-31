import 'package:flutter/material.dart';
import 'package:flutter_qr/QR-screen.dart';
import 'package:flutter_qr/home.dart';
import 'package:flutter_qr/phone-screen.dart';
import 'package:flutter_qr/profile-screen.dart';
import 'package:flutter_qr/restaurants-screen.dart';
import 'package:flutter_qr/sms-screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      initialRoute: '/',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => const NameAuthScreen());
          case '/number-screen':
            return MaterialPageRoute(builder: (context) => const PhoneAuthScreen());
          case '/massage':
            return MaterialPageRoute(builder: (context) => MessageReceivedScreen());
          case '/home-screen':
            return MaterialPageRoute(builder: (context) => const HomePage());
          case '/QR-screen':
            return MaterialPageRoute(builder: (context) => const QRCodeScreen());
          case '/restaurants-screen':
            return MaterialPageRoute(builder: (context) => const RestaurantsScreen());
          case '/profile-screen':
            return MaterialPageRoute(builder: (context) => const ProfileScreen());
        }
        return null;
      },
      theme: ThemeData(
        appBarTheme: 
        const AppBarTheme(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),),
        scaffoldBackgroundColor: Colors.black,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 30, 30, 30),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0), 
            ),
            textStyle: const TextStyle(
              fontSize: 15.0, 
            ),
          ),
        ),
      ),
    );
  }
}

class NameAuthScreen extends StatefulWidget {
  const NameAuthScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PhoneAuthScreenState createState() => _PhoneAuthScreenState();
}

class _PhoneAuthScreenState extends State<NameAuthScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController smsCodeController = TextEditingController();
  String userName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Как вас зовут?',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w400, color: Colors.white),
                ),
              ),


              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Скажите нам, как к вам лучше всего обращаться',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400, color: Colors.white),
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: phoneNumberController,
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                    hintText: 'Введите ваше имя',
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(),
                    fillColor: Color.fromARGB(255, 40, 40, 40), 
                    filled: true, 
                  ),
                  style: const TextStyle(fontSize: 16.0, color: Colors.white),
                  cursorColor: Colors.white,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Пожалуйста, введите имя';
                    }
                    return null;
                  },
                ),
              ),

              Container(
                width: double.infinity,
                height: 80.0,
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PhoneAuthScreen(),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0), 
                    ),
                  ),
                  child: const Text('Продолжить'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
