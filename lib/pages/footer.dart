import 'package:photographer_portfolio/pages/BaseWidget.dart';
import 'package:photographer_portfolio/utils/importStatement.dart';

class Footer extends StatefulWidget {
  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  var isSmallScreen;
  double width;

  @override
  Widget build(BuildContext context) {
    width = BaseWidget.getWidth(context);
    isSmallScreen =  BaseWidget.isSmallScreen(context);
    return footer();
  }

  footer() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: isSmallScreen ? 0 :  width* 0.04,
          bottom: isSmallScreen ? 0 : width * 0.04),
      child: BaseWidget.isSmallScreen(context)
          ? contactUs()
          : Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: footerData(),
      ),
    );
  }

  footerData() {
    return <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: Strings.listWeddingFooterMenu,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: Strings.listFineArts,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: Strings.listProducts,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: Strings.listSports,
      ),
    ];
  }

  contactUs() {
    return Container(
      width: double.infinity,
      color: CustomColors.colorBg,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 24,top: 24),
            child: Text(
              "Contact Us",
              style:
              TextStyle(fontWeight: FontWeight.w600, color: Colors.black,fontSize: 32),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 24, top: 16, right: 16),
            child: Text(
              "Thank you for visiting my website, I hope you enjoy it. Contact me for booking, inquiries or just to say hello :)",
              style:
              TextStyle(fontWeight: FontWeight.w400, color: Colors.black),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 24, top: 16, right: 16),
            child: TextField(
              keyboardType: TextInputType.text,
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  labelText: "Name",
                  labelStyle: TextStyle(color: Colors.black),
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 24, top: 16, right: 16),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  labelText: "Email",
                  labelStyle: TextStyle(color: Colors.black),
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 24, top: 16, right: 16),
            child: TextField(
              keyboardType: TextInputType.multiline,
              minLines: 4,
              maxLines: 4,
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  labelText: "Message",
                  labelStyle: TextStyle(color: Colors.black),
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 24,right: 16),
                padding: EdgeInsets.only(top: 8,bottom: 8,right: 16,left: 16),
                color: Colors.black,
                child: GestureDetector(
                  child: Row(
                    children: <Widget>[
                      Text("Submit",style: TextStyle(color: Colors.white),),
                      SizedBox(width: 24,),
                      Icon(Icons.arrow_forward,color: Colors.white,)
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 36,)
        ],
      ),
    );
  }
}
