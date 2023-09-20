// ignore_for_file: unnecessary_this

class Person {
  String? name;
  int age = 12;
  String? address;

  Person(this.name, this.address);

  String setaddres() {
    address = "jayapura";
    return "berhasil change";
  }

  String? getaddres() {
    return address;
  }

  Person.rediciretd(String n) : this(n, "");
}

class Inther extends Person {
  Inther(String n, String o) : super(n, o);

  @override
  String getaddres() {
    return "berhasil redirect";
  }
}

void main() {
  var person = Person("lula", "");
  print(person.name);
  print(person.age);

  var redic = Inther("lambe", "suryabayo");
  print(redic.getaddres());

  Person per = Person("romi", "jktfortiet");
  print(per.getaddres());
}
