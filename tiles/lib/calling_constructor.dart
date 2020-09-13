import 'constructor.dart';

class constList{
  String name;
  int rollNo;

  listName(int tileNo){
    return student[tileNo].name;
  }

  listRollNo(int tileNo){
    return student[tileNo].rollNo;
  }

  List student = [
    Constructor("Sap1", 1) ,
    Constructor("Sap2", 2) ,
    Constructor("Sap3", 3) ,
    Constructor("Sap4", 4) ,
    Constructor("Sap5", 5) ,
  ];

}

