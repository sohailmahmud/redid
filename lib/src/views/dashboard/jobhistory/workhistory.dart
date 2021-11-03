import 'package:flutter/material.dart';

class WorkHistory extends StatefulWidget {
  const WorkHistory({Key? key}) : super(key: key);
  static String tag = 'WorkHistory';

  @override
  WorkHistoryState createState() => WorkHistoryState();
}

class WorkHistoryState extends State<WorkHistory> {
  List<Widget> widgets = <Widget>[];

  @override
  void initState() {
    super.initState();
    widgets = <Widget>[
      const Text(
        "This is a sample text",
        style: TextStyle(fontSize: 40),
      ),
      ElevatedButton(
        child: const Text("click"),
        onPressed: () {
          debugPrint("clicked");
          debugPrint('widgets: $widgets');
          widgets.insert(0, const SampleContainer());
          setState(() {});
        },
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: widgets,
      ),
    );
  }
}

show() {
  return const SampleContainer();
}

class SampleContainer extends StatefulWidget {
  const SampleContainer({Key? key}) : super(key: key);

  @override
  _SampleContainerState createState() => _SampleContainerState();
}

class _SampleContainerState extends State<SampleContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const Text(
        "This is an additional Widget!!",
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}
