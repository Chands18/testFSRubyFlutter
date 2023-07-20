import 'package:flutter/material.dart';
import 'apiservices.dart';
import 'dataclass.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Service serviceApi = Service();
  late Future<List<cData>> listData;

  @override
  void initState() {
    super.initState();
    listData = serviceApi.getAllData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("coba widget"),
        ),
        body: Container(
          child: FutureBuilder<List<cData>>(
            future: listData,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<cData> isiData = snapshot.data!;
                return ListView.builder(
                  itemCount: isiData.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(isiData[index].name ?? ''),
                    );
                  },
                );
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
