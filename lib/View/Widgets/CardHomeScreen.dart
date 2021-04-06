import 'package:flutter/material.dart';

class CardHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
      width: deviceSize.width,
      height: deviceSize.height * 0.35,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            child: Container(
              width: deviceSize.width,
              height: deviceSize.height * 0.25,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: Color(0xff0A93F1),
                elevation: 10,
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              child: Image.asset(
                'lib/Asset/images/nurse2.png',
                width: 280,
                height: 320,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            right: 0,
            width: deviceSize.width * 0.40,
            height: deviceSize.height * 0.25,
            child: Container(
              margin: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Covid 19',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(fontSize: 25),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'protect your self and your family from covid 19',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(color: Colors.white60, fontSize: 21),
                      ),
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
