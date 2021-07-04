import 'package:chopper/chopper.dart';
import 'package:mobile/model/serializers.dart';
import 'package:built_collection/built_collection.dart';

class  BuiltValueConverter extends JsonConverter{
  @override
  Request convertRequest(Request request) {
    return super.convertRequest(
      request.copyWith(
        // request.body is of type dynamic, but we know that it holds only BuiltValue classes (BuiltPost).
        // Before sending the request to the network, serialize it to a List/Map using a BuiltValue serializer.
        body: serializers.serializeWith(
          // Since convertRequest doesn't have a type parameter, Serializer's type will be determined at runtime
          serializers.serializerForType(request.body.runtimeType)!,
          request.body,
        ),
      ),
    );
  }

  @override
  Response<BodyType> convertResponse<BodyType, SingleItemType>(
      Response response) {
    // The response parameter contains raw binary JSON data by default.
    // Utilize the already written code which converts this data to a dynamic Map or a List of Maps.
    final Response dynamicResponse = super.convertResponse(response);
    // customBody can be either a BuiltList<SingleItemType> or just the SingleItemType (if there's no list).
    final BodyType customBody =
    _convertToCustomObject<SingleItemType>(dynamicResponse.body);

    // Return the original dynamicResponse with a no-longer-dynamic body type.
    return dynamicResponse.copyWith<BodyType>(body: customBody);
  }

  dynamic _convertToCustomObject<SingleItemType>(dynamic element) {
    // If the type which the response should hold is explicitly set to a dynamic Map,
    // there's nothing we can convert.
    if (element is SingleItemType) return element;

    if (element is List)
      return _deserializeListOf<SingleItemType>(element);
    else
      return _deserialize<SingleItemType>(element);
  }

  BuiltList<SingleItemType> _deserializeListOf<SingleItemType>(
      List dynamicList,
      ) {
    // Make a BuiltList holding individual custom objects
    return BuiltList<SingleItemType>(
      dynamicList.map((element) => _deserialize<SingleItemType>(element)),
    );
  }

  SingleItemType? _deserialize<SingleItemType>(Map<String, dynamic> value) {
    // We have a type parameter for the BuiltValue type
    // which should be returned after deserialization.
    return serializers.deserializeWith<dynamic>(serializers.serializerForType(SingleItemType)!, value);
  }
}