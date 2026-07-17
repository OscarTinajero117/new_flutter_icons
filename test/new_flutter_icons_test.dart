import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:new_flutter_icons/new_flutter_icons.dart';

void main() {
  group('IconData Acceptance Tests', () {
    test('FontAwesome5 icons load successfully', () {
      const addressBookIcon = FontAwesome5.address_book;
      expect(addressBookIcon.codePoint, isNotNull);
      expect(addressBookIcon.fontFamily, 'FontAwesome5');
      expect(addressBookIcon.fontPackage, 'new_flutter_icons');
    });

    test('AntDesign icons load successfully', () {
      const stepForwardIcon = AntDesign.stepforward;
      expect(stepForwardIcon.codePoint, isNotNull);
      expect(stepForwardIcon.fontFamily, 'AntDesign');
      expect(stepForwardIcon.fontPackage, 'new_flutter_icons');
    });
  });

  group('IconToggle Widget Tests', () {
    testWidgets('Toggles icon on tap', (WidgetTester tester) async {
      bool toggleValue = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: StatefulBuilder(
              builder: (context, setState) {
                return IconToggle(
                  value: toggleValue,
                  selectedIconData: Icons.check_box,
                  unselectedIconData: Icons.check_box_outline_blank,
                  onChanged: (value) {
                    setState(() {
                      toggleValue = value;
                    });
                  },
                );
              },
            ),
          ),
        ),
      );

      // Verify initial state
      expect(find.byIcon(Icons.check_box_outline_blank), findsOneWidget);
      expect(find.byIcon(Icons.check_box), findsNothing);

      // Tap the toggle
      await tester.tap(find.byType(IconToggle));
      await tester.pumpAndSettle();

      // Verify toggled state
      expect(find.byIcon(Icons.check_box), findsOneWidget);
      expect(find.byIcon(Icons.check_box_outline_blank), findsNothing);
    });
  });
}
