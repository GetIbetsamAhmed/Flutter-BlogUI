import 'package:bloggingapp/imports/custom_import.dart';

class DetailPage extends StatelessWidget {
  final String? img;
  final String? title;
  const DetailPage({Key? key, this.img, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 35.sp,
            ),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(
              left: 15.sp,
              right: 15.sp,
              bottom: 10.sp,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Height10(),
                CircularImage(
                  width: 1.sw,
                  height: 0.3.sh,
                  img: img!,
                ),
                const Height40(),
                Row(
                  children: [
                    CustomText(
                      text: "By",
                      fontColor: AppTheme.greyColorTheme,
                      fontSize: 15.sp,
                    ),
                    const Width10(),
                    CustomText(text: "Kelly Peter", fontSize: 15.sp),
                  ],
                ),
                const Height40(),
                CustomText(
                    text: title!,
                    maxLines: 4,
                    fontSize: 25.sp,
                    weight: FontWeight.w500,
                    fontFamily: AppTheme.boldRedhat),
                const Height20(),
                Text(
                  Strings.longText,
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: AppTheme.greyColorTheme,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
