import 'package:flutter/material.dart';
import 'package:thread_clo/data/datasource/datasource_thread.dart';
import 'package:thread_clo/widgets/thread_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Image.asset(
                  'assets/images/threads.png',
                  height: 35,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return ThreadPage(
                      threadRemoteDatasource().getThread()[index]);
                },
                childCount: threadRemoteDatasource().getThread().length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
