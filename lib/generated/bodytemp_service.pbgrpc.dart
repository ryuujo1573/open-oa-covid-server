///
//  Generated code. Do not modify.
//  source: bodytemp_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'bodytemp_service.pb.dart' as $0;
export 'bodytemp_service.pb.dart';

class BodyTempServiceClient extends $grpc.Client {
  static final _$listRecent = $grpc.ClientMethod<$0.BodyTempQuery, $0.BodyTemp>(
      '/BodyTempService/ListRecent',
      ($0.BodyTempQuery value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.BodyTemp.fromBuffer(value));
  static final _$recordBodyTemp =
      $grpc.ClientMethod<$0.BodyTempRecord, $0.Result>(
          '/BodyTempService/RecordBodyTemp',
          ($0.BodyTempRecord value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Result.fromBuffer(value));

  BodyTempServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.BodyTemp> listRecent($0.BodyTempQuery request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listRecent, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Result> recordBodyTemp($0.BodyTempRecord request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$recordBodyTemp, request, options: options);
  }
}

abstract class BodyTempServiceBase extends $grpc.Service {
  $core.String get $name => 'BodyTempService';

  BodyTempServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.BodyTempQuery, $0.BodyTemp>(
        'ListRecent',
        listRecent_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.BodyTempQuery.fromBuffer(value),
        ($0.BodyTemp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BodyTempRecord, $0.Result>(
        'RecordBodyTemp',
        recordBodyTemp_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BodyTempRecord.fromBuffer(value),
        ($0.Result value) => value.writeToBuffer()));
  }

  $async.Stream<$0.BodyTemp> listRecent_Pre(
      $grpc.ServiceCall call, $async.Future<$0.BodyTempQuery> request) async* {
    yield* listRecent(call, await request);
  }

  $async.Future<$0.Result> recordBodyTemp_Pre(
      $grpc.ServiceCall call, $async.Future<$0.BodyTempRecord> request) async {
    return recordBodyTemp(call, await request);
  }

  $async.Stream<$0.BodyTemp> listRecent(
      $grpc.ServiceCall call, $0.BodyTempQuery request);
  $async.Future<$0.Result> recordBodyTemp(
      $grpc.ServiceCall call, $0.BodyTempRecord request);
}
