abstract class Seorang {
  String? nama;

  String alamak() {
    print("alamak");
    print(this.nama);
    return "alamak";
  }
}

class Turunana extends Seorang {
  void sam() {
    print(super.nama == this.nama);
  }
}

void main() {
  var person = Turunana();
  person.nama = "lala";
  person.sam();
}
