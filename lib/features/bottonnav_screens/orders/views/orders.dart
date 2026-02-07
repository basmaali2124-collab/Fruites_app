import 'package:flutter/material.dart';
import 'package:fruits_app/Shared_widget/custom_appbar.dart';
import 'package:fruits_app/features/bottonnav_screens/orders/widgets/order_card.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'My orders'),
      body: ListView(children: [
      OrderCard(cardColor: Colors.amber, cardIcon: Icons.local_shipping_outlined, status: 'Deliverong',),
      OrderCard(cardColor: Colors.green, cardIcon: Icons.local_shipping_outlined, status: 'Finished',),
      OrderCard(cardColor: Colors.redAccent, cardIcon: Icons.local_shipping_outlined, status: 'Canceled',),
      OrderCard(cardColor: Colors.blue, cardIcon: Icons.local_shipping_outlined, status: 'Working',),
      OrderCard(cardColor: Colors.purpleAccent, cardIcon: Icons.local_shipping_outlined, status: 'Deliverd',)]),
    );
  }
}
