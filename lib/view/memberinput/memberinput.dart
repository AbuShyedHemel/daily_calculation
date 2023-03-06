import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controler/buttonwid/mybutton.dart';
import '../../controler/textfieldwid/customtextfield.dart';

class MemberInput extends StatefulWidget {
  const MemberInput({super.key});

  @override
  State<MemberInput> createState() => _MemberInputState();
}

class _MemberInputState extends State<MemberInput> {
  final nameFieldcontroller = TextEditingController();

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
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
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
                                  controller: nameFieldcontroller,
                                  errorColor: Colors.red,
                                  hint: 'ex : John',
                                  inputType: TextInputType.name,
                                  validator: () {},
                                )),
                              ),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      number = number + 1;
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.add,
                                    size: 15,
                                  )),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      number = number - 1;
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.remove,
                                    size: 15,
                                  ))
                            ]),
                      );
                    }),
                    itemCount: number,
                  ),
                ),

                ///text field

                //button here
                Padding(
                  padding: const EdgeInsets.only(top: 160),
                  child: ElevatedButton(
                    style: buttonstyles,
                    onPressed: () => Get.to(MemberInput()),
                    child: Image.asset(
                      'assets/icons/check.png',
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
              ]),
        ));
  }
}
