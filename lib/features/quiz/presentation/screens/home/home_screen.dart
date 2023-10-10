import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:test_memberid/features/core/extension.dart';
import 'package:test_memberid/features/core/widgets/spacer.dart';
import 'package:test_memberid/features/core/widgets/text.dart';
import 'package:test_memberid/features/quiz/presentation/screens/quiz/quiz_screen.dart';
import 'package:test_memberid/features/quiz/presentation/screens/topic/topic_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _HeadingSection(),
            VerticalSpacer(val: 20),
            _MenuSection(),
            VerticalSpacer(val: 20),
            _FooterSection(),
          ],
        ),
      ),
    ));
  }
}

class _HeadingSection extends StatelessWidget {
  const _HeadingSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/idea.png',
          height: 80,
        ),
        const VerticalSpacer(val: 20),
        const TitleText('Flutter Quiz App'),
        const LabelText('Learn - Take Quiz - Repeat'),
      ],
    );
  }
}

class _MenuSection extends StatelessWidget {
  const _MenuSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
              padding: const EdgeInsets.symmetric(vertical: 20),
            ),
            onPressed: () {
              context.navigateTo(const QuizScreen());
            },
            child: const ButtonText('Play'),
          ),
        ),
        const VerticalSpacer(),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              shape: const StadiumBorder(),
              side: BorderSide(
                color: Theme.of(context).colorScheme.primary,
              ),
              padding: const EdgeInsets.symmetric(vertical: 20),
            ),
            onPressed: () {
              context.navigateTo(const TopicScreen());
            },
            child: ButtonText(
              'Topics',
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}

class _FooterSection extends StatelessWidget {
  const _FooterSection();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton.icon(
          onPressed: () {
            Share.share(
              'Download now on Google Play Store'
              '\n\n'
              'https://play.google.com/store/apps/details?id=com.whatsapp&hl=id',
            );
          },
          icon: Icon(Icons.share, color: Theme.of(context).colorScheme.primary),
          label: const ButtonText('Share'),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.star, color: Colors.yellow),
          label: const ButtonText('Rate Us'),
        ),
      ],
    );
  }
}
