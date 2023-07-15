import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:flutter_voice_assistant/pallete.dart';

class ChatBubble extends StatelessWidget {
  final String? generatedImageUrl;
  final String? generatedContent;
  const ChatBubble({
    super.key,
    this.generatedImageUrl,
    this.generatedContent,
  });

  @override
  Widget build(BuildContext context) {
    return FadeInRight(
      child: Visibility(
        visible: generatedImageUrl == null,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          margin: const EdgeInsets.symmetric(horizontal: 40).copyWith(
            top: 30,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: Pallete.borderColor,
            ),
            borderRadius: BorderRadius.circular(20).copyWith(
              topLeft: Radius.zero,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              generatedContent == null
                  ? 'Good Morning, what task can I do for you?'
                  : generatedContent!,
              style: TextStyle(
                fontFamily: 'Cera Pro',
                color: Pallete.mainFontColor,
                fontSize: generatedContent == null ? 25 : 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
