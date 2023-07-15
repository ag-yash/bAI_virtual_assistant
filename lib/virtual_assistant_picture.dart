import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:flutter_voice_assistant/pallete.dart';

class VirtualAssistantPic extends StatelessWidget {
  const VirtualAssistantPic({super.key});

  @override
  Widget build(BuildContext context) {
    return ZoomIn(
      child: Stack(
        children: [
          Center(
            child: Container(
              height: 120,
              width: 120,
              margin: const EdgeInsets.only(top: 4),
              decoration: const BoxDecoration(
                color: Pallete.assistantCircleColor,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Container(
            height: 123,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/baiji.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
