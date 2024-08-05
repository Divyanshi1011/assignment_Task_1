import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfileDetailScreen(),
    );
  }
}

class ProfileDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous page
          },
        ),
        title: Text(
          'Profile Details', // Updated title text
          style: TextStyle(color: Colors.white), // White text color
        ),
        backgroundColor: Colors.blue, // Blue background color for AppBar
      ),
      body: Container(
        color: Colors.white, // White background color for the body content
        child: Column(
          children: [
            SizedBox(height: 20), // Space at the top

            // CircleAvatar outside the box with updated image
            CircleAvatar(
              radius: 50,
              backgroundImage:
                  AssetImage('assets/pic2.jpeg'), // Load new image from assets
            ),
            SizedBox(height: 20), // Space between the avatar and the box

            // Blue Container
            Container(
              color: Colors.blue, // Blue background color for the box
              padding: EdgeInsets.all(20.0),
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Kumari Divyanshi',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // White text color
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Email: divyanshirai1011@gmail.com',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white, // White text color
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Contact: 8765238710',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white, // White text color
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Age: 23',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white, // White text color
                    ),
                  ),
                  SizedBox(height: 10),
                  // Additional Details
                  Text(
                    'Occupation: Fresher',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white, // White text color
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Address: Bangalore, Karnataka',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white, // White text color
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Strengths: Always eager to learn new things, dedicated to my work, and reliable in delivering results.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white, // White text color
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            SizedBox(height: 20), // Space before the back button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Navigate back to the previous page
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Blue background color
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  textStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                child: Text(
                  'Return to Home Page',
                  style: TextStyle(color: Colors.white), // White text color
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
