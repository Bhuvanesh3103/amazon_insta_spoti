import 'package:flutter/material.dart';
import 'package:spotify/Botnavi.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formkey=GlobalKey<FormState>();
  bool visibility = false;
  TextEditingController _name=TextEditingController();
  TextEditingController _email=TextEditingController();
  TextEditingController _pass=TextEditingController();

  void _validateForm() {
    setState(() {
      visibility = _name.text.isNotEmpty &&
          _email.text.isNotEmpty && _pass.text.isNotEmpty &&
          _formkey.currentState?.validate() == true;
    });
  }
  int _select=0;
  void _onItemTapped(int index) {
    setState(() {
      _select = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          leading: Icon(Icons.menu),
          title: Center(child: Text('Form Validate')),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon((Icons.search)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.not_listed_location_outlined),
            )
          ],
        ),
        body: Column(
          children: [
            Form(
              key: _formkey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: _name,
                      decoration: InputDecoration(
                        labelText: 'Username',
                        prefixIcon: Icon(Icons.people),
                        border: OutlineInputBorder(),
                      ),
                      validator: (value){
                        if(value==null || value.isEmpty){
                          return 'Please enter the Username';
                        }
                        if (value.length < 4) {
                          return 'Name must be at least 4 characters long';
                        }
                        if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                          return 'Name must contain only letters';
                        }
                      },
                      onChanged: (_){
                        _validateForm();
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: TextFormField(
                      controller: _email,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.email_outlined),
                        border: OutlineInputBorder(),
                      ),
                      validator: (value){
                        if(value==null || value.isEmpty){
                          return 'Please enter the Email';
                        }
                      },
                      onChanged: (_) => _validateForm(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: _pass,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.lock_outline_rounded),
                        border: OutlineInputBorder(),
                      ),
                      validator: (value){
                        if(value==null || value.isEmpty){
                          return 'Please enter the Password';
                        }
                      },
                      onChanged: (_) => _validateForm(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Visibility(
                      visible: visibility,
                      child: ElevatedButton(onPressed: (){
                        if(_formkey.currentState!.validate()){}
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Botnavi()));
                      }, child: Text('Login'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
