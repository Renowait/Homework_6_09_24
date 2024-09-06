class A {
  int x = 1;

  A(this.x){print('constructor of class A');}

  /*A(int x){
    this.x = x;
  }*/

  @override
  void showInfo() => print('X = $x');

  @override
  String toString() => "Oject from class A";
}

class B  extends C{
  int y = 2;

  B(this.y,x):super(x){print('constructor of class B');}

  @override
  void showInfo() => print('X = $x, Y = $y');

  @override
  String toString() => "Oject from class B";
}

class C  extends A{
  int x = 5;

  C(this.x):super(x){print('constructor of class C');}

  @override
  void showInfo() => print('X = $x');

  @override
  String toString() => "Oject from class C";
}

void main(List<String> args) {
  var b = B(2,7);
  var c = C(5);
  var a = A(10);
 
 /* print('x = ${b.x}, y = ${b.y}');
  print('x = ${c.x}');
  print('x = ${a.x}'); */

  a.showInfo();
  c.showInfo();
  b.showInfo();

}