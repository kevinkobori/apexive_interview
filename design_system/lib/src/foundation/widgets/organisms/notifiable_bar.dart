import 'package:flutter/material.dart';
import 'package:nasa_apod_core/nasa_apod_core.dart';
import 'package:nasa_apod_design_system/nasa_apod_design_system.dart';

class UKeepNotifiableBar extends StatefulWidget {
  const UKeepNotifiableBar({
    required this.child,
    super.key,
    this.notification,
    this.onClosed,
  });

  final NotificationViewModel? notification;
  final VoidCallback? onClosed;
  final Widget child;

  @override
  State<UKeepNotifiableBar> createState() => _UKeepNotifiableBarState();
}

class _UKeepNotifiableBarState extends State<UKeepNotifiableBar> {
  late bool _isOpened = widget.notification != null;

  @override
  void didUpdateWidget(covariant UKeepNotifiableBar oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.notification != widget.notification) {
      setState(() {
        _isOpened = widget.notification != null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return _isOpened
        ? UKeepNotifiableBarLayout.opened(
            notification: widget.notification,
            onClosed: () {
              setState(() {
                _isOpened = false;
              });
              widget.onClosed?.call();
            },
            child: widget.child,
          )
        : UKeepNotifiableBarLayout.closed(
            child: widget.child,
          );
  }
}

enum UKeepNotifiableBarState {
  opened,
  closed,
}

class UKeepNotifiableBarLayout extends StatelessWidget {
  const UKeepNotifiableBarLayout.opened({
    required this.notification,
    required this.child,
    super.key,
    this.onClosed,
  }) : _state = UKeepNotifiableBarState.opened;

  const UKeepNotifiableBarLayout.closed({
    required this.child,
    super.key,
    this.onClosed,
  })  : _state = UKeepNotifiableBarState.closed,
        notification = null;

  final UKeepNotifiableBarState _state;
  final NotificationViewModel? notification;
  final VoidCallback? onClosed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final metrics = Theme.of(context).extension<XMetricsData>()!;
    final colorScheme = Theme.of(context).colorScheme;
    final notification = this.notification;
    final isOpened =
        notification != null || _state == UKeepNotifiableBarState.opened;

    return AnimatedContainer(
      duration: metrics.durations.regular,
      decoration: BoxDecoration(
        borderRadius: metrics.radius.border.semiSmall,
        color: colorScheme.primary,
        boxShadow: [
          BoxShadow(
            blurRadius: isOpened ? 32 : 16,
            color: colorScheme.primary.withOpacity(0.5),
          )
        ],
      ),
      child: AnimatedSize(
        duration: metrics.durations.regular,
        alignment: Alignment.bottomCenter,
        curve: Curves.easeInOut,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (isOpened)
              _NotificationBody(
                notification: notification!,
                onClose: onClosed,
              ),
            child,
          ],
        ),
      ),
    );
  }
}

class _NotificationBody extends StatelessWidget {
  const _NotificationBody({
    required this.notification,
    this.onClose,
  });

  final NotificationViewModel notification;
  final VoidCallback? onClose;

  @override
  Widget build(BuildContext context) {
    final assets = Theme.of(context).extension<XAssetsData>()!;
    final colorScheme = Theme.of(context).colorScheme;
    final metrics = Theme.of(context).extension<XMetricsData>()!;
    final textTheme = Theme.of(context).textTheme;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Row(
            children: [
              UKeepContainer(
                height: assets.icons.sizes.semiLarge,
                width: assets.icons.sizes.semiLarge,
                margin: metrics.spacings.edgeInsets.allSemiSmall,
                child: UKeepSvgPicture.asset(
                  'assets/images/nasa_logo.svg',
                ),
              ),
              Expanded(
                child: metrics.spacings.edgeInsets.paddings.verticalSemiSmall(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        notification.title,
                        style: textTheme.titleSmall!.copyWith(
                          color: colorScheme.onPrimary,
                        ),
                      ),
                      Text(
                        notification.description,
                        style: textTheme.bodyLarge!.copyWith(
                          color: colorScheme.onPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        metrics.spacings.edgeInsets.paddings.allSmall(
          child: UKeepDismissButton(onClose: onClose),
        ),
      ],
    );
  }
}
