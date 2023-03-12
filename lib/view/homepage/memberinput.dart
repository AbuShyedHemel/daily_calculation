import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controler/buttonwid/mybutton.dart';
import '../../controler/textfieldwid/customtextfield.dart';
import '../takenmeal/takenmeal.dart';

class MemberInput extends StatefulWidget {
  const MemberInput({super.key});

  @override
  State<MemberInput> createState() => _MemberInputState();
}

class _MemberInputState extends State<MemberInput> {
  List nameFieldController = [];
  void generateTextController() {
    TextEditingController controllerText = TextEditingController();
    setState(() {
      nameFieldController.add(controllerText);
    });
  }

  int number = 1;

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
                    'PLease enter your meal member names',
                    style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Text(
                  'Click on (+) To add your meal members',
                  style: TextStyle(
                      fontSize: 12,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
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
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      nameFieldController.removeAt(index);
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.cancel_rounded,
                                    size: 30,
                                  ))
                            ]),
                      );
                    }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 115),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ElevatedButton(
                          style: buttonstyles,
                          // ignore: avoid_print
                          onPressed: () => generateTextController(),
                          child: const Icon(
                            Icons.add_circle,
                            size: 60,
                            color: Color.fromARGB(255, 37, 244, 61),
                          )),
                      ElevatedButton(
                          style: buttonstyles,
                          // ignore: avoid_print
                          onPressed: () => Get.to(const TakenMeal()),
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
