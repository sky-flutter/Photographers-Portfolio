import 'package:photographer_portfolio/pages/BaseWidget.dart';
import 'package:photographer_portfolio/utils/importStatement.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseWidget.isSmallScreen(context)
        ? mobileHeader()
        : AnimatedOpacity(
            opacity: BaseWidget.isMenuVisible ? 1 : 0,
            duration: Duration(milliseconds: 500),
            child: menu(),
          );
  }

  menu() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 16, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset("assets/ic_logo.png"),
          SizedBox(),
          SizedBox(),
          Row(
            children: <Widget>[
              Text(
                "Awards",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black.withOpacity(.6)),
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                "Shots",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black.withOpacity(.6)),
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                "Blog",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black.withOpacity(.6)),
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                "Who we are",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black.withOpacity(.6)),
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                "Find us",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black.withOpacity(.6)),
              ),
            ],
          ),
          SizedBox(),
          Row(
            children: <Widget>[
              Icon(Icons.call),
              Text(
                "+91 9949 63 6868",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black.withOpacity(.6)),
              ),
            ],
          ),
        ],
      ),
    );
  }

  mobileHeader() {
    return Container(
      height: 80,
      color: Colors.white,
      padding: EdgeInsets.all(24),
      alignment: Alignment.topCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset("assets/ic_logo.png"),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.call),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu),
              ),
            ],
          )
        ],
      ),
    );
  }
}
