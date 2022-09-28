import 'package:grpc/grpc.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:open_pms/generated/bodytemp_service.pbgrpc.dart';

const userId = 'userId';

class BodyTempService extends BodyTempServiceBase {
  final db = Db('mongodb://127.0.0.1/demo_covidmgr');

  late final openDb = db.open();

  late final collection = DbCollection(db, 'bodytemp');

  @override
  Stream<BodyTemp> listRecent(ServiceCall call, BodyTempQuery request) async* {
    await openDb;
    var userRecord =
        await collection.findOne(where.match(userId, request.userId));
    if (userRecord == null) {
      return;
    } else {
      yield* Stream.fromIterable(userRecord['records']);
      // .map((e) => BodyTemp(temp: e['temp'], timestamp: e['timestamp']));
    }
  }

  @override
  Future<Result> recordBodyTemp(
      ServiceCall call, BodyTempRecord request) async {
    await openDb;
    if (RegExp(r"^\d{2}\.\d$").hasMatch(request.temp)) {
      var doc = await collection.findAndModify(
        query: where.match('userId', request.userId),
        update: {
          '\$setOnInsert': {'userId': request.userId},
          '\$push': {
            'records': {'temp': request.temp, 'timestamp': request.timestamp}
          }
        },
        returnNew: true,
        upsert: true,
      );
    } else {
      return Result(
        code: ResponseCode.PARAM_ERROR,
        description: "temperature malformatted",
      );
    }

    return Result(code: ResponseCode.OK);
  }
}
