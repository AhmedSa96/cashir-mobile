import 'package:get_storage/get_storage.dart';

class LocalStorageService {
  final GetStorage _box = GetStorage();

  Future<void> initStorage() {
    return GetStorage.init();
  }

  Future<T?> read<T>(String key) async {
    return _box.read(key);
  }

  Future<void> write<T>(String key, T value) async {
    await _box.write(key, value);
    await _box.save();
  }

  Future<void> remove(String key) async {
    await _box.remove(key);
    await _box.save();
  }
}
