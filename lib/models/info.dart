class info {
  String? _foodName;
  String? _plusNumber;
  String? _pic;

  info({String? foodName, String? plusNumber, String? pic}) {
    if (foodName != null) {
      this._foodName = foodName;
    }
    if (plusNumber != null) {
      this._plusNumber = plusNumber;
    }
    if (pic != null) {
      this._pic = pic;
    }
  }

  String? get foodName => _foodName;
  set foodName(String? foodName) => _foodName = foodName;
  String? get plusNumber => _plusNumber;
  set plusNumber(String? plusNumber) => _plusNumber = plusNumber;
  String? get pic => _pic;
  set pic(String? pic) => _pic = pic;

  info.fromJson(Map<String, dynamic> json) {
    _foodName = json['food_name'];
    _plusNumber = json['plus_number'];
    _pic = json['pic'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['food_name'] = this._foodName;
    data['plus_number'] = this._plusNumber;
    data['pic'] = this._pic;
    return data;
  }
}

