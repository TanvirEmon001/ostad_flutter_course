abstract class ConverterClass {
  double converterMethod(double value);
}

class KiloMeterToMeter extends ConverterClass {
  @override
  double converterMethod(double value) {
    return value * 1000;
  }
}

class MeterToCentiMeter extends ConverterClass {
  @override
  double converterMethod(double value) {
    return value * 100;
  }
}

class CentiMeterToMilliMeter extends ConverterClass {
  @override
  double converterMethod(double value) {
    return value * 10;
  }
}