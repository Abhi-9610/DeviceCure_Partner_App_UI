import 'package:flutter/material.dart';

import '../../core/extensions.dart';
import '../../widgets/box_decoration.dart';

class CompletedJobs extends StatefulWidget {
  const CompletedJobs({super.key});

  @override
  State<CompletedJobs> createState() => _CompletedJobsState();
}

class _CompletedJobsState extends State<CompletedJobs> {
  final _jobs = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _jobs.isNotEmpty
          ? ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext contex, index) {
                return Container(
                  width: MediaQuery.of(context).size.width * 0.01,
                  height: MediaQuery.of(context).size.height * 0.2,
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02,
                    left: MediaQuery.of(context).size.width * 0.03,
                    right: MediaQuery.of(context).size.width * 0.03,
                  ),
                  decoration: listbox,
                );
              })
          : Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/images/noJobs.png'),
                  Text(
                    'Some New Experience Will Add Soon!!',
                    style: context.bodyMedium,
                  )
                ],
              ),
            ),
    );
  }
}
