import 'package:flutter/material.dart';

class InfoServicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Info & Services'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome to our Travel Booking App!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                'Info:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Explore our app to discover amazing travel destinations and book your tickets hassle-free.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Services:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              ListTile(
                leading: Icon(Icons.airplanemode_active),
                title: Text('Flight Booking'),
                subtitle: Text('Book your flights with ease.'),
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text('First Class'),
                subtitle: Text(
                    'Experience the highest level of luxury and personalized service. '
                    'Spacious seating, gourmet meals, exclusive lounges, and priority boarding await you.'),
              ),
              ListTile(
                leading: Icon(Icons.business),
                title: Text('Business Class'),
                subtitle: Text(
                    'Enjoy a premium travel experience with enhanced comfort and amenities. '
                    'Priority check-in, extra legroom, and gourmet dining make your journey memorable.'),
              ),
              ListTile(
                leading: Icon(Icons.airline_seat_individual_suite),
                title: Text('Economy Class'),
                subtitle: Text(
                    'Affordable travel with great value. Comfortable seating, in-flight entertainment, '
                    'and a selection of meals to make your journey pleasant.'),
              ),
              SizedBox(height: 16),
              Text(
                'Airlines:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              ListTile(
                leading: Icon(Icons.flight),
                title: Text('Egypt Airlines'),
                subtitle: Text(
                    'Egypt Airlines is the national flag carrier of Egypt. '
                    'Providing domestic and international flights, known for its warm hospitality.'),
              ),
              ListTile(
                leading: Icon(Icons.flight),
                title: Text('Emirates'),
                subtitle: Text(
                    'Emirates is a major airline based in Dubai, United Arab Emirates. '
                    'It is known for its luxurious services and a vast network of destinations.'),
              ),
              ListTile(
                leading: Icon(Icons.flight),
                title: Text('Saudi Arabia Airlines'),
                subtitle: Text(
                    'Saudi Arabia Airlines, the flag carrier of Saudi Arabia, offers domestic and international flights. '
                    'Experience Saudi hospitality on your journey.'),
              ),
              ListTile(
                leading: Icon(Icons.flight),
                title: Text('Qatar Airways'),
                subtitle: Text(
                    'Qatar Airways is the state-owned flag carrier of Qatar. '
                    'It is known for its modern fleet and excellent in-flight services.'),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
