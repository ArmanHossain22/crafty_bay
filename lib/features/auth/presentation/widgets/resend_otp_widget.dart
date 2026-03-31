import 'package:crafty_bay/features/auth/presentation/providers/timer_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../app/app_colors.dart';

class ResendOtpWidget extends StatefulWidget {
  const ResendOtpWidget({
    super.key,
  });

  @override
  State<ResendOtpWidget> createState() => _ResendOtpWidgetState();
}

class _ResendOtpWidgetState extends State<ResendOtpWidget> {
  final TimerProvider _timerProvider = TimerProvider();

  @override
  void initState() {
    _timerProvider.startTimer(30);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: _timerProvider,
      child: Consumer<TimerProvider>(
        builder: (context, timerProvider, _){
          return Row(
            mainAxisAlignment: .center,
            children: [
              if(timerProvider.isRunning)
                Text('Resend otp after ${timerProvider.remainingSeconds}s'),
              TextButton(
                onPressed: _onTapResendButton,
                child: Text(
                  "Resend",
                  style: TextStyle(
                      color: timerProvider.isRunning ? Colors.grey : AppColors.themeColor
                  )
                )
              ),
            ]
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _timerProvider.dispose();
  }

  void _onTapResendButton()
  {
    if(_timerProvider.isRunning) return;
    _timerProvider.startTimer(60);
  }
}