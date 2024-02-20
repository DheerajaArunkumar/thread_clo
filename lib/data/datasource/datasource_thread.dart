import 'package:thread_clo/data/model/thread.dart';
import 'package:thread_clo/data/senddata/data.dart';

abstract class Ithread {
  List<thread> getThread();
}

class threadRemoteDatasource extends Ithread {
  @override
  List<thread> getThread() {
    return listThear()
        .map((jsonObject) => thread.formJson(jsonObject))
        .toList();
  }
}
