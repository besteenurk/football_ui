import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:football_ui/constant.dart';
import 'package:football_ui/screens/survey/components/background.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackGround(
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 10, right: 20, left: 40),
                    height: size.height * 0.06,
                    decoration: BoxDecoration(
                      color: kSurveyText,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Center(
                      child: Text(
                        "5",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const Expanded(
                  child: Center(
                    child: Icon(
                      Icons.arrow_right_alt_sharp,
                      size: 70,
                      color: kSurveyText,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 10, right: 40, left: 20),
                    height: size.height * 0.06,
                    decoration: BoxDecoration(
                      color: kSurveyText,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Center(
                      child: Text(
                        "33",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, right: 20, left: 20),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              height: size.height * 0.2,
              width: size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(29),
                color: kBackground,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 0),
                    blurRadius: 10,
                    color: kSurveyText.withOpacity(0.4),
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text(
                    "Benim için öncelikli olan bağımsız olmaktır",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: kSurveyText,
                        fontSize: 30),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              height: size.height * 0.4,
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[MyStatefulWidget()],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              height: size.height * 0.1,
              width: size.width,
              child: ElevatedButton(
                child: const Text(
                  "SONRAKİ SORU",
                  style: TextStyle(
                      color: kSurveyText, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(29),
                    side: const BorderSide(color: kSurveyText, width: 3),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  primary: kBackground,
                  shadowColor: kSurveyText,
                  textStyle: const TextStyle(
                    color: kSurveyText,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum SingingCharacter {
  lafayette,
  jefferson,
  jefferson1,
  jefferson2,
  jefferson3
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  SingingCharacter? _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RadioListTile<SingingCharacter>(
          title: const Text('Kesinlikle katlılıyorum'),
          value: SingingCharacter.lafayette,
          groupValue: _character,
          activeColor: kSurveyText,
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
            });
          },
        ),
        RadioListTile<SingingCharacter>(
          title: const Text('Katılıyorum'),
          value: SingingCharacter.jefferson,
          groupValue: _character,
          activeColor: kSurveyText,
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
            });
          },
        ),
        RadioListTile<SingingCharacter>(
          title: const Text('Kararsızım'),
          value: SingingCharacter.jefferson1,
          groupValue: _character,
          activeColor: kSurveyText,
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
            });
          },
        ),
        RadioListTile<SingingCharacter>(
          title: const Text('Katılmıyorum'),
          value: SingingCharacter.jefferson2,
          groupValue: _character,
          activeColor: kSurveyText,
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
            });
          },
        ),
        RadioListTile<SingingCharacter>(
          title: const Text('Kesinlikle katılmıyorum'),
          value: SingingCharacter.jefferson3,
          groupValue: _character,
          activeColor: kSurveyText,
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
            });
          },
        ),
      ],
    );
  }
}
