import 'package:flutter_test/flutter_test.dart';

import 'package:emansur_logger/emansur_logger.dart';

void main() {
  test('should return message [🎉{message}🎉]', () {
    const input = 'hello';
    const matcher = '🎉hello🎉';
    final message = decorateMessage(message: input);
    expect(message, matcher);
  });
}
