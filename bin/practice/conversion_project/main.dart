import 'converter.dart';
import 'converter_class.dart';

void main(){
  // Converter converter = Converter();
  // print(converter.kilometerToMeter(5));
  // print(converter.meterToKiloMeter(1000));
  // print(converter.meterToCentimeter(1));

  KiloMeterToMeter kiloMeterToMeter = KiloMeterToMeter();
  print(kiloMeterToMeter.converterMethod(1));
  MeterToCentiMeter meterToCentiMeter = MeterToCentiMeter();
  print(meterToCentiMeter.converterMethod(1));

}