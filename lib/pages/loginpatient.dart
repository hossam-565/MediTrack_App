import 'package:flutter/material.dart';

void main() {
  runApp(const MedicalFormApp());
}

class MedicalFormApp extends StatelessWidget {
  const MedicalFormApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0F1721),
      ),
      home: const MedicalRecordForm(),
    );
  }
}

class MedicalRecordForm extends StatelessWidget {
  const MedicalRecordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0F1721),
        elevation: 0,
        title: const Text('Medical Record Creation'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Center(
            child: Text(
              'Medical Record Creation',
              style: TextStyle(
                color: Color(0xFF00E4F3),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Please fill out this form to create your personal medical record. This initial information will help us better manage your healthcare and provide you with tailored medical follow-up.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontStyle: FontStyle.italic,
              fontFamily: 'Inria Sans',
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(height: 20),
          const SectionHeader(title: 'Basic Information'),
          const SizedBox(height: 10),
          Center(
            child: Column(
              children: [
                Stack(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/img_3.png'), // Remplacez par le chemin de votre image locale
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.camera_alt, color: Colors.black, size: 20),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  'Profile Photo',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          _buildTextField(label: 'First Name', hint: 'Enter your first name'),
          const SizedBox(height: 10),
          _buildTextField(label: 'Last Name', hint: 'Enter your last name'),
          const SizedBox(height: 10),
          _buildTextField(label: 'Date of Birth', hint: 'MM/DD/YYYY', suffixIcon: Icons.calendar_today),
          const SizedBox(height: 10),
          _buildTextField(label: 'Gender', hint: 'Select your gender'),
          const SizedBox(height: 10),
          _buildTextField(label: 'Phone Number', hint: 'ex: 06455544570'),
          const SizedBox(height: 10),
          _buildTextField(label: 'National ID Card Number', hint: 'Enter your national ID card number (e.g., "AK345678")'),
          const SizedBox(height: 20),
          const SectionHeader(title: 'Address Information'),
          const SizedBox(height: 10),
          _buildTextField(label: 'Street Address', hint: 'Enter your street address (e.g., "123 Rue Principale")'),
          const SizedBox(height: 10),
          _buildTextField(label: 'City', hint: 'Enter your city (e.g., "Casablanca")'),
          const SizedBox(height: 10),
          _buildTextField(label: 'State', hint: 'Enter your state (e.g., "Grand Casablanca")'),
          const SizedBox(height: 10),
          _buildTextField(label: 'ZIP Code', hint: 'Enter your ZIP code (e.g., "20000")'),
          const SizedBox(height: 20),
          const SectionHeader(title: 'Medical Information'),
          const SizedBox(height: 10),
          _buildTextField(label: 'Chronic Diseases', hint: 'e.g., "Diabetes, Hypertension"'),
          const SizedBox(height: 10),
          _buildTextField(label: 'Allergies', hint: 'e.g., "Peanuts, Penicillin"'),
          const SizedBox(height: 10),
          _buildTextField(label: 'Blood Type', hint: 'Enter blood type (e.g., "O+")'),
          const SizedBox(height: 10),
          _buildTextField(label: 'Rh Factor', hint: 'Enter Rh factor (e.g., "Positive")'),
          const SizedBox(height: 10),
          _buildTextField(label: 'Organ Donor', hint: 'Yes or No'),
          const SizedBox(height: 20),
          const SectionHeader(title: 'Emergency Contact'),
          const SizedBox(height: 10),
          _buildTextField(label: 'Full Name', hint: 'Enter full name (e.g., "Fatima Ben Ali")'),
          const SizedBox(height: 10),
          _buildTextField(label: 'Relationship', hint: 'e.g., "Spouse"'),
          const SizedBox(height: 10),
          _buildTextField(label: 'Phone Number', hint: 'e.g., 0612345678'),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Handle form submission
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
                backgroundColor: const Color(0xFF153936),
              ),
              child: const Text('Create', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField({required String label, required String hint, IconData? suffixIcon}) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        hintStyle: const TextStyle(color: Color(0xFFAAA8A8)),
        labelStyle: const TextStyle(color: Colors.white),
        filled: true,
        fillColor: const Color(0xFF1E5460),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: Color(0xFFCBCBCA)),
        ),
        suffixIcon: suffixIcon != null ? Icon(suffixIcon, color: Colors.white) : null,
      ),
      style: const TextStyle(color: Colors.white),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFF06D2FF), Color(0xFF1E5460)],
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
