import 'package:flutter/material.dart';

class ReportPage extends StatefulWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  // Define controllers for text fields
  final TextEditingController _issueController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  void dispose() {
    // Clean up controllers when the widget is disposed
    _issueController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Report Issue'),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.amberAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What issue are you facing?',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            TextFormField(
              controller: _issueController,
              decoration: InputDecoration(
                hintText: 'Enter issue',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Description',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            TextFormField(
              controller: _descriptionController,
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Enter description',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle form submission here
                    String issue = _issueController.text;
                    String description = _descriptionController.text;
                    // Perform validation and submission logic here
                    print('Issue: $issue');
                    print('Description: $description');
                    // Show a dialog or navigate to a confirmation page
                  },
                  child: Text('Submit'),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // Handle image upload logic here
                  },
                  icon: Icon(Icons.cloud_upload),
                  label: Text('Upload Image'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
