import 'package:photographer_portfolio/pages/BaseWidget.dart';
import 'package:photographer_portfolio/utils/importStatement.dart';

import 'Menu.dart';

class Gallery extends StatefulWidget {
  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  List<ExpansionPanel> listMenu;

  bool isExpanded = false;


  @override
  Widget build(BuildContext context) {
    BaseWidget.isMenuVisible = true;
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Menu(),
              Container(
                child: Row(
                  children: <Widget>[
                    PopupMenuButton(itemBuilder: (context){
                      return listPeople.map((strKey) => PopupMenuItem(child: PopupMenuItem(child: Text(strKey)),)).toList();
                    },child: Text("People"),),
                    PopupMenuButton(itemBuilder: (context){
                      return listPeople.map((strKey) => PopupMenuItem(child: PopupMenuItem(child: Text(strKey)),)).toList();
                    },child: Text("People"),),
                    PopupMenuButton(itemBuilder: (context){
                      return listPeople.map((strKey) => PopupMenuItem(child: PopupMenuItem(child: Text(strKey)),)).toList();
                    },child: Text("People"),)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  
  var listPeople = [
    "People 1",
    "People 2",
    "People 3"
  ];
}
