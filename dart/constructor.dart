void main() {
  var some = new Class("Sapna", 29);
  some.student();
}

// class
class Class {
  // another way of defining constructor
  // Class(this.name, this.rollNo);
  // String _name; //private
  String name;
  int rollNo;
  //constructor
  Class(String name, int rollNo) {
    this.name = name;
    this.rollNo = rollNo;
  }
  // function in class -> method
  student() {
    print("I am ${name}\nRoll:no - 29");
  }
}
