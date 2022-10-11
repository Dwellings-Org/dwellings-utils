import 'package:dwellings_utils/dwellings_utils.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: AppColor.primary,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          const SizedBox(height: 20),
          const SizedBox(
              height: 100,
              child: DwellingsTextField(
                maxLines: 999,
              )),
          const SizedBox(height: 20),
          const DwellingsTextField(maxLength: 80),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: DwellingsTextField(
                  backgroundColor: AppColor.grey.shade50,
                  prefixIcon: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Icon(Icons.timer_sharp),
                  ),
                  hintStyle:
                      AppTextStyle.body.copyWith(color: AppColor.grey.shade400),
                  hintText: "8:00 AM",
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: DwellingsTextField(
                  backgroundColor: AppColor.grey.shade50,
                  prefixIcon: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Icon(Icons.timer_sharp),
                  ),
                  hintStyle:
                      AppTextStyle.body.copyWith(color: AppColor.grey.shade400),
                  hintText: "6:00 PM",
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          DwellingsTextField(
            backgroundColor: AppColor.grey.shade50,
            prefixIcon: const Icon(Icons.search),
            hintText: "Search questions, problems and solutions",
          ),
          const SizedBox(height: 20),
          DwellingsTextField(
            backgroundColor: AppColor.grey.shade50,
            hintText: "Enter Location",
          ),
          const SizedBox(height: 20),
          DwellingsTextField(
            contentPadding: const EdgeInsets.symmetric(vertical: 0),
            prefixIcon: Container(
              margin: const EdgeInsets.only(right: 10),
              color: Colors.amber,
              width: 70,
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: const Center(child: AppText.body("NGN")),
            ),
            backgroundColor: Colors.grey.shade200,
          ),
          const SizedBox(height: 20),
          DwellingsTextField(
            hintText: "Enter Rent Amount",
            contentPadding: EdgeInsets.symmetric(vertical: 0),
            prefixIcon: Container(
              margin: const EdgeInsets.only(
                  right: 10, top: .5, bottom: .5, left: .5),
              decoration: BoxDecoration(
                  color: AppColor.grey.shade50,
                  borderRadius: BorderRadius.circular(3)),
              width: 70,
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: AppText.body2(
                  "NGN",
                  color: AppColor.grey.shade500,
                ),
              ),
            ),
            // backgroundColor: Colors.grey.shade200,
          ),
          const SizedBox(height: 20),
          const DwellingsTextField(isPassword: true),
          const SizedBox(height: 20),
          DwellingsButton(
            enabled: false,
            text: "Happy",
            onPressed: () {},
          ),
          DwellingsButton(
            text: "Happy",
            onPressed: () {},
          ),
          const SizedBox(height: 20),
          DwellingsButton.expanded(
            text: "Happy",
            onPressed: () {},
          ),
          const SizedBox(height: 20),
          DwellingsButton.expanded(
            enabled: false,
            text: "Happy",
            onPressed: () {},
          ),
          const SizedBox(height: 20),
          DwellingsButton.text(
            onPressed: () {},
            icon: const Icon(Icons.add_circle),
            text: "Happy",
            foregroundColor: AppColor.red,
          ),
          DwellingsButton(
            icon: const Icon(Icons.add_circle),
            text: "Happy",
            onPressed: () {},
          ),
          DwellingsButton.expanded(
            icon: const Icon(Icons.add_circle),
            onPressed: () {},
            text: "Happy",
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: DwellingsButton.text(
                  underlineText: true,
                  onPressed: () {},
                  text: "Happy",
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: DwellingsButton(
                  enabled: false,
                  text: "Happy",
                  onPressed: () {},
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const SizedBox(width: 30),
              Expanded(
                  child: DwellingsButton(
                foregroundColor: AppColor.primary,
                backgroundColor: AppColor.grey.shade50,
                onPressed: () {},
                text: "Happy",
              )),
              const SizedBox(width: 30),
              Expanded(
                  child: DwellingsButton(
                text: "Happy",
                onPressed: () {},
              )),
              const SizedBox(width: 30),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: DwellingsButton.text(
                  underlineText: true,
                  onPressed: () {},
                  foregroundColor: AppColor.grey.shade700,
                  text: "Happy",
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                  child: DwellingsButton(
                onPressed: () {},
                enabled: false,
                text: "Happy",
              )),
            ],
          ),
          const Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
