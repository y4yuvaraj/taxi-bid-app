// Placeholder screen
import 'package:flutter/material.dart';
class BiddingScreen extends StatelessWidget {
  final String pickup;
  final String drop;
  const BiddingScreen({required this.pickup, required this.drop});
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Bidding')),
    body: Center(child: Text('Waiting for bids...')),
  );
}