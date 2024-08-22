
import 'package:flutter/material.dart';

import '../core/common.dart';

class Mycourse extends StatefulWidget {
  const Mycourse({super.key});

  @override
  State<Mycourse> createState() => _MycourseState();
}

class _MycourseState extends State<Mycourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text('Course Name'),
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Day buttons
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildDayButton(1, '01/04'),
                  _buildDayButton(2, '02/04'),
                  _buildDayButton(3, '03/03'),
                  _buildDayButton(4, '', icon: Icons.shopping_bag),
                  _buildDayButton(4, '', icon: Icons.shopping_bag),
                ],
              ),
            ),
            SizedBox(height: 16),

            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text(
                            'Upgrade and unlock the \nfull course',
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 24.0,
                          vertical: 12.0,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.red, // Background color
                          borderRadius: BorderRadius.circular(10), // Rounded corners
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Upgrade',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white, // Text color
                              ),
                            ),
                            ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),

            SizedBox(height: 16),

            // WhatsApp button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('WhatsApp ലെ സഹായത്തിനായി'),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.message),
                      label: Text('WhatsApp'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        textStyle: TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),

            // Course content
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  _buildCourseContent(
                    'Day 3 - Lesson 1',
                    'All About DID',
                    'assets/day3_lesson1.png',
                    10.3,
                  ),
                  SizedBox(height: 16),
                  _buildCourseContent(
                    'Day 3 - Lesson 2',
                    'All About DID',
                    'assets/day3_lesson2.png',
                    5.3,
                  ),
                  SizedBox(height: 16),
                  _buildCourseContent(
                    'Day 3 - Lesson 3',
                    'All About DID',
                    'assets/day3_lesson3.png',
                    10.3,
                  ),
                  SizedBox(height: 16),
                  _buildCourseContent(
                    'Day 3 - Lesson 4',
                    'All About DID',
                    'assets/day3_lesson4.png',
                    10.3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildDayButton(int day, String date, {IconData? icon}) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.purple[200],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'DAY\n$day',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            date,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  // Course content widget
  Widget _buildCourseContent(
      String lessonTitle,
      String lessonDescription,
      String imagePath,
      double duration,
      ) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Image.asset(imagePath),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  lessonTitle,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(lessonDescription),
              ],
            ),
          ),
          SizedBox(width: 16),
          Container(
            width: 40,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.purple[100],
            ),
            child: Center(
              child: Text(
                '$duration min',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

