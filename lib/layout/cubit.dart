import 'package:age_calculator/age_calculator.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//===================import age calculator library=======================
import 'package:calculateyourage/layout/status.dart';

class cubit extends Cubit<status>{
  cubit():super(initialStatus());

  static cubit get(context)=>BlocProvider.of(context);

  var dateController =TextEditingController();



  //===================birth function=====================
  void calculateYourAge({
    required DateTime birth,
    // required int years,
    // required int months,
    // required int days,
}){
    DateTime now = DateTime.now();
    Duration age = now.difference(birth);

     int years = (age.inDays ~/ 365)  ;
     int months = (age.inDays % 365) ~/30  ;
     int days = (age.inDays % 365) %30  ;

    print(years);
    print(months);
    print(days);
    // Find out your age as of today's date 2021-03-08
    // Your age is Years: 24, Months: 0, Days: 3
  }


}