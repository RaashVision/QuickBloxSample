import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickbloxSample/views/core/theme.dart';

class ChatListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListTile(
          hoverColor: Colors.grey.withOpacity(0.3),
          onTap: () {},
          onLongPress: () {},
          leading: CircleAvatar(
            radius: 30,
            backgroundColor: primaryColor,
          ),
          title: Text(
            'Thiyraash David',
            style: GoogleFonts.montserrat(
                fontSize: 14, color: primaryColor, fontWeight: FontWeight.w500),
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
  }
}
