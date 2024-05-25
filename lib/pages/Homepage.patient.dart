import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0F1721),
      ),
      home: const HomePagePatient(),
    );
  }
}

class HomePagePatient extends StatefulWidget {
  const HomePagePatient({super.key});

  @override
  _HomePagePatientState createState() => _HomePagePatientState();
}

class _HomePagePatientState extends State<HomePagePatient> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeTab(),
    CalendarTab(),
    MedicationTab(),
    ProfileTab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0F1721),
        elevation: 0,
        title: const Text('Home Page Patient'),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF1E5460),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, color: Colors.white),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.medical_services, color: Colors.white),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/img_4.png'),
                  radius: 20,
                ),
                SizedBox(width: 10),
                Text(
                  'Good morning\nMohammed Wadi',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const SectionHeader(title: 'Your Medical File'),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const MedicalFileCard(imageUrl: 'assets/img_5.png'),
                  const SizedBox(width: 10),
                  const MedicalFileCard(imageUrl: 'assets/img_5.png'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const SectionHeader(title: 'Medication Track'),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  MedicationTrackCard(),
                  const SizedBox(width: 10),
                  MedicationTrackCard(),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const SectionHeader(title: 'Upcoming Appointments'),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  UpcomingAppointmentsCard(),
                  const SizedBox(width: 10),
                  UpcomingAppointmentsCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CalendarTab extends StatelessWidget {
  const CalendarTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Calendar Tab',
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }
}

class MedicationTab extends StatelessWidget {
  const MedicationTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Medication Tab',
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }
}

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Profile Tab',
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class MedicalFileCard extends StatelessWidget {
  final String imageUrl;

  const MedicalFileCard({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1E5460),
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: const [
          SizedBox(height: 70),
          Text(
            'My Medical Records',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Heart Rate\n140 bpm',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                'Steps\n1420',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MedicationTrackCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1E5460),
        borderRadius: BorderRadius.circular(15),
        image: const DecorationImage(
          image: AssetImage('assets/img_6.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              MedicationItem(imageUrl: 'assets/img_6.png', title: 'Panadol', count: '20pcs'),
              MedicationItem(imageUrl: 'assets/img_6.png', title: 'Panadol', count: '20pcs'),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            'Time Until Next Dose',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            '01:34:22',
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const LinearProgressIndicator(
            value: 2 / 3,
            backgroundColor: Colors.white,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}

class MedicationItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String count;

  const MedicationItem({
    required this.imageUrl,
    required this.title,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imageUrl, height: 50, fit: BoxFit.cover),
        const SizedBox(height: 5),
        Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        Text(
          count,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}

class UpcomingAppointmentsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1E5460),
        borderRadius: BorderRadius.circular(15),
        image: const DecorationImage(
          image: AssetImage('assets/img_7.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        children: [
          Image.asset('assets/img_8.png', height: 50, fit: BoxFit.cover),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Wednesday, Jun 23, 2024\n10:00 AM',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 5),
              Text(
                'Reason: Checkup',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: const Color(0xFF1E5460),
      shape: const CircularNotchedRectangle(),
      notchMargin: 8.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(Icons.home, color: Colors.white),
            Icon(Icons.calendar_today, color: Colors.white),
            Icon(Icons.medical_services, color: Colors.white),
            Icon(Icons.person, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
