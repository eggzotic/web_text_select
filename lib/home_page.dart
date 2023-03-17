import 'package:custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:web_text_select/button_text_matcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const finalButtonText = '3rd';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Web CustomText Demo'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('This is regular text'),
            subtitle: const Text('Not selectable'),
            trailing: ElevatedButton(
              onPressed: () {},
              child: const Text('1st'),
            ),
          ),
          const Divider(),
          SelectionArea(
            child: ListTile(
              title: const Text('This is selectable text'),
              subtitle: const Text('Changes the pointer when mouse-over'),
              trailing: ElevatedButton(
                onPressed: () {},
                child: const Text('2nd'),
              ),
            ),
          ),
          const Divider(),
          SelectionArea(
            child: ListTile(
              title: const Text('This is also selectable'),
              subtitle: const Text('But the button keeps the correct pointer, thanks to CustomText'),
              trailing: ElevatedButton(
                onPressed: () {},
                child:  const CustomText(
                  finalButtonText,
                  definitions: [
                    TextDefinition(
                      matcher: ButtonTextMatcher(finalButtonText),
                      mouseCursor: SystemMouseCursors.click,
                    )
                  ],
                ),
              ),
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
