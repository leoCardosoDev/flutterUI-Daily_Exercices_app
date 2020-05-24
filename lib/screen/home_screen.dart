import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uidailyexercisesapp/screen/details_screen.dart';
import 'package:uidailyexercisesapp/widget/bottom_nav_bar.dart';
import 'package:uidailyexercisesapp/widget/category_card.dart';
import 'package:uidailyexercisesapp/widget/search_bar.dart';

class HomeScreen extends StatelessWidget {
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
              color: Color(0xFFf5CEB8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage('assets/images/undraw_pilates_gpdb.png'),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Color(0xFFF2BeA1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset('assets/icons/menu.svg'),
                    ),
                  ),
                  Text(
                    "Bom Dia,\nLeonardo",
                    style:
                        Theme.of(context).textTheme.display1.copyWith(fontWeight: FontWeight.w900),
                  ),
                  SearchBar(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          svgSrc: 'assets/icons/Hamburger.svg',
                          title: 'Recomendação '
                              'de dieta',
                          press: () {},
                        ),
                        CategoryCard(
                          svgSrc: 'assets/icons/Excrecises.svg',
                          title: 'Alongamentos',
                          press: () {},
                        ),
                        CategoryCard(
                          svgSrc: 'assets/icons/Meditation.svg',
                          title: 'Meditação',
                         press: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context) =>
                             DetailsScreen()
                           ));
                         },
                        ),
                        CategoryCard(
                          svgSrc: 'assets/icons/yoga.svg',
                          title: 'Yoga',
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
