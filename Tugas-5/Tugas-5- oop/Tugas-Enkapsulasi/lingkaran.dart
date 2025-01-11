class Lingkaran {
  late double _ruas;

  void setRuas(double value) {
    if (value < 0) {
      value *= -1;
    }
    _ruas = value;
  }

  double getRuas() => _ruas;
  double hitungLuas() => 3.14 * _ruas * _ruas;
}
