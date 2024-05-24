import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder( itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: index%2==0?AssetImage('assets/asif.jpg'):
              AssetImage('assets/beast.jpg'),
            ),
            title:index%2==0? Text('Asif Nafees'):
            Text('Mr Beast'),
            trailing:Icon(index%2==0?Icons.video_call_outlined:Icons.call,color: Colors.green,)

          );
        },
      ),
    );
  }
}
