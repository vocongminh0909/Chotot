import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chợ Tốt',style: TextStyle( fontSize: 30.0,  // Đặt kích thước chữ là 30.0
        ),
        ),
        backgroundColor: Colors.orange,
        iconTheme: const IconThemeData(
          color: Colors.black, // Đặt màu cho biểu tượng (icon) là màu đen
        ),
        actions: const [
        ],
        centerTitle: true, // Đặt giữa cả chiều ngang và chiều dọc
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {// Xử lý sự kiện khi nhấn nút back ở đây
            print('Nhấn nút back');
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/logo.jpg'),
              SizedBox(height: 16.0),
              const Align(
                alignment: Alignment.centerLeft, // Căn trái
                child: Text('Đăng nhập',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold // Thêm fontWeight để in đậm
                ),
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(), // Đây là phần quan trọng để có viền cho TextFormField.
                  labelText: 'Tên đăng nhập',
                ),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(), // Đây là phần quan trọng để có viền cho TextFormField.
                  labelText: 'Mật khẩu',
                ),
              ),
              const SizedBox(height: 16.0, width: 50.0),
              Text('Quên mật khẩu?',
                  style:TextStyle( fontSize: 15.0,color: Colors.blue)
              ),
              SizedBox(height: 16.0),
              Row(children: [
                ElevatedButton(
                  onPressed: () {// Xử lý đăng nhập ở đây
                    String username = _usernameController.text;
                    String password = _passwordController.text; // Thực hiện xác thực và xử lý đăng nhập
                    print('Đăng nhập với tên đăng nhập: $username và mật khẩu: $password');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange, // Đặt màu nền cho nút
                    minimumSize: Size(150, 40), // Đặt chiều dài và chiều rộng
                  ),
                  child: const Text('Đăng nhập'),
                ),
                const SizedBox(height: 16.0, width: 50.0),
                ElevatedButton(
                  onPressed: () {

                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange, // Đặt màu nền cho nút
                    minimumSize: Size(150,40), // Đặt chiều dài và chiều rộng
                  ),
                  child: const Text('Đăng ký'),
                ),
              ],
              ),
              const SizedBox(height: 16.0),
              Text('Quy chế hoạt động sản-Chính sách bảo mật-Liên hệ hỗ trợ',style: TextStyle(fontSize: 12.0)),
              const SizedBox(height: 20.0),
              Text('Được phát hành bởi',style: TextStyle(fontSize: 12.0)),
              const SizedBox(height: 10.0),
              Image.asset('assets/chotot.jpg',width: 100.0),
            ],
          ),
        ),
      ),
    );
  }
}
