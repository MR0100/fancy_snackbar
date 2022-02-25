part of fancy_snackbar;

class CustomSnackbar extends StatefulWidget {
  /// animationDuration handle how long you want to take while getting snackbar in the screen.
  /// default it is 800 milliseconds
  final double animationDuration;

  /// animationDuration handle how long you want to take while getting off snackbar from the screen.
  /// default it is 800 milliseconds
  final double reverseAnimationDuration;

  /// duration is used to set the duration of snackbar to show on the screen.
  /// it will manage how long the snackbar will be showed in the screen.
  /// default duration is [1 seconds]
  final double duration;

  /// if there is the 'title' passed then it will take the default style for it.
  /// default 'title' is based on the type selected.
  final String? title;

  /// if you want to use your own style and text for the 'title'.
  /// then you can pass the 'titleWidget'.
  /// when you will pass the 'titleWidget' it will ignore the 'title' if you have passed.
  final Widget? titleWidget;

  /// you can choose style for your snackbar based on the type.
  /// there are 5 types we are providing for now.
  /// 1. success
  /// 2. error
  /// 3. info
  /// 4. warning
  /// 5. waitting
  ///
  /// default type is success.
  final FancySnackBarType snackBarType;

  /// if there is the 'message' passed then it will take the default style for it.
  /// default 'message' is based on the type selected.
  final String? message;

  /// if you want to use your own style and text for the 'message'
  /// then you can pass the 'messageWidget'.
  /// when you will pass the 'messageWidget' it will ignore the 'message' if you have passed.
  final Widget? messageWidget;

  /// there are many colors providing in the package.
  /// you can select shades of the colors from the enum.
  /// default color will be the color based on the type.
  final SnackBarColors? color;

  const CustomSnackbar({
    Key? key,
    required this.animationDuration,
    required this.reverseAnimationDuration,
    required this.title,
    required this.titleWidget,
    required this.message,
    required this.messageWidget,
    required this.duration,
    required this.snackBarType,
    required this.color,
  }) : super(key: key);

  @override
  State<CustomSnackbar> createState() => _CustomSnackbarState();
}

class _CustomSnackbarState extends State<CustomSnackbar>
    with TickerProviderStateMixin {
  /// this is the animation controller for snackbar.
  late AnimationController _animationStartController;

  /// this is the animation for snackbar.
  late Animation _startAnimation;

  /// this is the animation controlle for floating bubble.
  late AnimationController _bubbleAnimationController;

  /// this is the animation for floating bubble.
  late Animation _bubbleAnimation;

  @override
  void initState() {
    super.initState();

    /// initializing the controller for snackbar.
    _animationStartController = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: (widget.animationDuration * 1000).toInt(),
      ),
      reverseDuration: Duration(
        milliseconds: (widget.animationDuration * 1000).toInt(),
      ),
    );

    /// assigning the animation and linking with the controller of snackbar.
    _startAnimation = Tween<double>(begin: -60.0, end: 0.0).animate(
      CurvedAnimation(
        parent: _animationStartController,
        curve: Curves.bounceInOut,
      ),
    );

    /// initializing the controller for floating bubble.
    _bubbleAnimationController = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: (widget.animationDuration * 1000).toInt(),
      ),
      reverseDuration: Duration(
        milliseconds: (widget.animationDuration * 1000).toInt(),
      ),
    );

    /// assigning the animation and linking with the controller of floating bubble.
    _bubbleAnimation = Tween<double>(begin: -0.2, end: -0.6).animate(
      CurvedAnimation(
        parent: _bubbleAnimationController,
        curve: Curves.bounceInOut,
      ),
    );

    /// start the animation to repeat continue and with the reverse.
    _bubbleAnimationController.repeat(reverse: true);

    /// starting the animation to take snackbar in display.
    _animationStartController.forward().then((value) async {
      /// calculated the total waitting/holding duration.
      /// snackbar will hold on display for this duration.
      double displayDuration = widget.duration -
          (widget.animationDuration + widget.reverseAnimationDuration);

      /// after calucating the duration to hold make the snackbar holding on screen.
      /// and once the hold time is over getting snackbar off the screen with reverse animation.
      await Future.delayed(
        Duration(
          milliseconds: (displayDuration * 1000).toInt(),
        ),
      ).then((value) => _animationStartController.reverse());

      /// once the snackbar goes off the screen, stop the animation of floating bubble.
      _bubbleAnimationController.stop();
    });
  }

  @override
  void dispose() {
    /// dispose both animation controller once this widget goes out from the widget tree.
    _bubbleAnimationController.dispose();
    _animationStartController.dispose();
    super.dispose();
  }

  Random r = Random();

  /// this variable is used to randomly select the snackbar background shape.
  /// there are two shapes and it will select randomly from that two shapes.
  bool isFirstShape = true;
  @override
  Widget build(BuildContext context) {
    /// basic logical part to select random even number.
    isFirstShape = r.nextInt(100).isEven;
    return AnimatedBuilder(
        animation: _startAnimation,
        builder: (context, child) {
          return Container(
            alignment: Alignment(_startAnimation.value ?? 0.0, 0.95),
            child: Material(
              color: Colors.transparent,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width - 20,
                      decoration: BoxDecoration(
                        color: getSnackbarColor(widget.color ??
                                getSnackbarDefaultColor(widget.snackBarType))
                            .withOpacity(0.8),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Stack(
                        children: [
                          /// snackbar background...
                          Positioned(
                            bottom: -10,
                            left: -2,
                            child: CustomPaint(
                              size: Size(
                                  50, (50 * 1.0857142857142856).toDouble()),
                              painter: isFirstShape
                                  ? SnackBackShape2(
                                      color: getSnackbarColor(widget.color ??
                                          getSnackbarDefaultColor(
                                              widget.snackBarType)),
                                    )
                                  : SnackBackShape1(
                                      color: getSnackbarColor(widget.color ??
                                          getSnackbarDefaultColor(
                                              widget.snackBarType)),
                                    ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(width: 50),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      /// snackbar title part.
                                      widget.titleWidget ??
                                          Text(
                                            widget.title ??
                                                getSnackbarTitle(
                                                    widget.snackBarType),
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 24,
                                            ),
                                          ),
                                      const SizedBox(height: 5),

                                      /// snackbar message part.
                                      widget.messageWidget ??
                                          Text(
                                            widget.message ??
                                                getSnackbarMessage(
                                                    widget.snackBarType),
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 14,
                                            ),
                                          ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  /// Floating bubble.
                  AnimatedBuilder(
                      animation: _bubbleAnimation,
                      builder: (context, child) {
                        return Positioned(
                          top: -(_bubbleAnimation.value * 10) - 20,
                          left: 20,
                          child: Transform(
                            transform:
                                Matrix4.rotationZ(_bubbleAnimation.value),
                            alignment: Alignment.center,
                            child: CustomPaint(
                              painter: BubblePainter(
                                color: getSnackbarColor(widget.color ??
                                    getSnackbarDefaultColor(
                                        widget.snackBarType)),
                              ),
                              child: Container(
                                height: 40,
                                width: 40,
                                alignment: Alignment.center,
                                child: Icon(
                                  getSnackbarIcon(
                                    widget.snackBarType,
                                  ),
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                ],
              ),
            ),
          );
        });
  }
}
