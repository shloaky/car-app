import 'package:flutter/material.dart';
class VehicleAdd extends StatefulWidget {
  const VehicleAdd({Key? key}) : super(key: key);

  @override
  _VehicleAddState createState() => _VehicleAddState();
}

class _VehicleAddState extends State<VehicleAdd> {
  @override
  Widget build(BuildContext context) {
    return Container(
   child: Column(
     children: [
       const TextField(
         obscureText: true,
         decoration: InputDecoration(
           border: OutlineInputBorder(),
           labelText: 'Owner',
         ),
       ),

       const TextField(
         obscureText: true,
         decoration: InputDecoration(
           border: OutlineInputBorder(),
           labelText: 'Car model',
         ),
       ),

       const TextField(
         obscureText: true,
         decoration: InputDecoration(
           border: OutlineInputBorder(),
           labelText: 'Licence plate(i.e AAAA-123)',
         ),
       ),
     ],
   ),
    );
  }
}
