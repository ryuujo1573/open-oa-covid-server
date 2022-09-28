///
//  Generated code. Do not modify.
//  source: bodytemp_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use responseCodeDescriptor instead')
const ResponseCode$json = const {
  '1': 'ResponseCode',
  '2': const [
    const {'1': 'OK', '2': 0},
    const {'1': 'PARAM_ERROR', '2': 1},
    const {'1': 'ACCESS_DENIED', '2': 2},
  ],
};

/// Descriptor for `ResponseCode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List responseCodeDescriptor = $convert.base64Decode('CgxSZXNwb25zZUNvZGUSBgoCT0sQABIPCgtQQVJBTV9FUlJPUhABEhEKDUFDQ0VTU19ERU5JRUQQAg==');
@$core.Deprecated('Use resultDescriptor instead')
const Result$json = const {
  '1': 'Result',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 14, '6': '.ResponseCode', '10': 'code'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `Result`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resultDescriptor = $convert.base64Decode('CgZSZXN1bHQSIQoEY29kZRgBIAEoDjINLlJlc3BvbnNlQ29kZVIEY29kZRIgCgtkZXNjcmlwdGlvbhgCIAEoCVILZGVzY3JpcHRpb24=');
@$core.Deprecated('Use bodyTempDescriptor instead')
const BodyTemp$json = const {
  '1': 'BodyTemp',
  '2': const [
    const {'1': 'temp', '3': 1, '4': 1, '5': 9, '10': 'temp'},
    const {'1': 'timestamp', '3': 2, '4': 1, '5': 13, '10': 'timestamp'},
  ],
};

/// Descriptor for `BodyTemp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bodyTempDescriptor = $convert.base64Decode('CghCb2R5VGVtcBISCgR0ZW1wGAEgASgJUgR0ZW1wEhwKCXRpbWVzdGFtcBgCIAEoDVIJdGltZXN0YW1w');
@$core.Deprecated('Use bodyTempRecordDescriptor instead')
const BodyTempRecord$json = const {
  '1': 'BodyTempRecord',
  '2': const [
    const {'1': 'temp', '3': 1, '4': 1, '5': 9, '10': 'temp'},
    const {'1': 'timestamp', '3': 2, '4': 1, '5': 13, '10': 'timestamp'},
    const {'1': 'userId', '3': 3, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `BodyTempRecord`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bodyTempRecordDescriptor = $convert.base64Decode('Cg5Cb2R5VGVtcFJlY29yZBISCgR0ZW1wGAEgASgJUgR0ZW1wEhwKCXRpbWVzdGFtcBgCIAEoDVIJdGltZXN0YW1wEhYKBnVzZXJJZBgDIAEoCVIGdXNlcklk');
@$core.Deprecated('Use bodyTempQueryDescriptor instead')
const BodyTempQuery$json = const {
  '1': 'BodyTempQuery',
  '2': const [
    const {'1': 'userId', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'fromTime', '3': 2, '4': 1, '5': 13, '10': 'fromTime'},
  ],
};

/// Descriptor for `BodyTempQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bodyTempQueryDescriptor = $convert.base64Decode('Cg1Cb2R5VGVtcFF1ZXJ5EhYKBnVzZXJJZBgBIAEoCVIGdXNlcklkEhoKCGZyb21UaW1lGAIgASgNUghmcm9tVGltZQ==');
