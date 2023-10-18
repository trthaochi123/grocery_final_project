class CartDB {
  final int? id;
  final String name;
  final String weight;

  CartDB({
    this.id,
    required this.name,
    required this.weight,
  });

  // SQLFlite lưu tru DL theo dang Map, List
  Map<String, dynamic> toMapConvert() {
    return {
      "id": id,
      "name": name,
      "weight": weight,
    };
  }
}
