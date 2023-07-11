// ignore_for_file: file_names, camel_case_types

import 'dart:math';

import 'package:bmi_calc/result_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class bmi_calc extends StatefulWidget {
  const bmi_calc({Key? key}) : super(key: key);

  @override
  bmi_calc_state createState() => bmi_calc_state();
}

class bmi_calc_state extends State<bmi_calc> {

  bool isMale = true;
  double height = 120.0;
  double weight = 40;
  int age = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              'BMI Calculator',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale=true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isMale ? Colors.pink:Colors.indigo[800],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.male,
                                size: 90,
                                color: Colors.white,
                              ),
                              Text(
                                'male',
                                style: TextStyle(
                                  color: Colors.white30,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: !isMale ? Colors.pink:Colors.indigo[800],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.female,
                                size: 90,
                                color: Colors.white,
                              ),
                              Text(
                                'female',
                                style: TextStyle(
                                  color: Colors.white30,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.indigo[800],),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Height',
                        style: TextStyle(
                          color: Colors.white30,
                          fontSize: 20,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${height.round()}',
                            style: const TextStyle(
                              color: Colors.white30,
                              fontSize: 40,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Text(
                            'CM',
                            style: TextStyle(
                              color: Colors.white30,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        value: height,
                        max: 220,
                        min: 60,
                        onChanged: (double value) {
                          setState(() {
                            height=value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.indigo[800],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'AGE',
                              style: TextStyle(
                                color: Colors.white30,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              '$age',
                              style: const TextStyle(
                                color: Colors.white30,
                                fontSize: 40,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  heroTag: 'age-',
                                  onPressed: (){
                                    setState(() {
                                      age -=1;
                                    });
                                  },
                                  mini: true,
                                  child: const Icon(
                                    Icons.remove,
                                  ),
                                ),
                                FloatingActionButton(
                                  heroTag: 'age+',
                                  onPressed: (){
                                    setState(() {
                                      age +=1;
                                    });
                                  },
                                  mini: true,
                                  child: const Icon(
                                    Icons.add,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.indigo[800],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Weight',
                              style: TextStyle(
                                color: Colors.white30,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              '${weight.round()}',
                              style: const TextStyle(
                                color: Colors.white30,
                                fontSize: 40,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  heroTag: 'weight-',
                                  onPressed: (){
                                    setState(() {
                                      weight -=1;
                                    });},
                                  mini: true,
                                  child: const Icon(
                                    Icons.remove,
                                  ),
                                ),
                                FloatingActionButton(
                                  heroTag: 'weight+',
                                  onPressed: (){
                                    setState(() {
                                      weight +=1;
                                    });
                                  },
                                  mini: true,
                                  child: const Icon(
                                    Icons.add,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: MaterialButton(
                height: 50,
                color: Colors.pink,
                onPressed: () {
                  var result = weight / pow( height/100 , 2);
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => resultScreen(age: age, result: result, isMale: isMale,),
                  ),
                  );
                },
                child: const Text(
                  'CALCULATE',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
