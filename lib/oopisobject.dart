void main() {
  var Orj = Org(name: "df");
  print(Orj.met());
}

class Org {
  String? name;
  Org({this.name});
  String? met() {
    return name;
  }
}
