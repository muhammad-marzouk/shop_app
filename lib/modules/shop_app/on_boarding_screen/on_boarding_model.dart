import 'package:flutter/cupertino.dart';

class BoardingModel{
  final String image;
  final String title;
  final String body;
  BoardingModel({required this.image,required this.title,required this.body});
}

List <BoardingModel> boarding =[
  BoardingModel(
      image: 'assets/images/images1.jpeg',
      title: 'on board 1 title',
      body: 'on board 1 body'
  ),
  BoardingModel(
      image: 'assets/images/images2.jpeg',
      title: 'on board 2 title',
      body: 'on board 2 body'
  ),
  BoardingModel(
      image: 'assets/images/images3.jpeg',
      title: 'on board 3 title',
      body: 'on board 3 body'
  )
];

Widget buildBoardingItem(BoardingModel model) => Column(
      children: [
        Expanded(
          child: Image(
            image: AssetImage(
              model.image,
            ),
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          model.title,
          style: const TextStyle(
            fontSize: 40.0,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          model.body,
          style: const TextStyle(
            fontSize: 14.0,
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
      ],
    );
