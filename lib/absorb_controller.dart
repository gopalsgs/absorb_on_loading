
import 'package:flutter/foundation.dart';


class AbsorbController extends ValueNotifier<bool> {

  AbsorbController({bool absorb}) : super(absorb ?? false);

  bool get absorb => value;

  set absorb(bool val) {
    value = val;
  }

  @override
  set value(bool newValue) {
    super.value = newValue;
  }
}