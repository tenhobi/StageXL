part of stagexl.events;

/// An event that is dispatched into the event flow whenever mouse events occur.
///
/// A [MouseEvent] is usually generated by a user input device, such as a mouse
/// or a trackball, that uses a pointer.
///
/// When nested nodes are involved, mouse events target the deepest possible
/// nested node that is visible in the display list. This node is called the
/// target node. To have a target node's ancestor receive notification of a
/// mouse event, use the corresponding on...() methods:
///
///     sprite.onMouseClick.listen(_onMouseClick);

class MouseEvent extends Event implements InputEvent {

  static const String CLICK = "click";
  static const String DOUBLE_CLICK = "doubleClick";

  static const String MOUSE_DOWN = "mouseDown";
  static const String MOUSE_UP = "mouseUp";
  static const String MOUSE_MOVE = "mouseMove";
  static const String MOUSE_OUT = "mouseOut";
  static const String MOUSE_OVER = "mouseOver";
  static const String MOUSE_WHEEL = "mouseWheel";

  static const String MIDDLE_CLICK = "middleClick";
  static const String MIDDLE_MOUSE_DOWN = "middleMouseDown";
  static const String MIDDLE_MOUSE_UP = "middleMouseUp";
  static const String RIGHT_CLICK = "rightClick";
  static const String RIGHT_MOUSE_DOWN = "rightMouseDown";
  static const String RIGHT_MOUSE_UP = "rightMouseUp";

  static const String CONTEXT_MENU = "contextMenu";
  static const String ROLL_OUT = "rollOut";
  static const String ROLL_OVER = "rollOver";

  //----------------------------------------------------------------------------

  /// The x-coordinate at which the event occurred relative to the containing
  /// display object.
  final num localX;

  /// The y-coordinate at which the event occurred relative to the containing
  /// display object.
  final num localY;

  /// The x-coordinate at which the event occurred relative to the stage.
  final num stageX;

  /// The y-coordinate at which the event occurred relative to the stage.
  final num stageY;

  /// The amount that is expected to scroll horizontally.
  final num deltaX;

  /// The amount that is expected to scroll vertically.
  final num deltaY;

  /// Indicates whether the primary mouse button is pressed (true) or not (false).
  final bool buttonDown;

  /// Indicates whether or not the mouse down event is part of a multi-click
  /// sequence.
  ///
  /// This parameter will be zero for all mouse events other than
  /// [MouseEvent.MOUSE_DOWN], [MouseEvent.MOUSE_UP],
  /// [MouseEvent.MIDDLE_MOUSE_DOWN], [MouseEvent.MIDDLE_MOUSE_UP],
  /// [MouseEvent.RIGHT_MOUSE_DOWN], and [MouseEvent.RIGHT_MOUSE_UP].
  /// Listening for single clicks, double clicks, or any multi-click sequence is
  /// possible with the clickCount parameter.
  ///
  /// For example, an initial [MouseEvent.MOUSE_DOWN] and [MouseEvent.MOUSE_UP]
  /// will have a [clickCount] of 1, and the second [MouseEvent.MOUSE_DOWN]
  /// and [MouseEvent.MOUSE_UP] in a double-click sequence will have a
  /// [clickCount] of 2. If the mouse moves sufficiently or the multi-click
  /// sequence is interrupted for some reason, then the next
  /// [MouseEvent.MOUSE_DOWN] will have a [clickCount] of 1. The
  /// [MouseEvent.DOUBLE_CLICK] event will continue to fire as expected.
  final int clickCount;

  /// Indicates whether the Alt key is active (true) or inactive (false).
  final bool altKey;

  /// Indicates whether the Ctrl key is active (true) or inactive (false).
  final bool ctrlKey;

  /// Indicates whether the Shift key is active (true) or inactive (false).
  final bool shiftKey;

  /// Creates a new [MouseEvent].
  MouseEvent(String type, bool bubbles,
      this.localX, this.localY,
      this.stageX, this.stageY,
      this.deltaX, this.deltaY,
      this.buttonDown, this.clickCount,
      this.altKey, this.ctrlKey, this.shiftKey) : super(type, bubbles);

}
