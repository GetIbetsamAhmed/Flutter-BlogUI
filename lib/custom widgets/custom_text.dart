import 'package:bloggingapp/imports/custom_import.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color fontColor;
  final TextAlign textAlign;
  final FontWeight weight;
  final bool underlined, linethrough;
  final String fontFamily;
  final double? fontSize;
  final double lineSpacing, letterSpacing;
  final int maxLines;
  final TextOverflow overflow;

  const CustomText(
      {this.text = "Text",
      this.fontColor = Colors.black,
      this.fontSize,
      this.textAlign = TextAlign.start,
      this.weight = FontWeight.normal,
      this.underlined = false,
      this.lineSpacing = 1,
      this.letterSpacing = 0,
      this.maxLines = 1,
      this.fontFamily = AppTheme.regularRedhat,
      this.overflow = TextOverflow.ellipsis,
      this.linethrough = false,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      softWrap: true,
      maxLines: maxLines,
      overflow:
          //  maxLines != null ?
          TextOverflow.ellipsis,
      //  : overflow,
      textAlign: textAlign,
      style: TextStyle(
        color: fontColor,
        fontWeight: weight,
        height: lineSpacing,
        letterSpacing: letterSpacing,
        fontSize: fontSize ?? 16.sp,
        fontFamily: fontFamily,
        decoration: underlined
            ? TextDecoration.underline
            : (linethrough ? TextDecoration.lineThrough : TextDecoration.none),
      ),
    );
  }
}
