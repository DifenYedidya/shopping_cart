import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  static const routeName = '/login';
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 24.0,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 32),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 32,
                      ),
                    ),
                  ),
                ],
              ),
              TextField(
                // controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  // controller.setEmail(value);
                },
              ),
              const SizedBox(height: 24),
              Obx(
                () => TextField(
                  controller: passwordController,
                  obscureText: controller.togglePassword.value,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                        onPressed: () {
                          controller.setTogglePassword();
                        },
                        icon: Icon(
                          controller.togglePassword.value
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                      )),
                  onChanged: (value) {
                    controller.setPassword(value);
                  },
                ),
              ),
              const SizedBox(height: 24),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: controller.roles.asMap().entries.map((entry) {
              //     return Padding(
              //       padding: const EdgeInsets.symmetric(horizontal: 4.0),
              //       child: Obx(
              //         () => ChoiceChip(
              //           label: Text(
              //             '${entry.value}',
              //             style: TextStyle(
              //               color: controller.role.value == entry.key
              //                   ? Colors.white
              //                   : Theme.of(context).colorScheme.background,
              //             ),
              //           ),
              //           selected: controller.role.value == entry.key,
              //           onSelected: (bool selected) {
              //             controller.setRole(selected ? entry.key : 0);
              //           },
              //           selectedColor: Theme.of(context).primaryColor,
              //         ),
              //       ),
              //     );
              //   }).toList(),
              // ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  // controller.loginHandler();
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
