import 'package:flutter/material.dart';
import 'bidding_screen.dart';
class RiderHomeScreen extends StatelessWidget {
  final pickupController = TextEditingController();
  final dropController = TextEditingController();
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Request Ride')),
    body: Column(children: [
      TextField(controller: pickupController, decoration: InputDecoration(labelText: 'Pickup')),
      TextField(controller: dropController, decoration: InputDecoration(labelText: 'Drop')),
      ElevatedButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(
          builder: (_) => BiddingScreen(pickup: pickupController.text, drop: dropController.text),
        )),
        child: Text('Send Ride Request'),
      )
    ]),
  );
}