import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce_app/Widgets/HeadLineText.dart';
import 'package:e_commerce_app/Widgets/IconWithText.dart';
import 'package:e_commerce_app/Widgets/SmallText.dart';
import 'package:e_commerce_app/utils/Colors.dart';
import 'package:flutter/material.dart';
import '../../Widgets/FullFoodInfo.dart';
import '../../utils/Dimensions.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  double _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = Dimensions.imagePageContainer;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      //Page image and text content
      Container(
        //color: Colors.deepOrange,
        height: Dimensions.pageContainer,
        child: PageView.builder(
          controller: pageController,
          itemBuilder: (context, index) {
            return _buildPageItem(index);
          },
          itemCount: 5,
        ),
      ),
      //dots slider
      new DotsIndicator(
        dotsCount: 5,
        position: _currPageValue,
        decorator: DotsDecorator(
          activeColor: AppColors.mainColor,
          size: const Size.square(9.0),
          activeSize: const Size(18.0, 9.0),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        ),
      ),
      //Popular text
      SizedBox(height: Dimensions.height20),
      Container(
        margin: EdgeInsets.only(left: Dimensions.width30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            HeadLineText(title: "Popular"),
            SizedBox(
              width: Dimensions.width10,
            ),
            Container(
              margin: EdgeInsets.only(bottom: Dimensions.height3),
              child: HeadLineText(
                title: ".",
                color: Colors.black26,
              ),
            ),
            SizedBox(
              width: Dimensions.width10,
            ),
            Container(
                margin: EdgeInsets.only(bottom: Dimensions.height2),
                child: SmallText(title: "Food pairing")),
          ],
        ),
      ),
      ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(
                left: Dimensions.width10,
                right: Dimensions.width10,
                bottom: Dimensions.height10),
            child: Row(
              children: [
                Container(
                  width: Dimensions.ListViewImgSize,
                  height: Dimensions.ListViewImgSize,
                  decoration: BoxDecoration(
                      color: Colors.white38,
                      borderRadius:
                          BorderRadius.circular(Dimensions.height20),
                      image: DecorationImage(
                          image: index.isEven?AssetImage("assets/images/beef-burger.jpg"):AssetImage("assets/images/Fried-Fish-1.jpg"),
                          fit: BoxFit.cover)),
                ),
                Expanded(
                  child: Container(
                    height: Dimensions.ListViewContentSize,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimensions.height15),
                            bottomRight:
                                Radius.circular(Dimensions.height15))),
                    child: Padding(
                      padding: EdgeInsets.only(left: Dimensions.width10,right: Dimensions.width10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          HeadLineText(title: "Beef burger with french fries"),
                          SmallText(title: 'With current characteristic'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconWithText(
                                  title: 'Normal',
                                  icon: Icons.circle_sharp,
                                  iconColor: AppColors.iconColor1),
                              IconWithText(
                                  title: '1.7km',
                                  icon: Icons.location_on,
                                  iconColor: AppColors.mainColor),
                              IconWithText(
                                  title: '32min',
                                  icon: Icons.access_time_rounded,
                                  iconColor: AppColors.iconColor2),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      )
    ]);
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix4 = new Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height *
          (1 - currScale) /
          2; //220*(1-0.8)/2 = 22 transform down 22 pixle ?
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = _scaleFactor;
      var currTrans = _height * (1 - currScale) / 2;
      matrix4 = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    }

    return Transform(
      transform: matrix4,
      child: Stack(children: [
        Container(
          height: Dimensions.imagePageContainer,
          margin: EdgeInsets.only(
              left: Dimensions.width10, right: Dimensions.width10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.height30),
              color: index.isEven ? Colors.blueGrey : Colors.amberAccent,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/Pizza.jpg'),
              )),
        ),
        Align(
          alignment: AlignmentDirectional.bottomCenter,
          child: Container(
            height: Dimensions.textPageContainer,
            margin: EdgeInsets.only(
                left: Dimensions.width30,
                right: Dimensions.width30,
                bottom: Dimensions.height30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.height20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFe8e8e8),
                  blurRadius: 5,
                  offset: Offset(0, 5),
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(5, 0),
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(-5, 0),
                ),
              ],
            ),
            child: Container(
              padding: EdgeInsets.only(
                  left: Dimensions.width15,
                  right: Dimensions.width15,
                  top: Dimensions.height10),
              child: FullFoodInfo(foodName: "Pizza",),
            ),
          ),
        ),
      ]),
    );
  }
}
