import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickbloxSample/views/core/theme.dart';
import 'package:quickbloxSample/widgets/image_viewer/network_viewer.dart';
import 'package:quickbloxSample/widgets/listtile/chat_listile.dart';

class ChatOverview extends StatefulWidget {
  @override
  _ChatOverviewState createState() => _ChatOverviewState();
}

class _ChatOverviewState extends State<ChatOverview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: NestedScrollView(
      physics: ScrollPhysics(parent: PageScrollPhysics()),
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[_header()];
      },
      body: _chatList(),
    ))

        //   Column(children: [_header(), Flexible(child: _chatList())])),
        );
  }

  Widget _header() => SliverAppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        automaticallyImplyLeading: false,
        floating: true,
        snap: false,
        pinned: false,
        expandedHeight: 100,
        stretch: false,
        flexibleSpace: FlexibleSpaceBar(
          background: Container(
            color: Colors.white,
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text('Chat',
                      style: GoogleFonts.montserrat(
                          fontSize: 40,
                          color: Colors.black,
                          fontWeight: FontWeight.w500)),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    iconSize: 35,
                  )
                ],
              ),
            ),
          ),
          collapseMode: CollapseMode.pin,
        ),
      );

  Widget _chatList() => ScrollConfiguration(
        behavior: new ScrollBehavior()
          ..buildViewportChrome(context, null, AxisDirection.down),
        child: ListView.builder(
            itemCount: 30,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.white,
                child: ListTile(
                    hoverColor: Colors.grey.withOpacity(0.3),
                    onTap: () {},
                    onLongPress: () {},
                    leading: NetWorkImg(
                        cornerRadius: 80,
                        fit: BoxFit.contain,
                        height: 80,
                        width: 80,
                        url:
                            "https://www.incimages.com/uploaded_files/image/1920x1080/getty_1215628293_200013332000928069_434121.jpg"),
                    title: Text(
                      'Thiyraash David',
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: primaryColor,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text('Damn you!'),
                    trailing: Column(
                      children: [
                        Text('7.30pm',
                            style: GoogleFonts.montserrat(
                              fontSize: 14,
                              color: primaryColor,
                            ))
                      ],
                    )),
              );
            }),
      );
}
