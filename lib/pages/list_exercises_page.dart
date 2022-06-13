import 'package:flutter/material.dart';
import 'package:prfit/widgets/list_exercises_card.dart';

import '../theme.dart';

class ListExercises extends StatelessWidget {
  const ListExercises({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget appBar() {
      return Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 20, edge, 0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back,
                  ),
                ),
                Expanded(
                  child: Text(
                    'Abs List',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
                const Icon(
                  Icons.search,
                  size: 30,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: ListView(
          children: [
            appBar(),
            const ListExercisesCard(
              image: 'assets/abs/air_bike.gif',
              name: 'Air Bike',
            ),
            const ListExercisesCard(
              image: 'assets/abs/air_bike.gif',
              name: 'Air Bike',
            ),
            const ListExercisesCard(
              image: 'assets/abs/air_bike.gif',
              name: 'Air Bike',
            ),
            const ListExercisesCard(
              image: 'assets/abs/air_bike.gif',
              name: 'Air Bike',
            ),
            const ListExercisesCard(
              image: 'assets/abs/air_bike.gif',
              name: 'Air Bike',
            ),
          ],
        ),
      ),
    );
  }
}
