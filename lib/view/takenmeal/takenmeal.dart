import 'package:flutter/material.dart';

import '../../controler/buttonwid/mybutton.dart';
import '../../controler/textfieldwid/customtextfield.dart';

class TakenMeal extends StatefulWidget {
  const TakenMeal({super.key});

  @override
  State<TakenMeal> createState() => _TakenMealState();
}

class _TakenMealState extends State<TakenMeal> {
  List nameFieldController = [4];
  // void generateTextController() {
  //   TextEditingController controllerText = TextEditingController();
  //   setState(() {
  //     nameFieldController.add(controllerText);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 200, left: 50, right: 50),
                  child: Text(
                    'PLease enter meals on The Members Board',
                    style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: nameFieldController.length,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(Icons.people_alt),
                              Text("Hemel"),
                              SizedBox(
                                width: size.width / 2,
                                child: Center(
                                    child: CustomTextField(
                                  baseColor: Colors.black,
                                  borderColor: const Color.fromRGBO(
                                      255, 255, 255, 0.702),
                                  controller: nameFieldController[index],
                                  errorColor: Colors.red,
                                  hint: 'ex : John',
                                  inputType: TextInputType.name,
                                  validator: () {},
                                )),
                              ),
                            ]),
                      );
                    }),
                  ),
                ),
                ////check button
                Padding(
                  padding: const EdgeInsets.only(bottom: 115),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ElevatedButton(
                          style: buttonstyles,
                          // ignore: avoid_print
                          onPressed: () => print("Clicked"),
                          child: const Icon(
                            Icons.check_circle,
                            color: Color.fromARGB(255, 43, 148, 240),
                            size: 60,
                          )),
                    ],
                  ),
                ),
                //button here
              ]),
        ));
  }
}
