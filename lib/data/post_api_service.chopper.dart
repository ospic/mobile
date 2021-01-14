// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$PostApiService extends PostApiService {
  _$PostApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = PostApiService;

  @override
  Future<Response<BuiltList<BuiltPost>>> getPosts() {
    final $url = '/service-response/group-list';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BuiltList<BuiltPost>, BuiltPost>($request);
  }

  @override
  Future<Response<BuiltList<NotificationModel>>> getAllNotifications() {
    final $url = '/service-response/notifications';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<BuiltList<NotificationModel>, NotificationModel>($request);
  }

  @override
  Future<Response<BuiltPost>> getPost(int id) {
    final $url = '/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<BuiltPost, BuiltPost>($request);
  }

  @override
  Future<Response<BuiltPost>> postPost(BuiltPost body) {
    final $url = '';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<BuiltPost, BuiltPost>($request);
  }

  @override
  Future<Response> postForLogin(dynamic body) {
    final $url = '/authentication';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }
}
