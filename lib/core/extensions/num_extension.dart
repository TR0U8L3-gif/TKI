extension IntegerExtension on int {
  /// Returns the fraction of the value  
  /// 
  /// calculates: `value / 100`
  int get fraction => this ~/ 100; 
}

extension DoubleExtension on double {
  /// Returns the fraction of the value  
  /// 
  /// calculates: `value / 100`
  double get fraction => this / 100; 
}