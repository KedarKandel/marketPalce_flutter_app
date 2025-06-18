import 'package:flutter/material.dart';
import 'package:my_flutter_app/data/notifiers.dart';
import 'package:my_flutter_app/views/pages/Profile_page.dart';
import 'package:my_flutter_app/views/pages/home_page.dart';
import 'package:my_flutter_app/views/widgets/navbar_widget.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("donation app")),
      bottomNavigationBar: NavbarWidget(),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
    );
  }
}
