import 'package:custom_text/custom_text.dart';

/// Concrete subclass of TextMatcher to allow matching arbitrary text
/// 
/// - mainly for the purpose of allowing override of the mouse-pointer
///   within the subtree of SelectionArea who otherwise "owns" the pointer
///   even inside button-text!
class ButtonTextMatcher extends TextMatcher {
  const ButtonTextMatcher(super.pattern);
}
