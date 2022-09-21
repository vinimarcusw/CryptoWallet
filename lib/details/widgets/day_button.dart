import 'package:crypto_wallet/details/controller/time_window_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DayButton extends StatefulHookConsumerWidget {
  const DayButton({
    Key? key,
    required this.day,
  }) : super(key: key);

  final int day;

  @override
  ConsumerState<DayButton> createState() => _DayButtonState();
}

class _DayButtonState extends ConsumerState<DayButton> {
  @override
  Widget build(BuildContext context) {
    final dayProvider = ref.watch(timeWindowProvider);
    return GestureDetector(
      onTap: () => ref.read(timeWindowProvider.notifier).state = widget.day,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        margin: const EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: widget.day == dayProvider
                ? Colors.grey.shade300
                : Colors.white),
        child: Text(
          '${widget.day} D',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
