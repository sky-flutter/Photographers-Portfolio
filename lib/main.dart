import 'package:photographer_portfolio/pages/gallery.dart';
import 'package:photographer_portfolio/utils/importStatement.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Montserrat"),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return Gallery();
  }
}
