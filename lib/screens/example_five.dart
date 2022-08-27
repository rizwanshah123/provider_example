import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider/example_five_provider.dart';

class ExampleFive extends StatelessWidget {
  const ExampleFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('object');
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();

    var state = Provider.of<UserAuthProvider>(context,listen: false);
    return Scaffold(
        appBar: AppBar(title: const Text('Login')),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                      hintText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: passController,
                  decoration: InputDecoration(
                      hintText: 'password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12))),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
               InkWell(
                  onTap: () {
                    state.setLoading(true);
                    print(state.isLoading.toString());
                    state.loginUser(emailController.text.toString(),
                        passController.text.toString());
                  },
                  child: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Consumer<UserAuthProvider>(
                  builder: (BuildContext context, value, Widget? child) {
                return Center(
                              child:state.isLoading
                          ? CircularProgressIndicator(color: Colors.white)
                          : Text(
                              'Login',
                              style: TextStyle(color: Colors.white),
                            )
                            );
                  }
                            ),
                ),
               )
            ]));
  }
}
