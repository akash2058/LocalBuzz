import 'package:flutter/material.dart';
import 'package:localbuzz/customwidget/customhead.dart';

class MemberShipPage extends StatelessWidget {
  const MemberShipPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [CustomHeader(title: 'My Membership Details'),
          
          
          ],
        ),
      ),
    );
  }
}
