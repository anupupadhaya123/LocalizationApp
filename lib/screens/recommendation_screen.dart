
import 'package:dating_app/screens/recommendation_detail_screen.dart';
import 'package:dating_app/widgets/bottom_nav.dart';
import 'package:dating_app/widgets/switch.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendationScreen extends StatelessWidget {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    // ScreenUtil.init(context, width: 414, height: 896, allowFontScaling: false);
    ScreenUtil.init(context, designSize: Size(414, 896));

    return Scaffold(
      body: Column(
        children: <Widget>[
          _appBar(context),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return RecommendationDetailScreen();
              }));
            },
            child: Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/profile.png',
                    width: ScreenUtil().setWidth(366),
                    height: ScreenUtil().setHeight(622),
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: ScreenUtil().setHeight(40),
                  child: Container(
                    width: ScreenUtil().setWidth(342),
                    height: ScreenUtil().setHeight(104),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(
                        left: ScreenUtil().setWidth(22),
                        top: ScreenUtil().setHeight(24),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Name'.tr().toString() +' ' +'Age'.tr().toString(),
                            style: TextStyle(
                              fontSize: ScreenUtil().setSp(24),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Profile'.tr().toString(),
                            style: TextStyle(
                              fontSize: ScreenUtil().setSp(16),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: ScreenUtil().setHeight(137),
            child: BottomNav(
              width: ScreenUtil().setWidth(248),
              height: ScreenUtil().setHeight(64),
              size1: ScreenUtil().setWidth(64),
              size2: ScreenUtil().setWidth(56),
              size3: ScreenUtil().setWidth(64),
            ),
          ),
        ],
      ),
    );
  }

  Widget _appBar(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(137),
      padding: EdgeInsets.only(
        left: ScreenUtil().setWidth(24),
        right: ScreenUtil().setWidth(24),
        top: ScreenUtil().setHeight(56),
      ),
      child: Container(
        height: ScreenUtil().setHeight(34),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset(
              'assets/images/gridicons_user.png',
              width: ScreenUtil().setWidth(24),
              height: ScreenUtil().setHeight(24),
            ),
            Text(
              'For_You'.tr().toString(),
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xff4e486f),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: SwitchWidgets(),
            )
            // GestureDetector(
            //   onTap: () async {
            //     context.locale = Locale('en', 'US');
            //   },
            //   child: Container(
            //     height: ScreenUtil().setHeight(50),
            //     width: ScreenUtil().setWidth(150),
            //     color: Colors.teal,
            //     child: Center(child: Text("Switch to English")),
            //   ),
            // ),
            // GestureDetector(
            //   onTap: () async {
            //     context.locale = Locale('en', 'NP');
            //   },
            //   child: Container(
            //     height: 50,
            //     width: 120,
            //     color: Colors.blue,
            //     child: Center(child: Text("Switch to Nepali")),
            //   ),
            // ),
            // SizedBox(
            //   width: 10,
            // ),
            
          ],
        ),
      ),
    );
  }
}
