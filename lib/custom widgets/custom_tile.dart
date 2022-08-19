import 'package:bloggingapp/imports/custom_import.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class CustomTile extends StatelessWidget {
  final String? img;
  final String? title;
  final String? minRead;
  final String? likes;
  final String? comments;
  Function()? ontap;

  CustomTile(
      {Key? key,
      this.img,
      this.title,
      this.minRead,
      this.likes,
      this.comments,
      this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Row(
        children: [
          CircularImage(
            width: 0.4.sw,
            height: 0.15.sh,
            img: img!,
          ),
          const Width40(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                    text: minRead!,
                    fontColor: AppTheme.greyColorTheme,
                    fontSize: 13.sp),
                const Height10(),
                CustomText(
                    text: title!,
                    maxLines: 3,
                    fontSize: 18.sp,
                    weight: FontWeight.w500,
                    fontFamily: AppTheme.boldRedhat),
                const Height10(),
                Row(
                  children: [
                    TextIcon(
                      text: likes!,
                      icon: FontAwesomeIcons.thumbsUp,
                    ),
                    const Width80(),
                    TextIcon(
                      text: comments!,
                      icon: FontAwesomeIcons.comment,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TextIcon extends StatelessWidget {
  final IconData? icon;
  final String? text;
  const TextIcon({Key? key, this.text, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomText(
          text: text!,
          fontSize: 13.sp,
        ),
        const Width20(),
        FaIcon(
          icon,
          size: 17.sp,
        ),
      ],
    );
  }
}

class CircularImage extends StatelessWidget {
  final String? img;
  final double? width;
  final double? height;
  const CircularImage({Key? key, this.img, this.width, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.sp),
      child: Image.asset(
        img!,
        height: height!, // 0.15.sh,
        width: width, // 0.4.sw,
        fit: BoxFit.cover,
      ),
    );
  }
}
