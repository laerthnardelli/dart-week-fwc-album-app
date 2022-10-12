import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:fwc_album_app/app/core/rest/custom_dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              //context.get<CustomDio>().get(  'api/me'); //{"error":"Token could not be parsed from the request.","code":403}
              context.get<CustomDio>().auth().get('api/me');
            },
            child: const Text('Testando auth'),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () async {
                final sp = await SharedPreferences.getInstance();
                sp.clear();

                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/', (route) => false);
              },
              child: const Text('Logout'),
            ),
          ),
        ],
      ),
    );
  }
}
