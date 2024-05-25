import 'package:flutter/material.dart';

void main() {
  runApp(const FigmaToCodeApp());
}

class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: SingleChildScrollView(
          child: ChatPatient(),
        ),
      ),
    );
  }
}

class ChatPatient extends StatefulWidget {
  @override
  _ChatPatientState createState() => _ChatPatientState();
}

class _ChatPatientState extends State<ChatPatient> {
  TextEditingController phoneController = TextEditingController(text: '(+212) 6 1234 5689');
  TextEditingController genderController = TextEditingController(text: 'Male');
  TextEditingController birthdayController = TextEditingController(text: '12/01/1997');
  TextEditingController emailController = TextEditingController(text: 'mohammed.wadi@mail.com');
  TextEditingController idController = TextEditingController(text: 'A12345678');
  TextEditingController addressController = TextEditingController(text: '123 Main Street');
  TextEditingController cityController = TextEditingController(text: 'Casablanca');
  TextEditingController stateController = TextEditingController(text: 'Grand Casablanca');
  TextEditingController zipController = TextEditingController(text: '70060');
  TextEditingController diseasesController = TextEditingController(text: 'Diabetes, Hypertension');
  TextEditingController allergiesController = TextEditingController(text: 'Peanuts, Penicillin');
  TextEditingController bloodTypeController = TextEditingController(text: 'O+');
  TextEditingController rhFactorController = TextEditingController(text: 'Positive');
  TextEditingController donorController = TextEditingController(text: 'Yes');
  TextEditingController emergencyNameController = TextEditingController(text: 'Fatima Ben Ali');
  TextEditingController relationshipController = TextEditingController(text: 'Spouse');
  TextEditingController emergencyPhoneController = TextEditingController(text: '0612345678');

  void _onBackPressed() {
    // Add your back button functionality here
    print("Back button pressed");
  }

  void _onEditPressed() {
    // Add your edit button functionality here
    print("Edit button pressed");
  }

  void _onSettingsPressed() {
    // Add your settings button functionality here
    print("Settings button pressed");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 430,
      padding: const EdgeInsets.all(10),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [Color(0x331F4F49), Colors.black],
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 20), // For padding at the top
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: _onBackPressed,
                child: Icon(Icons.arrow_back, color: Colors.white),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Color(0x9E0D09DD),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'My Medical Registre',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'ABeeZee',
                    fontWeight: FontWeight.w400,
                    height: 0.05,
                  ),
                ),
              ),
              GestureDetector(
                onTap: _onSettingsPressed,
                child: Icon(Icons.settings, color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 20), // For padding below the title
          Container(
            width: 405,
            padding: const EdgeInsets.only(top: 20, left: 11, right: 9),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Colors.white.withOpacity(0.14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            child: Column(
              children: [
                Container(
                  width: 389,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 390,
                        height: 224,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 210,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 160,
                                    height: 160,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 13,
                                          top: 41,
                                          child: Container(
                                            width: 124,
                                            height: 129,
                                            decoration: ShapeDecoration(
                                              image: DecorationImage(
                                                image: AssetImage("assets/prof.jpg"),
                                                fit: BoxFit.cover,
                                              ),
                                              shape: OvalBorder(
                                                side: BorderSide(
                                                  width: 2,
                                                  strokeAlign: BorderSide.strokeAlignOutside,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 110,
                                          top: 41,
                                          child: GestureDetector(
                                            onTap: _onEditPressed,
                                            child: Container(
                                              width: 36,
                                              height: 36,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: ShapeDecoration(
                                                color: Color(0xFF40C4FF),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(20),
                                                ),
                                              ),
                                              child: Icon(Icons.edit, color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 24),
                                  Container(
                                    width: double.infinity,
                                    height: 26,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '   Mohammed Wadi',
                                          style: TextStyle(
                                            color: Color(0xFFF0F0F3),
                                            fontSize: 22,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 7),
                      buildDetailRow('Phone : ', phoneController),
                      const SizedBox(height: 16),
                      buildDetailRow('Gender : ', genderController),
                      const SizedBox(height: 16),
                      buildDetailRow('Birthday : ', birthdayController),
                      const SizedBox(height: 16),
                      buildDetailRow('Email : ', emailController),
                      const SizedBox(height: 16),
                      buildDetailRow('National ID Card Number : ', idController),
                      const SizedBox(height: 16),
                      buildDetailRow('Street Address : ', addressController),
                      const SizedBox(height: 16),
                      buildDetailRow('City: ', cityController),
                      const SizedBox(height: 16),
                      buildDetailRow('State: ', stateController),
                      const SizedBox(height: 16),
                      buildDetailRow('ZIP Code : ', zipController),
                      const SizedBox(height: 16),
                      buildDetailRow('Chronic Diseases :', diseasesController),
                      const SizedBox(height: 16),
                      buildDetailRow('Allergies : ', allergiesController),
                      const SizedBox(height: 16),
                      buildDetailRow('Blood Type : ', bloodTypeController),
                      const SizedBox(height: 16),
                      buildDetailRow('Rh Factor : ', rhFactorController),
                      const SizedBox(height: 16),
                      buildDetailRow('Organ Donor : ', donorController),
                      const SizedBox(height: 16),
                      Container(
                        width: 379,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: SizedBox(
                                child: Text(
                                  'Emergency Contact',
                                  style: TextStyle(
                                    color: Color(0xFFF0F0F3),
                                    fontSize: 20,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      buildDetailRow('Full Name :', emergencyNameController),
                      const SizedBox(height: 16),
                      buildDetailRow('Relationship :', relationshipController),
                      const SizedBox(height: 16),
                      buildDetailRow('Phone Number :', emergencyPhoneController),
                      const SizedBox(height: 16),
                      Container(
                        width: 383,
                        height: 56,
                        padding: const EdgeInsets.symmetric(horizontal: 22),
                        decoration: ShapeDecoration(
                          color: Color(0x2100FFE0),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        ),
                        child: GestureDetector(
                          onTap: _onEditPressed,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 24,
                                height: 24,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(),
                                child: Icon(Icons.edit, color: Colors.white),
                              ),
                              Text(
                                'Edit ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  width: 405,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(25)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Emergency Contact',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      buildDetailRow('Full Name :', emergencyNameController),
                      const SizedBox(height: 8),
                      buildDetailRow('Relationship :', relationshipController),
                      const SizedBox(height: 8),
                      buildDetailRow('Phone Number :', emergencyPhoneController),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDetailRow(String label, TextEditingController controller) {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            label,
            style: TextStyle(
              color: Color(0xFFD0D1DB),
              fontSize: 18,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              controller: controller,
              style: TextStyle(
                color: Color(0xFFF0F0F3),
                fontSize: 18,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(width: 8),
          GestureDetector(
            onTap: _onEditPressed,
            child: Container(
              width: 20,
              height: 20,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(),
              child: Icon(Icons.edit, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
