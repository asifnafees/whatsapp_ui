import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: ListView.builder( itemCount: 20,
        itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: index%2==0?AssetImage('assets/asif.jpg'):
            AssetImage('assets/beast.jpg'),
          ),
          title:index%2==0? Text('Asif Nafees'):
          Text('Mr Beast'),
          subtitle: index%2==0? Text('How are you today?\n Jimmy',):
          Text('I am glad Asif\n And how are you today?\n Asif',),
          trailing: Text('18:11'),

        );
      },
      )
    );
  }
}
