import 'package:bloggingapp/imports/custom_import.dart';
import 'package:bloggingapp/screens/detail_page.dart';

class BlogList extends StatelessWidget {
  const BlogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(0.1.sh),
          child: Padding(
            padding: EdgeInsets.only(top: 6.sp),
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: Icon(
                Icons.menu,
                color: Colors.black,
                size: 35.sp,
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 20.sp),
                  child: CircleAvatar(
                    radius: 20.sp,
                    backgroundImage: const AssetImage(AssetImages.blogImg6),
                  ),
                )
              ],
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10.sp,
              horizontal: 15.sp,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                    text: Strings.blogText,
                    fontSize: 35.sp,
                    weight: FontWeight.w700,
                    fontFamily: AppTheme.boldRedhat),
                const Height40(),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0.sp),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(207, 233, 232, 232),
                    prefixIcon: Icon(
                      Icons.search_rounded,
                      color: Colors.black,
                      size: 30.sp,
                    ),
                    hintText: Strings.searchBlogText,
                  ),
                ),
                const Height40(),
                CustomTile(
                  ontap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DetailPage(
                                  img: AssetImages.blogImg1,
                                  title: Strings.cardTitle1,
                                )));
                  },
                  img: AssetImages.blogImg1,
                  minRead: Strings.minReadText7,
                  title: Strings.cardTitle1,
                  likes: Strings.likes1,
                  comments: Strings.comments3,
                ),
                const Height20(),
                CustomTile(
                  ontap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DetailPage(
                                  img: AssetImages.blogImg2,
                                  title: Strings.cardTitle2,
                                )));
                  },
                  img: AssetImages.blogImg2,
                  minRead: Strings.minReadText5,
                  title: Strings.cardTitle2,
                  likes: Strings.likes2,
                  comments: Strings.comments1,
                ),
                const Height20(),
                CustomTile(
                  ontap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DetailPage(
                                  img: AssetImages.blogImg3,
                                  title: Strings.cardTitle3,
                                )));
                  },
                  img: AssetImages.blogImg3,
                  minRead: Strings.minReadText10,
                  title: Strings.cardTitle3,
                  likes: Strings.likes3,
                  comments: Strings.comments4,
                ),
                const Height20(),
                CustomTile(
                  ontap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DetailPage(
                                  img: AssetImages.blogImg4,
                                  title: Strings.cardTitle4,
                                )));
                  },
                  img: AssetImages.blogImg4,
                  minRead: Strings.minReadText5,
                  title: Strings.cardTitle4,
                  likes: Strings.likes4,
                  comments: Strings.comments3,
                ),
                const Height20(),
                CustomTile(
                  ontap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DetailPage(
                                  img: AssetImages.blogImg5,
                                  title: Strings.cardTitle2,
                                )));
                  },
                  img: AssetImages.blogImg5,
                  minRead: Strings.minReadText7,
                  title: Strings.cardTitle2,
                  likes: Strings.likes5,
                  comments: Strings.comments2,
                ),
                const Height20(),
                CustomTile(
                  ontap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DetailPage(
                                  img: AssetImages.blogImg6,
                                  title: Strings.cardTitle3,
                                )));
                  },
                  img: AssetImages.blogImg6,
                  minRead: Strings.minReadText10,
                  title: Strings.cardTitle3,
                  likes: Strings.likes1,
                  comments: Strings.comments1,
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
