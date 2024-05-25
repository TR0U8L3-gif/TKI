extension IntegerExtension on int {
  /// Returns the fraction of the value  
  /// 
  /// calculates: `value / 100`
  int get fraction => this ~/ 100;

  int larger(int value) => this > value ? this : value;
  
  int smaller(int value) => this < value ? this : value; 
}

extension DoubleExtension on double {
  /// Returns the fraction of the value  
  /// 
  /// calculates: `value / 100`
  double get fraction => this / 100; 

  double larger(double value) => this > value ? this : value;

  double smaller(double value) => this < value ? this : value;
}