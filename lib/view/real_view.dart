import 'package:flutter/material.dart';

class RealView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Text("Nos réalisations",
              style:TextStyle(
                color: Colors.lightGreen,
                fontSize: 25,
              ),
          ),
          myPad(),
          Divider(thickness: 3),
          Row(
            children: [
              Text("Piscines"),
              Spacer(),
            ],
          ),
          piscines(size: size),
          myPad(),
          Divider(thickness: 3),
          Row(
            children: [
              Text("Jardins"),
              Spacer(),
            ],
          ),
          jardins(),
        ],
      ),
    );
  }
  Widget jardins() {
    return Container(
      height: 135,
      child:ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              height: 130,
              width: 170,
              margin: EdgeInsets.all(5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('images/jardin ${index + 1}.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
          scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget piscines({required Size size}) {
    return Container(
      width: size.width,
      height: size.height * 0.75,
      child: ListView.separated(
          itemBuilder: (context, index) {
            return Container(
              height: size.height * 0.33,
              child: Image.asset('images/piscine ${index + 1}.jpeg',
              fit: BoxFit.cover,
                ),
            );
          },
          separatorBuilder: ((context, index) => Divider()),
          itemCount: 5),
    );
}
  Padding myPad() => Padding(padding: EdgeInsets.only(top: 18));
}