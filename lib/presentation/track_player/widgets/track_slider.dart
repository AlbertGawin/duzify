import 'package:duzify/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class TrackSlider extends StatefulWidget {
  final int durationMs;

  const TrackSlider({super.key, required this.durationMs});

  @override
  State<TrackSlider> createState() => _TrackSliderState();
}

class _TrackSliderState extends State<TrackSlider> {
  double _sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderThemeData(
        trackHeight: 2,
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 4),
        overlayShape: RoundSliderOverlayShape(overlayRadius: 0),
        trackShape: RoundedRectSliderTrackShape(),
        overlayColor: Colors.transparent,
        thumbColor: AppColors.white,
        activeTrackColor: AppColors.white,
        inactiveTrackColor: AppColors.lightGray.withAlpha(50),
        activeTickMarkColor: Colors.transparent,
        inactiveTickMarkColor: Colors.transparent,
      ),
      child: Column(
        children: [
          Slider(
            value: _sliderValue,
            min: 0,
            max: widget.durationMs.toDouble(),
            divisions: widget.durationMs ~/ 1000,
            onChanged: (value) {
              setState(() {
                _sliderValue = value;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.all(4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _formatDuration(_sliderValue.toInt()),
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.lightGray,
                  ),
                ),
                Text(
                  _formatDuration(widget.durationMs),
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.lightGray,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _formatDuration(int milliseconds) {
    int seconds = (milliseconds / 1000).round();
    int minutes = seconds ~/ 60;
    seconds = seconds % 60;
    return '$minutes:${seconds.toString().padLeft(2, '0')}';
  }
}
