import 'package:flutter/material.dart';

import 'widgets/stickers_group.dart';
import 'widgets/stickers_group_filter.dart';
import 'widgets/stickers_status_filter.dart';

class MyStickersPage extends StatelessWidget {
  const MyStickersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minhas figurinhas'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: const [
                StickersStatusFilter(filterSelected: ''),
                StickersGroupFilter(),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return const StickersGroup();
            }, childCount: 10),
          )
        ],
      ),
    );
  }
}
