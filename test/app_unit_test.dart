import 'package:androidflutterapp/services/world_time.dart';
import 'package:test/test.dart';
import 'package:intl/intl.dart';

void main() {
  late String londonTime;
  late String aucklandTime;
  group("Test GetTime function", () {
    test('London time', () async {
      final testDateTime = WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png');
      await testDateTime.getTime();
      londonTime = testDateTime.time;
      print("London time is $londonTime");
    });

    test("Auckland time", () async {
      final testDateTime = WorldTime(url: 'Pacific/Auckland', location: 'Auckland', flag: 'nz.png');
      await testDateTime.getTime();
      aucklandTime = testDateTime.time;
      print("London time is $aucklandTime");
    });

    test("Check Auckland UTC time is the same as London UTC", () {
      DateTime londonUTC = DateFormat.jm().parse(londonTime);
      DateTime aucklandUTC = DateFormat.jm().parse(aucklandTime);
      expect(londonUTC, aucklandUTC);
    });
  });
  test('play with Unittest', () async {
    var value = await Future.value(10);
    expect(value, 10);
  });
}