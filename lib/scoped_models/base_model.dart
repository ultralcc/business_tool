import 'package:business_tools/enums/view_state.dart';
import 'package:scoped_model/scoped_model.dart';
// Make sure state enum is accessible in all inherting models

class BaseModel extends Model {
  ViewState _state = ViewState.Idle;
  ViewState get state => _state;

  void setState(ViewState newState) {
    _state = newState;

    // Notify listeners will only update listeners of state.
    notifyListeners();
  }
}
