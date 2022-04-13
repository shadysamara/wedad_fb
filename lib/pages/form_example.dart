import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class FormValidation extends StatelessWidget {
  GlobalKey<FormState> formKey = GlobalKey();
  final passwordValidator = MultiValidator([
    RequiredValidator(errorText: 'password is required'),
    MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])',
        errorText: 'passwords must have at least one special character')
  ]);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              validator: (v) {
                if (v?.isEmpty ?? true) {
                  return 'الحقل مطلوب';
                }
              },
            ),
            TextFormField(
              validator: passwordValidator,
            ),
            RaisedButton(onPressed: () {
            bool x =   formKey.currentState!.validate();
            if(x){}
            })
          ],
        ),
      ),
    );
  }
}
