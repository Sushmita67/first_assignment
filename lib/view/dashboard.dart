import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Dashboard',
          style: TextStyle(fontWeight: FontWeight.bold), // Bold title
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2, // Two items per row
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            DashboardCard(
              icon: Icons.calculate_outlined, // Calculator Icon
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.lightBlueAccent],
              ),
              label: 'Arithmetic Operations',
              onTap: () {
                Navigator.pushNamed(context, '/arithmetic');
              },
            ),
            DashboardCard(
              icon: Icons.percent, // Interest Icon
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.deepPurpleAccent],
              ),
              label: 'Simple Interest',
              onTap: () {
                Navigator.pushNamed(context, '/simple_interest');
              },
            ),
            DashboardCard(
              icon: Icons.circle, // Circle Icon for Area
              gradient: LinearGradient(
                colors: [Colors.teal, Colors.cyan],
              ),
              label: 'Area of Circle',
              onTap: () {
                Navigator.pushNamed(context, '/area_of_circle');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final IconData icon;
  final Gradient gradient;
  final String label;
  final VoidCallback onTap;

  DashboardCard({
    required this.icon,
    required this.gradient,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: gradient,
              ),
              child: Icon(
                icon,
                size: 30,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
