import 'package:duzify/presentation/home/widgets/header_info.dart';
import 'package:duzify/presentation/home/widgets/sticky_search_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        scrolledUnderElevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            HeaderInfo(),
            StickySearchBar(),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return ListTile(
                    title: Text('Item #$index'),
                  );
                },
                childCount: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
