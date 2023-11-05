class Address {
  final int? id;
  final String country;
  final String state;
  final String city;
  final String pinCode;
  final int typeAddress;
  final bool? isSelected;

  Address({
    this.id,
    required this.country,
    required this.state,
    required this.city,
    required this.pinCode,
    required this.typeAddress,
    this.isSelected
  });

  Map<String, dynamic> toMapConvert() {
    return {
      'id': id,
      'country': country,
      'state': state,
      'city': city,
      'pinCode': pinCode,
      'typeAddress': typeAddress,
      'isSelected': isSelected,
    };
  }

}
