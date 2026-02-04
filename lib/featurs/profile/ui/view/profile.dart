import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Stack(
          children: [
            Positioned(
              left: MediaQuery.sizeOf(context).width / 2,
              top: MediaQuery.sizeOf(context).height / 2,
              child: Container(
                // width: 50,
                // height: 50,
                // color: Colors.red,
                child: Text('data'),
              ),
            )
            // Positioned(
            //   left: -100,
            //   top: -100,
            //   child: CircleAvatar(
            //     radius: 200,
            //   ),
            // ),
            // Positioned(
            //   right: -250,
            //   top: -200,
            //   child: CircleAvatar(
            //       radius: 300,
            //       backgroundColor:
            //           const Color.fromARGB(255, 194, 237, 151).withAlpha(100)),
            // ),
            // Positioned(
            //   bottom: -250,
            //   left: -200,
            //   child: CircleAvatar(
            //       radius: 300,
            //       backgroundColor:
            //           const Color.fromARGB(255, 194, 237, 151).withAlpha(100)),
            // ),
            // Positioned(
            //   bottom: 100,
            //   right: -280,
            //   child: CircleAvatar(
            //       radius: 250,
            //       backgroundColor:
            //           const Color.fromARGB(255, 151, 184, 237).withAlpha(100)),
            // ),
          ],
        ),
      )),
    );
  }
}
