import 'package:assignment_task1/Pages/Educations.dart';
import 'package:assignment_task1/Pages/Internships.dart';
import 'package:assignment_task1/Pages/Profile.dart';
import 'package:assignment_task1/Pages/Projects.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Acelucid Technology',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<String> items = [
    'Profile',
    'Educations',
    'Projects',
    'Internships'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Acelucid Technology',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          SizedBox(height: 16.0), // Space below the AppBar
          Image.asset(
            'assets/pic1.jpg',
            height: 100, // Adjust the height as needed
          ),
          SizedBox(height: 16.0), // Space below the image
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Text(
                'Assignment: Task 1',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Container(
                  color: index % 2 == 0 ? Colors.blue[50] : Colors.white,
                  child: ListTile(
                    title: Text(
                      items[index],
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                    onTap: () {
                      switch (index) {
                        case 0:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProfileDetailScreen(),
                            ),
                          );
                          break;
                        case 1:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EducationsDetailScreen(),
                            ),
                          );
                          break;
                        case 2:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProjectsDetailScreen(),
                            ),
                          );
                          break;
                        case 3:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => InternshipsDetailScreen(),
                            ),
                          );
                          break;
                      }
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
