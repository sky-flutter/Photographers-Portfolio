import 'package:photographer_portfolio/pages/BaseWidget.dart';
import 'package:photographer_portfolio/pages/Menu.dart';
import 'package:photographer_portfolio/utils/importStatement.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with TickerProviderStateMixin {
  double width, height;
  List staggeredTiles;
  List<String> listImage = [
    "https://images.unsplash.com/photo-1534455700361-eca9c3dbc981?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=200&q=80",
    "https://images.unsplash.com/photo-1492691527719-9d1e07e534b4?ixlib=rb-1.2.1&auto=format&fit=crop&w=200&q=80",
    "https://images.unsplash.com/photo-1562887245-f2d5024f6134?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=200&q=80",
    "https://images.unsplash.com/photo-1534455700361-eca9c3dbc981?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=200&q=80",
    "https://images.unsplash.com/photo-1580732159583-5cee0aee9e94?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=200&q=80",
    "https://images.unsplash.com/photo-1580745389708-2b93cde2d66b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=200&q=80",
    "https://images.unsplash.com/photo-1519222743276-83d2c2225e4a?ixlib=rb-1.2.1&auto=format&fit=crop&w=200&q=80",
    "https://images.unsplash.com/photo-1519309162334-a2e1188df150?ixlib=rb-1.2.1&auto=format&fit=crop&w=200&q=80",
  ];
  List<StaggeredTile> staggeredCount;
  ScrollController mScrollController;
  int opacity = 0;

  double firstPage = 0.87;
  double secondPage = 0.92;
  double thirdPage = 0.96;
  double fourthPage = 1.0;

  bool isLargeScreen, isMediumScreen, isSmallScreen;

  @override
  void initState() {
    super.initState();
    mScrollController = ScrollController();
    mScrollController.addListener(() {
      if (mScrollController.position.pixels >= 100) {
        setState(() {
          opacity = 1;
        });
      }
    });
  }

  // ignore: missing_return
  bool _scrollListener(ScrollNotification scrollInfo) {
    if (scrollInfo.metrics.axis == Axis.vertical) {
      var position = scrollInfo.metrics.pixels - 350 / 20;
      if (position > 450) {
        setState(() {
          BaseWidget.isMenuVisible = true;
        });
      } else {
        setState(() {
          BaseWidget.isMenuVisible= false;
        });
      }
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    isLargeScreen = BaseWidget.isLargeScreen(context);
    isMediumScreen = BaseWidget.isMediumScreen(context);
    isSmallScreen = BaseWidget.isSmallScreen(context);
    width = BaseWidget.getWidth(context);
    height = BaseWidget.getHeight(context);
    return Scaffold(
      backgroundColor: CustomColors.colorBg,
      body: NotificationListener(
        onNotification: _scrollListener,
        child: Container(
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(
                  controller: mScrollController,
                  child: Column(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Visibility(
                            child: headerImage(),
                            visible: !isSmallScreen,
                          ),
                          Container(
                            margin:
                            EdgeInsets.only(top: isSmallScreen ? 100 : 400),
                            child: carousel(context),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: isSmallScreen ? height * .1 : height * .2,
                      ),
                      createLatestFromClient(),
                      line(),
                      createAwardWinnerSection(),
                      experiencedPhotographerSection(),
                      subscribe(),
                      line(),
                      Footer(),
                      line(),
                      copyright(),
                    ],
                  )),
              Menu()
            ],
          ),
        ),
      ),
    );
  }

  Container createLatestFromClient() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 24, bottom: 24),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: width * 0.04,
          ),
          Text(
            "Latest from our clients",
            style: TextStyle(
                fontSize: 24, color: Colors.black, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("''\t",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w900,
                                fontSize: 22)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type.",
                        ),
                      ],
                    ),
                    flex: 4,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text("''\t",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w900,
                                fontSize: 22)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 48,
          ),
          Container(
            constraints: BoxConstraints(minWidth: 56, maxWidth: 126),
            padding: EdgeInsets.only(top: 8, bottom: 8),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2)),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 12,
                ),
                Text(
                  "View All",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 12,
                ),
                Image.asset("assets/ic_view_all_arrow.png")
              ],
            ),
          ),
          SizedBox(
            height: width * 0.04,
          ),
        ],
      ),
    );
  }

  headerImage() {
    return Container(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.asset(
                "assets/ic_header_image.png",
                scale: isSmallScreen ? 2 : 0.1,
              ),
            ],
          )
        ],
      ),
    );
  }

  carousel(BuildContext context) {
    return Container(
        alignment: Alignment.bottomCenter,
        height: isSmallScreen ? height * .54 : height * .84,
        margin: EdgeInsets.only(
            left: isSmallScreen ? width * .05 : width * .10,
            right: isSmallScreen ? width * .05 : width * .10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Stack(
          children: <Widget>[
            Visibility(
              visible: !isSmallScreen,
              child: Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(top: 32, bottom: 12),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 48,
                    ),
                    Image.asset("assets/ic_logo.png"),
                    SizedBox(
                      width: 48,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Awards",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black.withOpacity(.6)),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Text(
                          "Shots",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black.withOpacity(.6)),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Text(
                          "Blog",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black.withOpacity(.6)),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Text(
                          "Who we are",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black.withOpacity(.6)),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Text(
                          "Find us",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black.withOpacity(.6)),
                        ),
                        SizedBox(
                          width: width * .05,
                        ),
                      ],
                    ),
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
              ),
            ),
            Container(
              alignment:
              isSmallScreen ? Alignment.centerLeft : Alignment.centerLeft,
              margin: EdgeInsets.only(
                  left: isSmallScreen ? 24 : 96, top: isSmallScreen ? 24 : 96),
              child: Column(
                mainAxisAlignment: isSmallScreen
                    ? MainAxisAlignment.start
                    : MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "We are creative",
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                  Text(
                    "Photographers",
                    style: TextStyle(
                        fontSize: 36,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  right: 8,
                  bottom: 10,
                  left: isSmallScreen ? 24 : 0,
                  top: isSmallScreen ? 16 : 94),
              alignment: Alignment.bottomRight,
              child: Image.asset("assets/ic_group_photography.png"),
            ),
            Container(
              margin: EdgeInsets.only(left: 8, bottom: 10),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: <Widget>[
                  Container(
                    width: 5,
                    height: 54.96,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Colors.grey),
                  ),
                  Align(
                    alignment: Alignment(-1.0, secondPage),
                    child: Container(
                      width: 5,
                      height: 18.32,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }

  createAwardWinnerSection() {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: isSmallScreen ? width * 0.1 : width * 0.04,
          ),
          Text(
            "NPS Awards Winner",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600, fontSize: 24),
          ),
          SizedBox(
            height: width * 0.02,
          ),
          isSmallScreen
              ? Container(
            margin: EdgeInsets.all(8),
            width: isSmallScreen ? width * .95 : width * .6,
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, and scrambled it to make a type specimen book",
              softWrap: true,
            ),
          )
              : Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry’s standard\ndummy text ever since the 1500s, and scrambled it to make a type specimen book",
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: width * 0.05,
          ),
          Container(
            width: isSmallScreen ? width * .95 : width * .4,
            child: GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              crossAxisSpacing: 12,
              childAspectRatio: 1.5,
              mainAxisSpacing: 12,
              primary: true,
              children: List.generate(
                  listImage.length,
                      (index) => Container(
                    height: isSmallScreen ? 400 : 200,
                    width: isSmallScreen ? 400 : 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: NetworkImage(listImage[index]),
                        )),
                  )),
            ),
          ),
          SizedBox(
            height: isSmallScreen ? width * 0.1 : width * 0.04,
          ),
          Text(
            "View All",
            style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
          ),
          SizedBox(
            height: width * 0.01,
          ),
          RotatedBox(
            quarterTurns: 1,
            child: Image.asset("assets/ic_view_all_arrow.png"),
          ),
          SizedBox(
            height: width * 0.04,
          ),
        ],
      ),
    );
  }

  line() {
    return Container(
      height: 1,
      color: CustomColors.colorLine.withOpacity(.2),
    );
  }

  experiencedPhotographerSection() {
    return Container(
      width: double.infinity,
      color: CustomColors.colorBg,
      padding: EdgeInsets.only(
        top: width * 0.06,
        bottom: width * 0.06,
      ),
      child: isSmallScreen
          ? Column(
        children: awardData(),
      )
          : Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: awardData(),
      ),
    );
  }

  awardData() {
    return <Widget>[
      SizedBox(
        width: 48,
        height: isSmallScreen ? 16 : 0,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                Strings.weAre,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 24),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                Strings.experienced,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 48),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                Strings.photographers,
                style: TextStyle(color: Colors.black, fontSize: 22),
              )
            ],
          )
        ],
      ),
      SizedBox(
        width: 48,
        height: isSmallScreen ? 16 : 0,
      ),
      isSmallScreen
          ? Container(
          margin: EdgeInsets.all(16),
          child: Text(Strings.experiencePhotographerDetails))
          : Flexible(
          child: Container(
              child: Text(Strings.experiencePhotographerDetails))),
      SizedBox(
        width: 48,
        height: isSmallScreen ? 16 : 0,
      ),
    ];
  }

  subscribe() {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: width * 0.04,
          ),
          Container(
            margin: EdgeInsets.only(
                left: isSmallScreen ? 16 : 0, right: isSmallScreen ? 16 : 0),
            child: Text(
              "Subscribe with us and Get free image",
              textAlign: isSmallScreen ? TextAlign.center : TextAlign.justify,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 24),
            ),
          ),
          SizedBox(
            height: isSmallScreen ? width * 0.1 : width * 0.02,
          ),
          Container(
            width: isSmallScreen ? width * 0.8 : width * 0.3,
            color: Colors.black,
            margin: EdgeInsets.only(
                left: isSmallScreen ? 16 : 0, right: isSmallScreen ? 16 : 0),
            child: Padding(
              padding: const EdgeInsets.only(top: 4, left: 12),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Your email here",
                    hintStyle: TextStyle(color: Colors.white),
                    labelStyle: TextStyle(color: Colors.white),
                    suffixIcon: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                    fillColor: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: isSmallScreen ? width * 0.1 : width * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/ic_facebook.png"),
              SizedBox(
                width: 24,
              ),
              Image.asset("assets/ic_flickr.png"),
              SizedBox(
                width: 24,
              ),
              Image.asset("assets/ic_instagram.png"),
              SizedBox(
                width: 24,
              ),
              Image.asset("assets/ic_linkedin.png"),
              SizedBox(
                width: 24,
              ),
              Image.asset("assets/ic_twitter.png"),
            ],
          ),
          SizedBox(
            height: width * 0.06,
          ),
        ],
      ),
    );
  }

  copyright() {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      width: double.infinity,
      padding: EdgeInsets.all(16),
      child: Text("© 2020 ClockVision. All Rights Reserved. "),
    );
  }

}