import 'package:flutter/material.dart';

import '../../../pages/account/select_sign_up_page.dart';

class TopBar extends StatelessWidget with PreferredSizeWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.white,
      elevation: 0.0,
      title: GestureDetector(
          child: Image.asset("assets/buydia_logo.png", width: 100, height: 50),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const SelectSignUpPage(); //최초페이지로 연결(나중엔 메인으로 가는 버튼으로 변경)
            }));
          }),
      actions: [
        SizedBox(
          child: TextField(),
          width: 150,
          height: 50,
        ),
        GestureDetector(onTap: () {}, child: const Icon(Icons.search)),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_shopping_cart_outlined)),
        IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              //설정 페이지 연결
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const SelectSignUpPage();
              }));
            })
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
