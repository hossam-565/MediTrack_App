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
        body: ChatPatient2(),
      ),
    );
  }
}

class ChatPatient2 extends StatefulWidget {
  @override
  _ChatPatient2State createState() => _ChatPatient2State();
}

class _ChatPatient2State extends State<ChatPatient2> {
  bool _isSearching = false;
  final TextEditingController _searchController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 18, 32, 47),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _isSearching
                      ? Expanded(
                    child: TextField(
                      controller: _searchController,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.white54),
                        border: InputBorder.none,
                      ),
                      onSubmitted: (value) {
                        setState(() {
                          _isSearching = false;
                        });
                      },
                    ),
                  )
                      : IconButton(
                    icon: const Icon(Icons.search, color: Colors.white),
                    onPressed: () {
                      setState(() {
                        _isSearching = true;
                      });
                    },
                  ),
                  const Text(
                    'Dr. Karim Bouhassoun',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Actor',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.call, color: Colors.white),
                        onPressed: () {
                          // Add call functionality here
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.videocam, color: Colors.white),
                        onPressed: () {
                          // Add video call functionality here
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/profile.png'),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: const BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: ListView(
                  children: [
                    ChatBubble(
                      isDoctor: true,
                      message:
                      "I'm doing well, thank you. How have your recent treatments been going?",
                      time: "09:25 AM",
                      imageUrl: 'assets/profile.png',
                    ),
                    ChatBubble(
                      isDoctor: false,
                      message: "Hello Dr. Karim. How are you?",
                      time: "09:25 AM",
                      imageUrl: 'assets/profile.png',
                    ),
                    ChatBubble(
                      isDoctor: true,
                      message:
                      "That's great to hear. If you have any questions or concerns, feel free to reach out.",
                      time: "09:25 AM",
                      imageUrl: 'assets/profile.png',
                    ),
                    ChatBubble(
                      isDoctor: false,
                      message: "They've been going well so far, thank you.",
                      time: "09:25 AM",
                      imageUrl: 'assets/profile.png',
                    ),
                    ChatBubble(
                      isDoctor: true,
                      message: "Have a wonderful day!",
                      time: "09:25 AM",
                      imageUrl: 'assets/profile.png',
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              color: Colors.black.withOpacity(0.22),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _messageController,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        hintText: 'Write your message',
                        hintStyle: TextStyle(color: Colors.white54),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.send, color: Colors.white),
                    onPressed: () {
                      // Add send message functionality here
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.attach_file, color: Colors.white),
                    onPressed: () {
                      // Add attachment functionality here
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final bool isDoctor;
  final String message;
  final String time;
  final String imageUrl;

  const ChatBubble({
    required this.isDoctor,
    required this.message,
    required this.time,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
      isDoctor ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: [
        if (isDoctor) CircleAvatar(backgroundImage: AssetImage(imageUrl)),
        Flexible(
          child: Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: isDoctor ? Colors.black38 : Colors.teal,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  message,
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 8),
                Text(
                  time,
                  style: const TextStyle(color: Colors.white54, fontSize: 12),
                ),
              ],
            ),
          ),
        ),
        if (!isDoctor) CircleAvatar(backgroundImage: AssetImage(imageUrl)),
      ],
    );
  }
}

