//
//  Generated code. Do not modify.
//  source: wager.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use amountDescriptor instead')
const Amount$json = {
  '1': 'Amount',
  '2': [
    {'1': 'amount', '3': 1, '4': 1, '5': 1, '10': 'amount'},
    {'1': 'currency', '3': 2, '4': 1, '5': 9, '10': 'currency'},
  ],
};

/// Descriptor for `Amount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List amountDescriptor = $convert.base64Decode(
    'CgZBbW91bnQSFgoGYW1vdW50GAEgASgBUgZhbW91bnQSGgoIY3VycmVuY3kYAiABKAlSCGN1cn'
    'JlbmN5');

@$core.Deprecated('Use betDescriptor instead')
const Bet$json = {
  '1': 'Bet',
  '2': [
    {'1': 'line', '3': 1, '4': 1, '5': 1, '10': 'line'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
  ],
};

/// Descriptor for `Bet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List betDescriptor = $convert.base64Decode(
    'CgNCZXQSEgoEbGluZRgBIAEoAVIEbGluZRIUCgV0aXRsZRgCIAEoCVIFdGl0bGU=');

@$core.Deprecated('Use userDescriptor instead')
const User$json = {
  '1': 'User',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode(
    'CgRVc2VyEhIKBG5hbWUYASABKAlSBG5hbWUSFAoFZW1haWwYAiABKAlSBWVtYWls');

@$core.Deprecated('Use createRequestDescriptor instead')
const CreateRequest$json = {
  '1': 'CreateRequest',
  '2': [
    {'1': 'amount', '3': 1, '4': 1, '5': 11, '6': '.Amount', '10': 'amount'},
    {'1': 'bet', '3': 2, '4': 1, '5': 11, '6': '.Bet', '10': 'bet'},
    {'1': 'user', '3': 3, '4': 1, '5': 11, '6': '.User', '10': 'user'},
  ],
};

/// Descriptor for `CreateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRequestDescriptor = $convert.base64Decode(
    'Cg1DcmVhdGVSZXF1ZXN0Eh8KBmFtb3VudBgBIAEoCzIHLkFtb3VudFIGYW1vdW50EhYKA2JldB'
    'gCIAEoCzIELkJldFIDYmV0EhkKBHVzZXIYAyABKAsyBS5Vc2VyUgR1c2Vy');

@$core.Deprecated('Use createResponseDescriptor instead')
const CreateResponse$json = {
  '1': 'CreateResponse',
  '2': [
    {'1': 'win', '3': 1, '4': 1, '5': 8, '10': 'win'},
    {'1': 'payout', '3': 2, '4': 1, '5': 3, '10': 'payout'},
  ],
};

/// Descriptor for `CreateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createResponseDescriptor = $convert.base64Decode(
    'Cg5DcmVhdGVSZXNwb25zZRIQCgN3aW4YASABKAhSA3dpbhIWCgZwYXlvdXQYAiABKANSBnBheW'
    '91dA==');

