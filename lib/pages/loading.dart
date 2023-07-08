import 'package:flutter/material.dart';
import 'package:androidflutterapp/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Loading extends StatefulWidget {
  // const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = "Loading";

  void setupWorldTime () async {
    WorldTime worldtime = WorldTime(location: 'Auckland', flag: 'nz.png', url: 'Pacific/Auckland');
    await worldtime.getTime();
    Navigator.pushReplacementNamed(context, "/home", arguments: {
      'location': worldtime.location,
      'flag': worldtime.flag,
      'time': worldtime.time,
      'isDayTime': worldtime.isDayTime,
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitRing(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
