import 'package:bloggingapp/imports/custom_import.dart';

class Width10 extends StatelessWidget {
  const Width10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.01,
    );
  }
}

class Width20 extends StatelessWidget {
  const Width20({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.02,
    );
  }
}

class Width40 extends StatelessWidget {
  const Width40({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.04,
    );
  }
}

class Width80 extends StatelessWidget {
  const Width80({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.08.sw,
    );
  }
}
