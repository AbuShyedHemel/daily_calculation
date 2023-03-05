import 'package:dayly_calculation/view/landingpage/landingpageui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controler/buttonwid/mybutton.dart';
import '../../controler/textfieldwid/customtextfield.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //start image and text
                Stack(
                  children: [
                    Image.asset(
                      'assets/images/beginingbag.png',
                      width: size.width,
                      fit: BoxFit.cover,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 200, left: 50, right: 50),
                      child: Text(
                        'How many Members you want to add to your meal',
                        style: TextStyle(
                            fontSize: 18,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
                //icon and text field
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //ICon here
                    const Icon(Icons.people_alt),
                    const SizedBox(
                      width: 30,
                    ),
                    //textbox here
                    SizedBox(
                      height: size.height / 5,
                      width: size.width / 5,
                      child: Center(
                          child: CustomTextField(
                        baseColor: Colors.black,
                        borderColor: const Color.fromRGBO(255, 255, 255, 0.702),
                        controller: controller,
                        errorColor: Colors.red,
                        hint: 'ex : 4',
                        inputType: TextInputType.number,
                        validator: () {},
                      )),
                    )
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                //button here
                ElevatedButton(
                  style: buttonstyles,
                  onPressed: () => Get.to(const DesignLand()),
                  child: Image.asset(
                    'assets/icons/check.png',
                    height: 50,
                    width: 50,
                  ),
                ),
                //end image
                SizedBox(
                    width: size.width,
                    child: Image.asset(
                      'assets/images/endbeg.png',
                      fit: BoxFit.fitWidth,
                    )),
              ]),
        ),
      ),
    );
  }
}
