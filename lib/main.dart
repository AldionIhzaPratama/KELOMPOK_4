// main.dart
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_if22a/config/asset.dart';
import 'package:project_if22a/screen/admin/dashboard_admin.dart';
import 'package:project_if22a/screen/admin/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: Asset.colorPrimaryDark,
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(), // Ganti halaman pertama menjadi LoginPage
    );
  }
}

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login(BuildContext context) {
    String username = usernameController.text;
    String password = passwordController.text;

    if (username == 'admin' && password == 'admin') {
      // Jika username dan password adalah 'admin', arahkan ke DashboardAdmin
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DashboardAdmin()),
      );
    } else {
      // Jika tidak, tampilkan pesan kesalahan atau lakukan aksi lainnya
      // Misalnya menampilkan snackbar atau dialog
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Username atau password salah'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shoes Store',
          style: TextStyle(
            fontWeight: FontWeight.bold, // Membuat teks tebal
            fontSize: 30, // Ukuran teks
          ),
        ),
      ),
      backgroundColor: Colors.white, // Warna latar belakang halaman

      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              '../asset/images/logo1.jpeg',
              height: 250,
              width: 250, // Path gambar logo login Anda
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  login(context);
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontWeight: FontWeight.bold, // Membuat teks tebal
                    fontSize: 20,
                    color: Colors.white, // Ukuran teks
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: Colors.blue, // Warna tombol login
                ),
              ),
            ),
            SizedBox(height: 10.0),
            TextButton(
              onPressed: () {
                // Implement forgot password functionality here
              },
              child: Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.blue), // Warna teks link
              ),
            ),
          ],
        ),
      ),
    );
  }
}
