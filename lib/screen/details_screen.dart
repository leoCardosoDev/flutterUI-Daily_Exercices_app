import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uidailyexercisesapp/constants.dart';
import 'package:uidailyexercisesapp/widget/bottom_nav_bar.dart';
import 'package:uidailyexercisesapp/widget/search_bar.dart';
import 'package:uidailyexercisesapp/widget/session_card.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage('assets/images/meditation_bg.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: size.height * 0.05),
                    Text(
                      'Meditação',
                      style: Theme.of(context).textTheme.display1.copyWith(
                            fontWeight: FontWeight.w900,
                          ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '3-10 MIN de Curso',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: size.width * .6,
                      child: Text('Viva mais feliz e saudável aprendendo os fundamentos da '
                          'meditação mindfulness!'),
                    ),
                    SizedBox(
                      width: size.width * .5,
                      child: SearchBar(),
                    ),
                    Wrap(
                      spacing: 10,
                      runSpacing: 20,
                      children: <Widget>[
                        SessionCard(
                          sessionNum: 01,
                          isDone: true,
                          press: () {},
                        ),
                        SessionCard(
                          sessionNum: 02,
                          isDone: true,
                          press: () {},
                        ),
                        SessionCard(
                          sessionNum: 03,
                          isDone: false,
                          press: () {},
                        ),
                        SessionCard(
                          sessionNum: 04,
                          isDone: false,
                          press: () {},
                        ),
                        SessionCard(
                          sessionNum: 05,
                          isDone: false,
                          press: () {},
                        ),
                        SessionCard(
                          sessionNum: 06,
                          isDone: false,
                          press: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Meditação',
                      style: Theme.of(context).textTheme.title.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 30),
                      padding: EdgeInsets.all(10),
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          SvgPicture.asset('assets/icons/Meditation_women_small.svg'),
                          SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Básico 2',
                                  style: Theme.of(context).textTheme.subtitle,
                                ),
                                Text('Comece sua prática de aprofundamento!'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: SvgPicture.asset('assets/icons/Lock.svg'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
