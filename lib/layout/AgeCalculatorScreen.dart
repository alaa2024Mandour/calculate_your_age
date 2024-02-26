import 'package:calculateyourage/layout/cubit.dart';
import 'package:calculateyourage/layout/status.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Shared/component/component.dart';


/*var dayController =TextEditingController();
var monthController =TextEditingController();
var yearController =TextEditingController();*/



class AgeCalculatorScreen extends StatelessWidget {
  @override

  late int years;
  late int months;
  late int days;

  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => cubit(),
      child: BlocConsumer<cubit,status>(
          listener: (context,status state) { },
          builder: (context,status state){
            var controller =cubit.get(context);
           return Scaffold(
              body: Container(
                width: double.infinity,
                color: Colors.grey[300],
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color:Colors.white,
                          borderRadius:BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(70),
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom:25),
                              child: Row(
                                children: [
                                  // DefultDataInput(
                                  //     label: 'Age',
                                  //     hintText: 'Enter Your Age',
                                  //     controller:controller.dateController,
                                  //   // onTap: (){
                                  //   //     showDatePicker(
                                  //   //         context: context,
                                  //   //         initialDate: DateTime.now(),
                                  //   //         firstDate: DateTime(1900),
                                  //   //         lastDate: DateTime.now(),
                                  //   //     ).then((value){
                                  //   //      if (value != null){
                                  //   //        cubit.get(context).calculateYourAge(
                                  //   //          birth: value,
                                  //   //          years: years,
                                  //   //          months: months,
                                  //   //          days: days,);
                                  //   //      }
                                  //   //     });
                                  //   // }
                                  // ),
                                ],
                              ),
                            ),
                            Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Container(
                                    width: double.infinity,
                                    height: 2,
                                    color: Colors.grey[300],
                                  ),
                                ),
                                Center(
                                  child: GestureDetector(
                                    onTap: (){
                                        showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime(1900),
                                          lastDate: DateTime.now(),
                                        ).then((value){
                                          if (value != null){
                                            cubit.get(context).calculateYourAge(birth: value,);
                                          }
                                        });
                                    },
                                    child: CircleAvatar(
                                      backgroundColor:mainColor,
                                      radius: 30,
                                      child: Icon(
                                        Icons.arrow_downward,
                                        color: Colors.white,
                                        size: 40,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height:15,),
                            Result(text: "years",),
                            Result(text: "months",),
                            Result(text: "days",),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }
      ),
    );
  }
}
