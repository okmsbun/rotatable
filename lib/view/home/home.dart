import 'package:flutter/material.dart';

import '../../extension/context_extension.dart';
import '../../widget/rotatable_widget.dart';

part 'app_bar.dart';
part 'text_field_container.dart';
part 'title.dart';

class Home extends StatelessWidget {
  const Home();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: _AppBar(),
      body: Column(
        children: [
          Row(children: [Padding(padding: EdgeInsets.only(left: 128), child: _Title())]),
          SizedBox(height: 96),
          Row(children: [Expanded(child: _TextFieldContainer(text: 'Username'))]),
          SizedBox(height: 64),
          Row(children: [Expanded(child: _TextFieldContainer(text: 'Password'))]),
        ],
      ),
    );
  }
}
