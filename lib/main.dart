import 'package:flutter/material.dart';
import 'package:flutter_app/pages/select_page.dart';
import 'package:flutter_app/pages/sign_in_doctor.dart';

import 'package:flutter_app/pages/welcome.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'MediTrack',
      home: Scaffold(

        // body: CardDoctor(),
        // body: CardPatient(),
        // body: Checkbox(),
        // body: Checkbox1(),
        // body: CreateNewPassword(),
        // body: DossierMedical(),
        // body: FormulairePatient(),
        // body: Iphone1415ProMax1(),
        // body: PopUp(),
        // body: ResetPasswordEmail(),
        // body: ResetPasswordPhone(),
        // body: ResetPasswordVerifyCode(),
        // body: SelectPage(),
        // body: SignInDoctor(),
        // body: SignInPatient(),
        // body: SignUpDoctor(),
        // body: SignUpPatient(),
        // body: ViewFolderMedical(),
        body: Welcome(),

      ),
    );
  }
}
