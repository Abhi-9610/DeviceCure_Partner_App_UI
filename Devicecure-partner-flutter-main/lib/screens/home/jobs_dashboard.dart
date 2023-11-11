import 'package:flutter/material.dart';

import '../../core/extensions.dart';
import '../../theme/theme_constants.dart';
import '../jobs/completed_jobs.dart';
import '../jobs/pending_jobs.dart';

class TabMenu {
  final String title;
  final Widget screen;

  TabMenu({
    required this.title,
    required this.screen,
  });
}

final tabs = [
  TabMenu(
    title: 'Pending Jobs',
    screen: const PendingJobs(),
  ),
  TabMenu(
    title: 'Completed Jobs',
    screen: const CompletedJobs(),
  ),
];

class JobsDashboard extends StatefulWidget {
  const JobsDashboard({Key? key}) : super(key: key);

  @override
  State<JobsDashboard> createState() => _JobsDashboardState();
}

class _JobsDashboardState extends State<JobsDashboard>
    with SingleTickerProviderStateMixin {
  late TabController? _tabController;

  int bodyIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: TabBar(
            controller: _tabController,
            labelColor: context.primary,
            unselectedLabelColor: black,
            indicatorColor: context.primary,
            /* tabs: [
              Tab(
                child: Text(
                  'PENDING JOBS',
                  style: context.bodyLarge,
                ),
              ),
              Tab(
                child: Text(
                  'COMPLETED JOBS',
                  style: context.bodyLarge,
                ),
              ),
            ], */
            tabs: tabs.map((menu) {
              return Tab(
                child: Text(
                  menu.title,
                  style: context.bodyLarge,
                ),
              );
            }).toList(),
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: tabs.map((e) => e.screen).toList(),
          ),
        )
      ],
    );
  }
}
