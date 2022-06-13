import 'package:flutter/material.dart';
import 'package:prfit/pages/detail_page.dart';
import 'package:prfit/theme.dart';

class ListExercisesCard extends StatelessWidget {
  final String image;
  final String name;

  const ListExercisesCard({required this.image, required this.name, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const DetailPage(),
        ),
      ),
      child: Container(
        margin: EdgeInsets.fromLTRB(
          edge,
          0,
          edge,
          10,
        ),
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
            boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 1)],
            borderRadius: BorderRadius.circular(15),
            color: whiteColor),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  right: 15,
                ),
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                ),
              ),
              Text(
                name,
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
