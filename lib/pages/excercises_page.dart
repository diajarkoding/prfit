import 'package:prfit/pages/list_exercises_page.dart';
import 'package:prfit/theme.dart';
import 'package:flutter/material.dart';

class ExercisesPage extends StatelessWidget {
  const ExercisesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget appBar() {
      return Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(edge, 20, edge, 0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Exercise',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
                const Icon(
                  Icons.flag,
                  size: 25,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'MY GOALS',
                  style: blackTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            thickness: 1,
          )
        ],
      );
    }

    content() {
      return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
            childAspectRatio: 0.88,
          ),
          itemCount: 12,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ListExercises(),
                  ),
                );
              },
              child: Column(
                children: [
                  Container(
                    // width: 50,
                    height: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/exercises/abs.png'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Abs',
                    style: blackTextStyle.copyWith(),
                  )
                ],
              ),
            );
          },
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: ListView(
          children: [
            appBar(),
            content(),
          ],
        ),
      ),
    );
  }
}
