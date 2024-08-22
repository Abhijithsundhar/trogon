import 'package:flutter/material.dart';

import '../core/common.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity, // Full width of the device
          decoration: BoxDecoration(
            gradient: myGradient, // Use the gradient as the background
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40), // Curved bottom-left corner
              bottomRight: Radius.circular(40), // Curved bottom-right corner
            ),
          ),
          padding: EdgeInsets.all(16.0),
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
                        'Hi Good Morning!',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        'John',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: width*.1,),
                  Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Text('10', style: TextStyle(color: Colors.yellow.shade900)),
                              Image(image:AssetImage('assets/images/coins.png'))
                            ],
                          )),
                      SizedBox(width: 8.0),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/Ellipse 29.png'),
                      ),
                    ],
                  )
                ],

              ),
              SizedBox(height: 16.0),
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
                              'Selected Course',
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                            Text(
                              'Montessori',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,

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
                            gradient: myGradient, // Background color
                            borderRadius: BorderRadius.circular(10), // Rounded corners
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Change',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white, // Text color
                                ),
                              ),
                              SizedBox(width: 8.0),
                              Image(image: AssetImage('assets/images/Vector.png'))
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 110, // Set the desired width for the rectangle
                height: 105, // Set the desired height for the rectangle
                padding: EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 12.0,
                ),
                decoration: BoxDecoration(
                  gradient: b,
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top: 15),
                      child: Image(image: AssetImage('assets/images/9913468.png')),
                    ),
                    Center(child:
                    Text('exam',style: TextStyle(color: Colors.white),))
                  ],
                ),
              ),
              Container(
                width: 110, // Set the desired width for the rectangle
                height: 105, // Set the desired height for the rectangle
                padding: EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 12.0,
                ),
                decoration: BoxDecoration(
                  gradient: a,
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top: 15),
                      child: Image(image: AssetImage('assets/images/download.png')),
                    ),
                    Center(child:
                    Text('Practice',style: TextStyle(color: Colors.white),))
                  ],
                ),
              ),
              Container(
                width: 110, // Set the desired width for the rectangle
                height: 105, // Set the desired height for the rectangle
                padding: EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 12.0,
                ),
                decoration: BoxDecoration(
                  gradient: c,
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top: 15),
                      child: Image(image: AssetImage('assets/images/b.png')),
                    ),
                    Center(child:
                    Text('Materials',style: TextStyle(color: Colors.white),))
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Courses',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'See All',
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 14.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            children: [
              _buildCourseCard(
                title: 'KTET',
                image: 'assets/images/Course 1.png',
              ),
              _buildCourseCard(
                title: 'LP/UP/HST',
                image: 'assets/images/Group 36617.png',
              ),
              _buildCourseCard(
                title: 'SET',
                image: 'assets/images/Course 3.png',
              ),
              _buildCourseCard(
                title: 'NET',
                image: 'assets/images/Group 36621.png',
              ),
              _buildCourseCard(
                title: 'Montessori',
                image: 'assets/images/Group 36623.png',
              ),
              _buildCourseCard(
                title: 'Crash Course',
                image: 'assets/images/Group 36625.png',
              ),
            ],
          ),
        ),
        SizedBox(height: 16.0),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            constraints: BoxConstraints(
              maxWidth: 500.0, // Maximum width
              minWidth: 400.0, // Minimum width
            ),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Color.fromRGBO(246, 234, 182, 0.5),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Practice With Previous Year \nQuestion Papers',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.purple,
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 75.0,
                  child: Image.asset(
                    'assets/images/boy.png',
                    height: 75.0,
                    width: 90.0,
                  ),
                ),
              ],
            ),
          ),
        ),


        SizedBox(height: 16.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Latest Test Series',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildTestCard(
                title: 'Exam 102 - Biology',
                questions: '10 Questions',
                time: '120 mins',
                color: d,
              ),
              _buildTestCard(
                title: 'Exam 102 - Maths',
                questions: '10 Questions',
                time: '120 mins',
                color: d,
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
      ],
    ),
    ),
    );
  }
}
Widget _buildCourseCard({required String title, required String image}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.transparent,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, height: 80),
        SizedBox(height: 8.0),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}

Widget _buildTestCard({
  required String title,
  required String questions,
  required String time,
  required Gradient color
}) {
  return Container(
    width: 170.0,
    padding: EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      gradient: d,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          '$questions | $time',
          style: TextStyle(
            fontSize: 12.0,
          ),
        ),
        SizedBox(height: 8.0),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 12.0,
          ),
          child: Center(
            child: Text(
              'Attempt Now',
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
                color: Colors.purple, // Ensure text color contrasts with button color
              ),
            ),
          ),
        )
      ],
    ),
  );
}
