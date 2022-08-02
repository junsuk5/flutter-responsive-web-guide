import 'package:flutter/material.dart';
import 'package:flutter_daigaku/color_schemes.g.dart';

class TopMenu extends StatelessWidget {
  const TopMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width > 880 ? _buildMdMenu(context) : _buildSdMenu(context);
  }

  Widget _buildMdMenu(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        children: [
          const SizedBox(width: 40),
          const Text('Logo'),
          const Spacer(),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Text(
              'Flutter 대학의 특징',
              style: TextStyle(color: lightColorScheme.primary),
            ),
          ),
          const SizedBox(width: 20),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Text(
              '요금',
              style: TextStyle(color: lightColorScheme.primary),
            ),
          ),
          const SizedBox(width: 20),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Text(
              '어드바이저',
              style: TextStyle(color: lightColorScheme.primary),
            ),
          ),
          const SizedBox(width: 20),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Text(
              'Flutter 대학생의 목소리',
              style: TextStyle(color: lightColorScheme.primary),
            ),
          ),
          const SizedBox(width: 20),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Text(
              '입학까지의 흐름',
              style: TextStyle(color: lightColorScheme.primary),
            ),
          ),
          const SizedBox(width: 20),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Text(
              '자주 있는 질문',
              style: TextStyle(color: lightColorScheme.primary),
            ),
          ),
          const SizedBox(width: 20),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Container(
              width: 150,
              height: 100,
              color: Theme.of(context).colorScheme.primary,
              child: const Center(
                child: Text(
                  '로그인',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSdMenu(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          const SizedBox(width: 20),
          const Text('Logo'),
          const Spacer(),
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu, size: 40)),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
