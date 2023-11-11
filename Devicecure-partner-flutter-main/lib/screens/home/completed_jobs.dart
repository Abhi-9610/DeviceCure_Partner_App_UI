import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/extensions.dart';
import '../../widgets/provider.dart';
import '../jobs/pending_jobs.dart';

class CompletedJobs extends StatelessWidget {
  const CompletedJobs({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final jobProvider = Provider.of<JobProvider>(context);

    return jobProvider.isButtonTapped
        ? PendingJobs()
        : Container(
            margin: EdgeInsets.only(top: screenHeight * 0.05),
            child: Column(
              children: [
                Image.asset('assets/images/noJobs.png'),
                Text(
                  'No Jobs Completed Yet!!',
                  style: context.bodyLarge,
                )
              ],
            ),
          );
  }
}
