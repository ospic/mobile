import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:mobile/model/auth_post.dart';
import 'package:mobile/model/auth_response.dart';
import 'package:mobile/model/auth_role.dart';
import 'package:built_collection/built_collection.dart';

import 'built_post.dart';

part 'serializers.g.dart';

@SerializersFor(const [
    BuiltPost,
AuthPost,
AuthResponse,
AuthRole,
])
final Serializers serializers = (_$serializers.toBuilder()
        ..addPlugin(StandardJsonPlugin()))
        .build();