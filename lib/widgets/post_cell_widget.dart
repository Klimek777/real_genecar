import 'package:flutter/material.dart';
import 'package:genecar/main.dart';

class PostCellWidget extends StatelessWidget {
  final String title;
  final String image;
  final String author;
  final String date;
  final Function() onClick;
  PostCellWidget(
      {required this.title,
      required this.image,
      required this.author,
      required this.date,
      required this.onClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Row(
        children: [
          Container(
            width: 160,
            height: 75,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '$author, $date',
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
