import 'package:flutter/material.dart';

class ProjectsDetailScreen extends StatelessWidget {
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
          'Projects Detail',
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
            _buildProjectDetails(
              title: 'MediBotGuide',
              description:
                  '➢ An AI Chatbot that provides solutions for medical issues and information with reference to “MediBotGuide”.\n'
                  '➢ Built APIs using IBM Cloud Watsonx Assistant and using ER Diagram to visualize the functions.\n'
                  '➢ Collaborated with other tech enthusiasts who built the ML model for this project.\n'
                  '➢ Tech: IBM Cloud, Watson Assistant, Flowcharts, Data Analysis',
            ),
            SizedBox(height: 20),
            _buildProjectDetails(
              title: 'Delhi House Price Prediction',
              description:
                  '➢ Delhi House Price Prediction helps determine the selling price of a house and assists customers in choosing the right time and location to purchase a house.\n'
                  '➢ The Prediction accuracy for this project is 89%.\n'
                  '➢ Tech: Python, Machine Learning, Artificial Intelligence, AI/ML Algorithms.',
            ),
            SizedBox(height: 20),
            _buildProjectDetails(
              title: 'Web Development Internship Tasks',
              description:
                  '➢ Developed multiple tasks assigned during the Internship period.\n'
                  '➢ Created a Recipe table list where users can add, delete, and create ingredients.\n'
                  '➢ Created Task Schedulers where users can assign tasks, set time, and send emails at the allotted time.\n'
                  '➢ Created an Issue Tracker where users can file an issue, assign priority, and track whether the issue is resolved or in process.\n'
                  '➢ Tech: HTML, CSS, JavaScript, Bootstrap.',
            ),
            SizedBox(height: 20),
            _buildProjectDetails(
              title: 'Bangalore Zomato Data Analysis',
              description:
                  '➢ Bangalore Zomato Data Analysis offers insights into the restaurant landscape, assisting people in making informed dining decisions based on preferences, budget, and location using data from Zomato.\n'
                  '➢ Analyzed data using libraries such as Pandas, NumPy, and Seaborn, providing valuable information about restaurant ratings, cuisine availability, average cost for two, and popular dining locations.\n'
                  '➢ Tech: Python, Pandas, NumPy, Seaborn.',
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

  Widget _buildProjectDetails(
      {required String title, required String description}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[50], // Light blue background for each project
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
