import 'package:flutter/material.dart';

import 'package:flutter_app/pages/welcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart'; // Assurez-vous d'avoir importé ce fichier

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
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
