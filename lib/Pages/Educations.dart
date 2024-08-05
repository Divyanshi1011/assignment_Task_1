import 'package:flutter/material.dart';

class EducationsDetailScreen extends StatefulWidget {
  @override
  _EducationsDetailScreenState createState() => _EducationsDetailScreenState();
}

class _EducationsDetailScreenState extends State<EducationsDetailScreen> {
  String? _selectedCategory;

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
          'Educations Detail',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),

          // Asset Image
          Image.asset(
            'assets/pic3.jpg', // Local image asset
            height: 150, // Adjust the height as needed
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20), // Space between image and card

          // Card Container with Blue Background
          Expanded(
            child: Card(
              color: Colors.blue, // Blue background color for the Card
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _selectedCategory = 'PU';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.blue,
                              backgroundColor: Colors.white, // Blue text color
                              padding: EdgeInsets.symmetric(vertical: 15),
                            ),
                            child: Text('PU'),
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _selectedCategory = 'Degree';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.blue,
                              backgroundColor: Colors.white, // Blue text color
                              padding: EdgeInsets.symmetric(vertical: 15),
                            ),
                            child: Text('Degree'),
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _selectedCategory = 'Post-Graduated';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.blue,
                              backgroundColor: Colors.white, // Blue text color
                              padding: EdgeInsets.symmetric(vertical: 15),
                            ),
                            child: Text('Master Degree'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    if (_selectedCategory != null) _buildDetails(),
                  ],
                ),
              ),
            ),
          ),

          // Space before the back button
          SizedBox(height: 20),

          // Return to Home Page Button
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Navigate back to the previous page
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Blue background color
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              child: Text(
                'Return to Home Page',
                style: TextStyle(color: Colors.white), // White text color
              ),
            ),
          ),
          SizedBox(height: 20), // Space after the button
        ],
      ),
    );
  }

  Widget _buildDetails() {
    if (_selectedCategory == 'PU') {
      return Container(
        color: Colors.blue, // Blue background color for content
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Schooling',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Board - ICSE (10th)',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(height: 5),
            Text('Place - St. John\'s School, Ghazipur, Uttar Pradesh',
                style: TextStyle(color: Colors.black)),
            SizedBox(height: 5),
            Text('Score - 59.3%', style: TextStyle(color: Colors.black)),
            SizedBox(height: 20),
            Text(
              'Board - ISC (12th)',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(height: 5),
            Text('Place - St. John\'s School, Ghazipur, Uttar Pradesh',
                style: TextStyle(color: Colors.black)),
            SizedBox(height: 5),
            Text('Score - 53%', style: TextStyle(color: Colors.black)),
          ],
        ),
      );
    } else if (_selectedCategory == 'Degree') {
      return Container(
        color: Colors.blue, // Blue background color for content
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Degree',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Stream - Bachelor in Computer Application (BCA)',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(height: 5),
            Text(
                'University - Jayoti Vidyapeeth Women\'s University, Jaipur, Rajasthan',
                style: TextStyle(color: Colors.black)),
            SizedBox(height: 5),
            Text('Score - 79.3%', style: TextStyle(color: Colors.black)),
          ],
        ),
      );
    } else if (_selectedCategory == 'Post-Graduated') {
      return Container(
        color: Colors.blue, // Blue background color for content
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Post-Graduated',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Stream - Master in Computer Application (MCA)',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(height: 5),
            Text(
                'University - Acharya Institute of Technology, Bangalore, Karnataka',
                style: TextStyle(color: Colors.black)),
            SizedBox(height: 5),
            Text('Score - 90.1% (3rd sem)',
                style: TextStyle(color: Colors.black)),
          ],
        ),
      );
    } else {
      return SizedBox.shrink();
    }
  }
}
