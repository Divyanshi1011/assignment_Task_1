import 'package:flutter/material.dart';

class InternshipsDetailScreen extends StatelessWidget {
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
          'Internships Detail',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue, // Blue background color
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            _buildInternshipDetail(
              title: 'Code Alpha Internship',
              description: '➢ Duration: 1 month\n'
                  '➢ Worked on various projects related to software development.\n'
                  '➢ Gained experience in coding, project management, and teamwork.\n'
                  '➢ Tech: HTML,CSS, BootStrap,JavaScript, Git.',
            ),
            SizedBox(height: 20),
            _buildInternshipDetail(
              title: 'IBM Cloud Internship',
              description: '➢ Duration: 1 month\n'
                  '➢ Worked on cloud-based projects, focusing on cloud infrastructure and services.\n'
                  '➢ Gained experience in cloud technologies and deployment.\n'
                  '➢ Tech: IBM Cloud, Cloud Foundry, Kubernetes.',
            ),
            SizedBox(height: 40), // Space before the button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.popUntil(
                      context,
                      ModalRoute.withName(
                          '/')); // Navigate back to the home page
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
            SizedBox(height: 20), // Extra space below the button
          ],
        ),
      ),
    );
  }

  Widget _buildInternshipDetail(
      {required String title, required String description}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, // White background for each internship detail
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.blue),
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          SizedBox(height: 10),
          Text(
            description,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
