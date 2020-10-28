import 'package:flutter/material.dart';
import 'package:basics/widgets/call_to_action/call_to_action.dart';
import 'package:basics/widgets/centered_view/centered_view.dart';
import 'package:basics/widgets/course_details/course_details.dart';
import 'package:basics/widgets/navigation_bar/navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: CenteredView(
        child: Column(
          children: <Widget>[
            NavigationBar(),
            Expanded(
              child: Row(
                children: <Widget>[
                  CourseDetails(),
                  Expanded(
                    child: Center(
                      child: CallToAction('Join Course'),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
