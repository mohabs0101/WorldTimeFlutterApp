import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data =data.isNotEmpty? data : ModalRoute.of(context)?.settings.arguments as Map;

    String bgimg = data['isDaytime'] ? 'day.png' : 'night.png';
    Color? bgcolor = data['isDaytime'] ? Colors.blue : Colors.indigo[900];

    print(data);

    return Scaffold(
      backgroundColor:bgcolor ,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assits/$bgimg'),
            fit: BoxFit.cover,
          )),
          child: Column(
            children: <Widget>[
              ElevatedButton(
                onPressed: ()async {
                 dynamic result= await Navigator.pushNamed(context, '/location');

                 setState(() {
                   data={
                     'location': result['location'],
                     'time': result['time'],
                     'isDaytime':result['isDaytime'],
                     'flag':result['flag'],
                   };
                 });

                },
                child: Text('chose location'),
              ),
              SizedBox(height: 100.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    data['location'],
                    style: TextStyle(fontSize: 20.0, letterSpacing: 2.0,color: Colors.grey[100]

                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              Text(
                data['time'],
                style: TextStyle(fontSize: 80.0,color: Colors.grey[100]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
