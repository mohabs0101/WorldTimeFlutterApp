import 'package:flutter/material.dart';
import 'package:world_time/Services/WorldTime.dart';

class choose_location extends StatefulWidget {
  @override
  State<choose_location> createState() => _choose_locationState();
}

class _choose_locationState extends State<choose_location> {

  List<world_time> locations = [
    world_time(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    world_time(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    world_time(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    world_time(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    world_time(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    world_time(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    world_time(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    world_time(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
    world_time(url: 'Asia/Baghdad', location: 'Baghdad', flag: 'download.png'),

  ];
  @override
  void initState() {
    super.initState();
  }

  void UpdateTime(index) async
  {
world_time instance =locations[index];
await instance.gettime();
Navigator.pop(context,{

  'location': instance.location,
  'time': instance.time,
  'isDaytime':instance.isDaytime,
  'flag':instance.flag,
});

  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('choose location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: () {
                    UpdateTime(index);
                    // print(locations[index].location);
                  },
                  title: Text(locations[index].location),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets2/${locations[index].flag}'),
                  ),
                ),
              ),
            );
          }
      ),

    );
  }
}
