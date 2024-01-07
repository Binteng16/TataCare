import 'package:flutter/material.dart';

class Developer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Developer',
        ),
        backgroundColor: Colors.blue.shade900,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/images/propic.png'),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'THALITA ZHARIFA',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade900,
              ),
            ),
            Text(
              'Mobile App Developer',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'About',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade900,
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          'Thalita Zharifa is a talented mobile app developer with a strong dedication to crafting innovative applications. With over 5 years of experience in the industry, Thalita has successfully been the backbone of critical projects, including the captivating TataCare mobile app. Her expertise encompasses. ',
                    ),
                    TextSpan(
                      text:
                          'developing applications for both Android and iOS platforms',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          ', creating captivating user interfaces, and efficiently managing projects. Thalita is always eager to create modern and functional solutions, making her a valuable asset in the world of mobile app development. jk',
                    ),
                  ],
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Skills',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade900,
              ),
            ),
            SizedBox(height: 10.0),
            ListTile(
              leading: Icon(Icons.check, color: Colors.blue.shade900),
              title: Text(
                'Mobile Application Development (Android & iOS)',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.check, color: Colors.blue.shade900),
              title: Text(
                'User Interface Design',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.check, color: Colors.blue.shade900),
              title: Text(
                'Project Management',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Contact',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade900,
              ),
            ),
            SizedBox(height: 10.0),
            ListTile(
              leading: Icon(Icons.email, color: Colors.blue.shade900),
              title: Text(
                'thalita.zharifa@mhs.itenas.ac.id',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.link, color: Colors.blue.shade900),
              title: Text(
                'instagram.com/thalitazharifa',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
