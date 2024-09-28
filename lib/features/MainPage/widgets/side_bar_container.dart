import 'package:flutter/material.dart';

import '../../../core/widgets/default_text.dart';

class SideBarContainer extends StatelessWidget {
  const SideBarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: Colors.black87,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/myPhoto.jpeg'),
          ),
          SizedBox(height: 10),
          DefaultText(
            text: 'MOHAMED',
            fontColor: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
          DefaultText(
            text: 'Software Developer',
            fontColor: Colors.white60,
          ),
          SizedBox(height: 20),
          // Contact info
          ListTile(
            leading: Icon(Icons.email, color: Colors.white),
            title: DefaultText(
              text: 'mohamedelkerba@gmail.com',
              fontSize: 13,
              fontColor: Colors.white,
            ),
          ),
          ListTile(
            leading: Icon(Icons.phone, color: Colors.white),
            title: DefaultText(
              text: '+20-128-233-1961',
              fontColor: Colors.white,
            ),
          ),
          ListTile(
            leading: Icon(Icons.cake, color: Colors.white),
            title: DefaultText(
              text: 'Aug 8, 2004',
              fontColor: Colors.white,
            ),
          ),
          ListTile(
            leading: Icon(Icons.location_on, color: Colors.white),
            title: DefaultText(
              text: 'El-Monofia, Egypt',
              fontColor: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.linked_camera),
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.code),
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.facebook),
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.phone_android),
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
