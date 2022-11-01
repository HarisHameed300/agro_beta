

import 'package:agro_beta_app/resources/my_custom_text_row.dart';
import 'package:flutter/material.dart';

class CriticalThinkingScreen extends StatefulWidget {
  const CriticalThinkingScreen({super.key});

  @override
  State<CriticalThinkingScreen> createState() => _CriticalThinkingScreenState();
}

class _CriticalThinkingScreenState extends State<CriticalThinkingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Critical Thinking'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  const [
            MyCustomTextRow(myText: 'Honesty',),
            MyCustomTextRow(myText: 'Emotional Intelligence',),
            MyCustomTextRow(myText: 'Leadership',),
            MyCustomTextRow(myText: 'Team Building',),
            MyCustomTextRow(myText: 'Active Listening',), 
          ],
        ),
      ),
    );
  }
}

