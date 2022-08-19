import 'package:bloggingapp/imports/custom_import.dart';
import 'package:bloggingapp/screens/page1.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // static const String _title = 'Blogging App';

  @override
  Widget build(BuildContext context) {
    // To NOT supoort landscap style of screen i.e. turns off the screen orientation
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            bottomNavigationBar: menu(),
            body: const TabBarView(
              children: [
                BlogList(),
                BlogList(),
                BlogList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget menu() {
    return SizedBox(
      height: 0.08.sh,
      child: ColoredBox(
        color: Colors.transparent, //const Color(0xFF3F5AA6),
        child: TabBar(
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          // Color.fromARGB(255, 180, 177, 177), // Colors.white70,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorPadding: EdgeInsets.only(bottom: 15.sp),
          indicatorColor: AppTheme
              .primaryColor, // Colors.teal, //Color(0xff5b9e97), // Colors.blue,
          tabs: const [
            Tab(
              text: "Latest",
              // icon: Icon(Icons.euro_symbol),
            ),
            Tab(
              text: "Featured",
              // icon: Icon(Icons.assignment),
            ),
            Tab(
              text: "Premium",
              // icon: Icon(Icons.account_balance_wallet),
            ),
          ],
        ),
      ),
    );
  }
}
