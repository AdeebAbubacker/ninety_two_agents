import 'package:flutter/material.dart';

class ProfileCircle extends StatelessWidget {
  const ProfileCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      customBorder: const CircleBorder(),
      child: SizedBox(
        height: 81,
        width: 81,
        child: Stack(
          clipBehavior: Clip.none,
          fit: StackFit.expand,
          children: [
            CircleAvatar(
                radius: 30,
                backgroundColor: const Color.fromARGB(255, 235, 234, 234),
                child: ClipOval(
                  child: Container(
                    color: const Color.fromARGB(255, 235, 234, 234),
                    child: const Icon(
                      Icons.person,
                      size: 59,
                      color: Colors.grey,
                    ),
                  ),
                )),
            Positioned(
                right: -6,
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0XFF172038),
                      borderRadius: BorderRadius.circular(50)),
                  height: 30,
                  width: 30,
                  child: const Icon(
                    size: 15,
                    Icons.camera_alt_rounded,
                    color: Colors.white,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
