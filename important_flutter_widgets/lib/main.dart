import "package:flutter/material.dart";
import "package:ten_flutter_widgets/10_alertdialog.dart";
import "package:ten_flutter_widgets/11_bottomsheet.dart";
import "package:ten_flutter_widgets/12_animated_text_kit.dart";
import "package:ten_flutter_widgets/13_shimmer.dart";
import "package:ten_flutter_widgets/14_tabBar.dart";
import "package:ten_flutter_widgets/15_cachedNetworkImage.dart";
import "package:ten_flutter_widgets/16_splash_screen.dart";
import "package:ten_flutter_widgets/1_container_sizedBox.dart";
import "package:ten_flutter_widgets/2_row_cols_wrap.dart";
import "package:ten_flutter_widgets/3_buttons.dart";
import "package:ten_flutter_widgets/4_snackbar.dart";
import "package:ten_flutter_widgets/5_listview_gridview.dart";
import "package:ten_flutter_widgets/6_Drawer.dart";
import "package:ten_flutter_widgets/7_images.dart";
import "package:ten_flutter_widgets/8_textformfield.dart";
import "package:ten_flutter_widgets/9_dismissible.dart";

void main (){
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        brightness: Brightness.light,
      ),
      home: myTabBar(),
    );
  }
}


