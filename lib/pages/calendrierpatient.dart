import 'package:flutter/material.dart';

void main() {
  runApp(const FigmaToCodeApp());
}

class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: MedicalCalendarPage(),
    );
  }
}

class MedicalCalendarPage extends StatefulWidget {
  @override
  _MedicalCalendarPageState createState() => _MedicalCalendarPageState();
}

class _MedicalCalendarPageState extends State<MedicalCalendarPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  void _onBackPressed() {
    print("Back button pressed");
  }

  void _onProfilePressed() {
    print("Profile button pressed");
  }

  void _onCancelPressed() {
    print("Cancel button pressed");
  }

  void _onReschedulePressed() {
    print("Reschedule button pressed");
  }

  void _onSchedulePressed() {
    print("Schedule Appointment button pressed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: _onBackPressed,
                    child: Icon(Icons.arrow_back, color: Colors.white),
                  ),
                  Text(
                    'medical calendar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  GestureDetector(
                    onTap: _onProfilePressed,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/R.jpg'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xFF264653),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TabBar(
                controller: _tabController,
                indicator: BoxDecoration(
                  color: Color(0xFF2A9D8F),
                  borderRadius: BorderRadius.circular(20),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white70,
                tabs: [
                  Tab(text: 'Upcoming'),
                  Tab(text: 'Completed'),
                  Tab(text: 'Canceled'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  buildUpcomingTab(),
                  Center(child: Text('No completed appointments', style: TextStyle(color: Colors.white))),
                  Center(child: Text('No canceled appointments', style: TextStyle(color: Colors.white))),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF2A9D8F)),
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 50, vertical: 15)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                ),
                onPressed: _onSchedulePressed,
                child: Text(
                  'Schedule Appointment',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            BottomNavigationBar(
              backgroundColor: Colors.black,
              selectedItemColor: Color(0xFF2A9D8F),
              unselectedItemColor: Colors.grey,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildUpcomingTab() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildDateColumn('Mon', '21', false),
                  buildDateColumn('Tue', '22', false),
                  buildDateColumn('Wed', '23', true),
                  buildDateColumn('Thu', '24', false),
                  buildDateColumn('Fri', '25', false),
                  buildDateColumn('Sat', '26', false),
                  buildDateColumn('Sun', '27', false),
                ],
              ),
            ),
            SizedBox(height: 20),
            Card(
              color: Color(0xFF264653),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/profile.png'),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dr. Rachid El Idrissi',
                              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Cardiologist',
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '21/06/2024',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '10:30 AM',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Confirmed',
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Color(0xFFE76F51)),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                          ),
                          onPressed: _onCancelPressed,
                          child: Text('Cancel', style: TextStyle(color: Colors.white)),
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Color(0xFF2A9D8F)),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                          ),
                          onPressed: _onReschedulePressed,
                          child: Text('Reschedule', style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDateColumn(String day, String date, bool isSelected) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: isSelected ? Color(0xFF2A9D8F) : Color(0xFF264653),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            day,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.white70,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          SizedBox(height: 5),
          Text(
            date,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.white70,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
