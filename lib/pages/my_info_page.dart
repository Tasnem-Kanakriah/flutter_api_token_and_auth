import 'package:flutter/material.dart';

import '../services/auth_service.dart';

class MyInfoPage extends StatelessWidget {
  const MyInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
            future: getMyInfo(),
            builder: (context, snapshot) {
              // if (snapshot.hasData) {
              //   return Center(child: Text(snapshot.data!.email.toString()));
              // }
              if (snapshot.hasData) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(snapshot.data!.image.toString()),
                    Text(
                        "${snapshot.data!.firstName} ${snapshot.data!.maidenName} ${snapshot.data!.lastName}"),
                    Text(snapshot.data!.email.toString()),
                    Text("I live in ${snapshot.data!.address!.city}"),
                    Text(
                      "I work as a ${snapshot.data!.company!.title}\nin the ${snapshot.data!.company!.department} department\nin ${snapshot.data!.company!.address!.city}",
                      textAlign: TextAlign.center,
                    ),
                  ],
                );
              } else if (snapshot.hasError) {
                return const Center(child: Text('You Need Token'));
              } else {
                return const CircularProgressIndicator();
              }
            }),
      ),
    );
  }
}
