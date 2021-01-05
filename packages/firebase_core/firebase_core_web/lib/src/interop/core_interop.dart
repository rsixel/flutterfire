// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: public_member_api_docs

@JS('firebase')
library firebase_interop.core;

import 'package:js/js.dart';

import 'app_interop.dart';

@JS()
external List<AppJsImpl> get apps;

/// The current SDK version.
///
/// See: <https://firebase.google.com/docs/reference/js/firebase#.SDK_VERSION>.
@JS()
external String get SDK_VERSION;

@JS()
external AppJsImpl initializeApp(FirebaseOptions options, [String? name]);

@JS()
external AppJsImpl app([String? name]);

/// FirebaseError is a subclass of the standard Error object.
/// In addition to a message string, it contains a string-valued code.
///
/// See: <https://firebase.google.com/docs/reference/js/firebase.FirebaseError>.
@JS()
@anonymous
abstract class FirebaseError {
  external String get code;
  external String get message;
  external String get name;
  external String get stack;

  /// Not part of the core JS API, but occasionally exposed in error objects.
  external Object get serverResponse;
}

/// A structure for options provided to Firebase.
@JS()
@anonymous
class FirebaseOptions {
  external String get apiKey;
  external set apiKey(String s);
  external String get authDomain;
  external set authDomain(String s);
  external String get databaseURL;
  external set databaseURL(String s);
  external String get projectId;
  external set projectId(String s);
  external String get storageBucket;
  external set storageBucket(String s);
  external String get messagingSenderId;
  external set messagingSenderId(String s);
  external String get measurementId;
  external set measurementId(String s);
  external String get appId;
  external set appId(String s);

  external factory FirebaseOptions(
      {String? apiKey,
      String? authDomain,
      String? databaseURL,
      String? projectId,
      String? storageBucket,
      String? messagingSenderId,
      String? measurementId,
      String? appId});
}
