import 'package:rxdart/rxdart.dart';

class LoginViewModel {
  final _emailSubject = BehaviorSubject<String>();
  final _passSubject = BehaviorSubject<String>();
  final _btnSubject = BehaviorSubject<bool>();

  Stream<String> get emailStream => _emailSubject;
  Stream<String> get passStream => _passSubject;
  Stream<bool> get btnStream => _btnSubject;

  Stream<String> get emailSink=>_emailSubject;
  Stream<String> get passSink=>_passSubject;
  Stream<bool> get btnSink=>_btnSubject;

  dispose() {
    _emailSubject.close();
    _passSubject.close();
    _btnSubject.close();
  }
}
