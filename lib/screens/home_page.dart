import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  List destinations = ['Walled City of Lahore', 'Hunza', 'Skardu'];
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Travel Buddy"),
        backgroundColor: Colors.orangeAccent,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Hero Section with Featured Destinations
              const Text(
                "Featured Destinations",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return featuredDestinationCard(index);
                  },
                ),
              ),
              const SizedBox(height: 20),

              // Quick Navigation Options
              const Text(
                "Quick Access",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildOptionCard(Icons.flight, "Book a Flight"),
                  buildOptionCard(Icons.hotel, "Find Hotels"),
                  buildOptionCard(Icons.explore, "Plan Trip"),
                ],
              ),
              const SizedBox(height: 20),

              // Popular Destinations
              const Text(
                "Popular Destinations",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              popularDestinationsSection(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orangeAccent,
        unselectedItemColor: Colors.grey,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorites",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }

  // Featured Destinations Card Widget
  Widget featuredDestinationCard(int index) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage(
              'images/image_${index + 7}.jpg'), // Add images to assets
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        alignment: Alignment.bottomLeft,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [Colors.black.withOpacity(0.5), Colors.transparent],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Text(
          destinations[index],
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  // Quick Option Card Widget
  Widget buildOptionCard(IconData icon, String title) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.orangeAccent,
            child: Icon(icon, color: Colors.white, size: 30),
          ),
          const SizedBox(height: 5),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }

  // Popular Destinations Section
  Widget popularDestinationsSection() {
    return Column(
      children: List.generate(3, (index) {
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: Expanded(
            child: ListTile(
              leading: Image.asset('assets/popular${index + 1}.jpg',
                  width: 50, height: 50),
              // title: Text("Popular Place ${index + 1}"),
              // subtitle: const Text("Beautiful sights to explore"),
              trailing:
                  const Icon(Icons.arrow_forward, color: Colors.orangeAccent),
              onTap: () {},
            ),
          ),
        );
      }),
    );
  }
}
