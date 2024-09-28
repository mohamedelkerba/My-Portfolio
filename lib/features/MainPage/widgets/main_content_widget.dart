import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/widgets/default_text.dart';

class MainContentContainer extends StatelessWidget {
  const MainContentContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Container(
        color: Colors.black, // Set main content background to black
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Tab bar section
            TabBar(
              labelColor: Colors.yellow, // Customize selected tab color
              unselectedLabelColor: Colors.white54, // Unselected tab color
              indicatorColor: Colors.yellow,
              tabs: [
                Tab(child: DefaultText(text: 'About' , fontColor: Colors.white,)),
                Tab(child: DefaultText(text: 'Resume', fontColor: Colors.white,)),
                Tab(child: DefaultText(text: 'Portfolio', fontColor: Colors.white,)),
                Tab(child: DefaultText(text: 'Contact', fontColor: Colors.white,)),
              ],
            ),
            SizedBox(height: 20),

            // Tab content
            Expanded(
              child: TabBarView(
                children: [
                  // About section
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DefaultText(
                          text: 'About Me',
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          fontColor: Colors.white,
                        ),
                        SizedBox(height: 10),
                        DefaultText(
                          text: '''I'm Mohamed, a full-stack developer from Egypt, specializing in building high-performance mobile applications using Flutter and .NET. With Flutter, I create visually stunning, cross-platform apps that provide seamless user experiences on any device. My expertise lies in transforming complex challenges into intuitive and engaging interfaces that captivate users.\n
On the backend, I utilize .NET to develop secure, scalable, and efficient solutions, ensuring that the apps I build perform flawlessly. By combining the power of Flutter's frontend with .NET's robust backend, I deliver full-stack solutions that align with your brand and captivate your audience. Let’s build solutions that stand out!''',
                          fontSize: 18,
                          fontColor: Colors.white70,
                        ),
                        SizedBox(height: 20),

                        // What Sets Me Apart
                        DefaultText(
                          text: 'What Sets Me Apart:',
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontColor: Colors.white,
                        ),
                        SizedBox(height: 10),
                        ListTile(
                          leading: Icon(Icons.check, color: Colors.yellow),
                          title: DefaultText(
                            text: 'Specialized expertise in Flutter for building cross-platform mobile apps',
                            fontColor: Colors.white,
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.check, color: Colors.yellow),
                          title: DefaultText(
                            text: 'A knack for translating complex problems into elegant interfaces.',
                            fontColor: Colors.white,
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.check, color: Colors.yellow),
                          title: DefaultText(
                            text: 'Strong focus on user-centric design and practical functionality.',
                            fontColor: Colors.white,
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.check, color: Colors.yellow),
                          title: DefaultText(
                            text: 'Proven ability to create visually appealing, brand-consistent applications that stand out.',
                            fontColor: Colors.white,
                          ),
                        ),

                        SizedBox(height: 20),

                        // What I'm Doing Section
                        DefaultText(
                          text: 'What I\'m Doing:',
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontColor: Colors.white,
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              height: 142,
                              width: 400,
                              padding: EdgeInsets.symmetric(horizontal: 40, vertical:34 ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color(0xff212123),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.3), // Increase opacity
                                    blurRadius: 40, // Increase blur radius
                                    offset: Offset(0, 20), // Adjust offset
                                  )
                                ],
                              ),
                              child: Row(
                                children: [
                                  SvgPicture.asset('assets/images/mobile_icon.svg'),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        DefaultText(
                                          text: 'Flutter Developer',
                                          fontColor: Colors.yellow,
                                          fontSize: 18,
                                        ),
                                        SizedBox(height: 5),
                                        DefaultText(
                                          text: 'Professional development of applications for Android and iOS.',
                                          fontColor: Colors.white70,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              width: 400,
                              height: 142,
                              padding: EdgeInsets.symmetric(horizontal: 40, vertical:34 ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Color(0xff212123),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.3), // Increase opacity
                                    blurRadius: 40, // Increase blur radius
                                    offset: Offset(0, 20), // Adjust offset
                                  )
                                ],
                              ),
                              child: Row(
                                children: [
                                  SvgPicture.asset('assets/images/backend_icon.svg'),
                                  const SizedBox(width: 10,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      DefaultText(
                                        text: 'Backend Developer',
                                        fontColor: Colors.yellow,
                                        fontSize: 18,
                                      ),
                                      SizedBox(height: 5),
                                      DefaultText(
                                        text: 'Building Restful APIs with Express in .Net',
                                        fontColor: Colors.white70,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                        SizedBox(height: 20),

                      ],
                    ),
                  ),
                  Center(
                    child: DefaultText(
                      text: 'Resume Section',
                      fontColor: Colors.white,
                    ),
                  ),
                  Center(
                    child: DefaultText(
                      text: 'Portfolio Section',
                      fontColor: Colors.white,
                    ),
                  ),
                  Center(
                    child: DefaultText(
                      text: 'Contact Section',
                      fontColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
