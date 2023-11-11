import 'package:flutter/material.dart';

import '../../core/extensions.dart';

class PendingJobs extends StatefulWidget {
  const PendingJobs({super.key});

  @override
  State<PendingJobs> createState() => _PendingJobsState();
}

class _PendingJobsState extends State<PendingJobs> {
  final List<String> _jobs = ["xyz", "abc"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _jobs.isNotEmpty
            ? ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: _jobs.length,
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    width: context.width,
                    height: 100,
                    margin: const EdgeInsets.symmetric(
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      // color: Colors.black,
                      border: Border.all(
                        width: 2.0,
                        color: context.primary,
                      ),
                    ),
                  );
                },
              )
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
      ),
    );
  }
}
