import 'package:absorb_on_loading/absorb_on_loading.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: AbsorbOnLoading(
            builder: (BuildContext context, AbsorbController absorbController,
                Widget child) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(),
                  SizedBox(height: 16),
                  TextField(),
                  SizedBox(height: 16),
                  LoadingButton(
                    absorbController,
                    onPressed: () async {
                      await Future.delayed(Duration(seconds: 5));
                    },
                    child: Text('Update'),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
