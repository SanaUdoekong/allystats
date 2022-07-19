import 'package:allystats/config/ui_helpers.dart';
import 'package:flutter/material.dart';

import 'package:stacked/stacked.dart';

import 'package:allystats/config/theme/colors.dart';
import '../../../../widgets/dummy_widgets/default_button.dart';
import '../login_viewmodel.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  // final TextEditingController _emailController = TextEditingController();
  // final TextEditingController _passwordController = TextEditingController();

  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      viewModelBuilder: () => LoginViewModel(),
      builder: (context, model, child) {
        return Form(
          child: Column(
            children: [
              // Email
              TextFormField(
                style: Theme.of(context).textTheme.bodyMedium,
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintStyle: Theme.of(context).textTheme.labelMedium,
                  labelStyle: Theme.of(context).textTheme.labelMedium,
                  floatingLabelStyle: Theme.of(context).textTheme.displaySmall,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.grey,
                    ),
                  ),
                  focusColor: AppColors.primaryBlue,
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.primaryBlue,
                    ),
                  ),
                  isDense: true,
                  contentPadding: const EdgeInsets.all(16),
                ),
                cursorColor: AppColors.primaryBlue,
                keyboardType: TextInputType.emailAddress,
                autocorrect: false,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter an email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),

              // Password
              TextFormField(
                style: Theme.of(context).textTheme.bodyMedium,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintStyle: Theme.of(context).textTheme.labelMedium,
                  labelStyle: Theme.of(context).textTheme.labelMedium,
                  floatingLabelStyle: Theme.of(context).textTheme.displaySmall,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.grey,
                    ),
                  ),
                  focusColor: AppColors.primaryBlue,
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.primaryBlue,
                    ),
                  ),
                  isDense: true,
                  contentPadding: const EdgeInsets.all(16),
                  suffixIcon: model.isPasswordVisible
                      ? IconButton(
                          icon: const Icon(Icons.visibility, color: AppColors.primaryBlue,),
                          onPressed: () {
                            model.togglePasswordVisibility();
                          },
                        )
                      : IconButton(
                          icon: const Icon(Icons.visibility_off, color: AppColors.primaryBlue,),
                          onPressed: () {
                            model.togglePasswordVisibility();
                          },
                        ),
                  suffixIconColor: AppColors.primaryBlue,
                ),
                obscureText: !model.isPasswordVisible,
                cursorColor: AppColors.primaryBlue,
                autocorrect: false,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a password';
                  }
                  return null;
                },
              ),
              // Forgot password
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    child: Text(
                      'Forgot password?',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              // Login button
              SizedBox(height: UIHelpers.height(context) * 0.2),
              DefaultButton(
                label: 'Login',
                onPressed: () {},
              ),
              const SizedBox(height: 10),
            ],
          ),
        );
      },
    );
  }
}
