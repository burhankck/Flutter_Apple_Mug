import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CoffeeApp extends StatelessWidget {
  const CoffeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          oneCard(context),
          twoCard(),
        ],
      ),
    );
  }

  Positioned oneCard(BuildContext context) {
    return Positioned(
      child: Padding(
        padding: PaddingUI.paddingCard,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoXdeceretion.decorationOne,
          child: Column(
            children: [
              Padding(
                padding: PaddingUI.paddingSymmetric,
                child: Column(
                  children: [
                    const appBarIcon(),
                    Image.asset(ImageMug.appleMug),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Positioned twoCard() {
    return Positioned.fill(
        top: SizedBoxHeightandTop().positionedTop,
        child: SizedBox(
          height: SizedBoxHeightandTop().sizedHeight,
          child: Padding(
            padding: PaddingUI.paddingCard,
            child: Container(
              decoration: BoXdeceretion.decorationTwo,
              child: Padding(
                padding: PaddingUI.paddingSymmetricTwo,
                child: Column(
                  children: [
                    Row(
                      children: [
                        const appleAndmugText(),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const rowStars(),
                            SizedBox(
                                height: SizedBoxHeightandTop().heightSpacer),
                            const Text(textPath.starText,
                                style: textStyleGeneral.MugStyle),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: SizedBoxHeightandTop().heightSpacerThree),
                    const rowColorText(),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

class appBarIcon extends StatelessWidget {
  const appBarIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        IconUI.iconOne,
        IconUI.iconTwo,
      ],
    );
  }
}

class appleAndmugText extends StatelessWidget {
  const appleAndmugText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(textPath.appleText, style: textStyleGeneral.appleAndcolor),
        SizedBox(height: SizedBoxHeightandTop().heightSpacer),
        const Text(
          textPath.mugText,
          style: textStyleGeneral.MugStyle,
        ),
      ],
    );
  }
}

class rowStars extends StatelessWidget {
  const rowStars({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        IconUI.starIcon,
        IconUI.starIcon,
        IconUI.starIcon,
        IconUI.starIcon,
        IconUI.starIconEmpty,
      ],
    );
  }
}

class rowColorText extends StatelessWidget {
  const rowColorText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(textPath.colorText,
                style: textStyleGeneral.appleAndcolor),
            SizedBox(height: SizedBoxHeightandTop().heightSpacer),
            const Text(
              textPath.pickColorText,
              style: textStyleGeneral.MugStyle,
            ),
            SizedBox(height: SizedBoxHeightandTop().heightSpacer),
            const rowColors(),
            SizedBox(height: SizedBoxHeightandTop().heightSpacerFour),
            const rowAddicon(),
            SizedBox(height: SizedBoxHeightandTop().heightSpacerTwo),
            Row(
              children: [
                IconUI.favoriteIcon,
                SizedBox(width: containerHeightWidth().iconWidth),
                const elevetedbuttonWidget(),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class rowAddicon extends StatelessWidget {
  const rowAddicon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            height: containerHeightWidth().iconHeight,
            width: containerHeightWidth().iconWidth,
            color: UIcolor.generalColor,
            child: IconUI.lessIcon),
        SizedBox(width: SizedBoxWidth().sizeWidth),
        const Text(
          textPath.TwoText,
          style: textStyleGeneral.Two,
        ),
        SizedBox(width: SizedBoxWidth().sizeWidth),
        Container(
            height: containerHeightWidth().iconHeight,
            width: containerHeightWidth().iconWidth,
            color: UIcolor.generalColor,
            child: IconUI.addIcon),
        SizedBox(width: SizedBoxHeightandTop().LargeWidth),
        const Text(textPath.moneyText, style: textStyleGeneral.moneyStyle),
      ],
    );
  }
}

class rowColors extends StatelessWidget {
  const rowColors({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        circleAvatars.circleUIcolor,
        SizedBox(width: SizedBoxWidth().sizeWidth),
        circleAvatars.circleBlack,
        SizedBox(width: SizedBoxWidth().sizeWidth),
        circleAvatars.circleBlue,
        SizedBox(width: SizedBoxWidth().sizeWidth),
        circleAvatars.circleRed,
      ],
    );
  }
}

class elevetedbuttonWidget extends StatelessWidget {
  const elevetedbuttonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            backgroundColor: UIcolor.generalColor,
            fixedSize: Size(250, 50)),
        onPressed: () {},
        child: const Text(
          textPath.addText,
          style: TextStyle(fontSize: 18, color: Colors.black),
        ));
  }
}

class containerHeightWidth {
  final double iconHeight = 30;
  final double iconWidth = 30;
}

class circleAvatars {
  static const circleBlue = CircleAvatar(backgroundColor: Colors.blue);
  static const circleBlack = CircleAvatar(
    backgroundColor: Colors.black,
  );
  static const circleUIcolor =
      CircleAvatar(backgroundColor: Color.fromARGB(255, 196, 204, 78));
  static const circleRed = CircleAvatar(
    backgroundColor: Colors.red,
  );
}

class textStyleGeneral {
  static const appleAndcolor =
      TextStyle(fontWeight: FontWeight.w900, color: Colors.black, fontSize: 24);

  static const Two =
      TextStyle(fontWeight: FontWeight.w900, color: Colors.black, fontSize: 26);

  static const MugStyle = TextStyle(
    color: Color.fromARGB(255, 141, 140, 140),
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static const moneyStyle = TextStyle(
      color: UIcolor.generalColor, fontSize: 30, fontWeight: FontWeight.w900);
}

class textPath {
  static const appleText = 'Apple .';
  static const mugText = 'Mug';
  static const starText = '4.5 (450)';
  static const colorText = 'Color';
  static const pickColorText = 'Pick one of the color';
  static const TwoText = "2";
  static const moneyText = '\$ 30';
  static const addText = 'Add to Card';
}

class ImageMug {
  static const appleMug = "assets/apple.png";
}

class IconUI {
  static const iconOne = Icon(
    Icons.chevron_left,
    size: 30,
    color: Colors.black,
  );
  static const iconTwo = Icon(
    Icons.shopping_cart,
    size: 25,
    color: Colors.black,
  );

  static const starIcon = Icon(
    Icons.star,
    color: UIcolor.generalColor,
  );

  static const starIconEmpty =
      Icon(Icons.star_half, color: UIcolor.generalColor);

  static const lessIcon = Icon(
    Icons.horizontal_rule,
    size: 25,
    color: Colors.black,
  );

  static const addIcon = Icon(
    Icons.add,
    size: 25,
    color: Colors.black,
  );

  static const favoriteIcon = Icon(
    Icons.favorite_outline,
    color: UIcolor.generalColor,
    size: 60,
  );
}

class SizedBoxHeightandTop {
  final double sizedHeight = 200;
  final double positionedTop = 450;
  final double heightSpacer = 5;
  final double heightSpacerTwo = 10;
  final double heightSpacerThree = 20;
  final double heightSpacerFour = 25;
  final double LargeWidth = 185;
}

class SizedBoxWidth {
  final double sizeWidth = 8;
}

class UIcolor {
  static const generalColor = Color.fromARGB(255, 196, 204, 78);
  static const cardColor = Colors.white;
}

class PaddingUI {
  static const paddingCard = const EdgeInsets.all(10.0);
  static const paddingSymmetric =
      EdgeInsets.symmetric(horizontal: 30, vertical: 60);
  static const paddingSymmetricTwo = EdgeInsets.all(24.0);
}

class BoXdeceretion {
  static BoxDecoration decorationOne = BoxDecoration(
    color: UIcolor.generalColor,
    borderRadius: BorderRadius.circular(40),
  );

  static BoxDecoration decorationTwo = BoxDecoration(
    color: UIcolor.cardColor,
    borderRadius: BorderRadius.circular(40),
  );
}
