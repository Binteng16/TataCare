import 'package:flutter/material.dart';
import 'package:hospital/widgets/gempa_item.dart';
import '../dto/bmkg_status_gempa.dart';

class StatusGempaPage extends StatefulWidget {
  const StatusGempaPage({Key? key}) : super(key: key);

  @override
  _StatusGempaPageState createState() => _StatusGempaPageState();
}

class _StatusGempaPageState extends State<StatusGempaPage> {
  late Future<BMKGStatusGempa> _future;

  void initState() {
    super.initState();
    _future = BMKGStatusGempa.getBMKGStatusGempa();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: _future,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return CustomScrollView(
                slivers: [
                  SliverAppBar(
                    title: Text('Status Gempa'),
                    backgroundColor: Colors.white,
                  ),
                  SliverList.list(
                      children: snapshot.data!.infogempa.gempa.map((e) {
                    return GempaItem(gempa: e);
                  }).toList()),
                ],
              );
            }
            if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
