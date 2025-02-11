import 'package:flutter/material.dart';
import 'package:testh/settings_model.dart';

class ListTileExp extends StatelessWidget {
  ListTileExp({super.key});

  final List<DataModel> settings = [
    DataModel(icon: Icons.person, title: "Account" , count: 1),
    DataModel(icon: Icons.home, title: "Home", count: 1),
    DataModel(icon: Icons.settings, title: "general", count: 1),
    DataModel(icon: Icons.details, title: "Details", count: 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // تستخدم في حاله الضغط علي العنصر
            InkWell(
              onLongPress: (){
                print('Long Press');
              },

              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: ListTile(
                  leading: Icon(Icons.ac_unit , color: Colors.white, size: 20,),
                  title: Text('Cold'),
                  trailing: Icon(Icons.arrow_forward_ios ,size: 20,),

                ),
              ),
            ),
            // تستخدم في حاله معرفه اتجاه الحركه او معرفه احركه علي الشاشه عموما
            GestureDetector(
              onLongPress: (){
                print('Long Press');
              },

              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: ListTile(
                  leading: Icon(Icons.ac_unit , color: Colors.white, size: 20,),
                  title: Text('Cold'),
                  trailing: Icon(Icons.arrow_forward_ios ,size: 20,),

                ),
              ),
            ),
SizedBox(height: 10,),
            // الكارد
            Card(
              elevation: 0.5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: Icon(Icons.ac_unit , color: Colors.blue, size: 20,),
                title: Text('Cold'),
                trailing: Icon(Icons.arrow_forward_ios ,size: 20,),

              ),
            ),
            ListView.separated(
              padding: EdgeInsets.all(10),
              separatorBuilder: (context , index) => Divider(
                height: 1,
                color: Colors.grey,
              ),
              shrinkWrap: true,
              itemCount: settings.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: Icon(settings[index].icon),
                      title: Text(settings[index].title),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),

                  ],
                );
              },
            ),
            RefreshIndicator(
              onRefresh: () {
                return Future.delayed(Duration(seconds: 3));
              },
              child: ListView(
                shrinkWrap: true,
                children: [
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Account'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('General'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    leading: Icon(Icons.details),
                    title: Text('Details'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
