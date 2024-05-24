import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder( itemCount: 2,
        itemBuilder: (context, index) {
          return ListTile(

            leading: Container( height: 60,width: 60,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green,),
                borderRadius: BorderRadius.circular(100,)
              ),
              child: CircleAvatar(maxRadius: 30,
                backgroundImage: index%2==0?AssetImage('assets/asif.jpg'):
                AssetImage('assets/beast.jpg'),
              ),
            ),
            title:index%2==0? Text('Asif Nafees'): Text('Mr Beast'),
            trailing: Text('18:11'),

          );
        },
      ),
    );
  }
}
