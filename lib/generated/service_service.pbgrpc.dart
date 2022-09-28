///
//  Generated code. Do not modify.
//  source: service_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'service_service.pb.dart' as $1;
export 'service_service.pb.dart';

class ServiceServiceClient extends $grpc.Client {
  static final _$listService =
      $grpc.ClientMethod<$1.ListServiceRequest, $1.Service>(
          '/ServiceService/ListService',
          ($1.ListServiceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Service.fromBuffer(value));

  ServiceServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$1.Service> listService($1.ListServiceRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listService, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class ServiceServiceBase extends $grpc.Service {
  $core.String get $name => 'ServiceService';

  ServiceServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.ListServiceRequest, $1.Service>(
        'ListService',
        listService_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $1.ListServiceRequest.fromBuffer(value),
        ($1.Service value) => value.writeToBuffer()));
  }

  $async.Stream<$1.Service> listService_Pre($grpc.ServiceCall call,
      $async.Future<$1.ListServiceRequest> request) async* {
    yield* listService(call, await request);
  }

  $async.Stream<$1.Service> listService(
      $grpc.ServiceCall call, $1.ListServiceRequest request);
}
