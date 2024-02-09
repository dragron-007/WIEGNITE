import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore'),
        backgroundColor: Colors.black87,
        foregroundColor: Colors.amberAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Discover More!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Explore interesting places, local attractions, and hidden gems in your city.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  _buildExploreItem(
                    context,
                    title: 'Parks',
                    icon: Icons.park,
                  ),
                  _buildExploreItem(
                    context,
                    title: 'Museums',
                    icon: Icons.museum,
                  ),
                  _buildExploreItem(
                    context,
                    title: 'Restaurants',
                    icon: Icons.restaurant,
                  ),
                  _buildExploreItem(
                    context,
                    title: 'Shopping',
                    icon: Icons.shopping_bag,
                  ),
                  // Add more explore categories as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExploreItem(
      BuildContext context, {
        required String title,
        required IconData icon,
      }) {
    return InkWell(
      onTap: () {
        // Implement action when an explore item is tapped
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 50,
              color: Theme.of(context).primaryColor,
            ),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
