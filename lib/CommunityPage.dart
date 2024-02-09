import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Community'),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.amberAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to Our Community!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Explore upcoming events, connect with neighbors, and participate in discussions.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  _buildCommunityCard(
                    context,
                    title: 'Upcoming Events',
                    subtitle: 'Join local events and activities',
                    icon: Icons.event,
                  ),
                  _buildCommunityCard(
                    context,
                    title: 'Neighborhood Chat',
                    subtitle: 'Connect with neighbors and share updates',
                    icon: Icons.chat,
                  ),
                  _buildCommunityCard(
                    context,
                    title: 'Discussions',
                    subtitle: 'Engage in community discussions and topics',
                    icon: Icons.forum,
                  ),
                  // Add more community features as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCommunityCard(
      BuildContext context, {
        required String title,
        required String subtitle,
        required IconData icon,
      }) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(
          icon,
          size: 40,
          color: Theme.of(context).primaryColor,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(subtitle),
        onTap: () {
          // Implement navigation or action for each community feature
        },
      ),
    );
  }
}
