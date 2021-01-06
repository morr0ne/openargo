import 'dart:convert';
import 'package:http/http.dart' as http;

class ArgoClient {
  final _client = http.Client();

  Future<http.Response> _argoRequest(
      String method,
      String path,
      Map<String, String> headers,
      Map<String, String> params,
      Map<String, String> body) async {
    var url = Uri.https('www.portaleargo.it', '/famiglia/api/rest/${path}',
        {'_dc': DateTime.now().millisecondsSinceEpoch.toString(), ...params});

    var request = http.Request(method, url);
    request.headers.addAll(headers);
    request.bodyFields = body;

    return http.Response.fromStream(await _client.send(request));
  }

  Future get(String path, Map<String, String> headers,
      {Map<String, String> params}) async {
    params = (params == null) ? {} : params;

    var res = await _argoRequest('get', path, headers, params, {});
    return jsonDecode(res.body);
  }

  Future post(String path, Map<String, String> headers,
      {Map<String, String> params, Map<String, String> body}) async {
    params = (params == null) ? {} : params;
    body = (body == null) ? {} : body;

    var res = await _argoRequest('post', path, headers, params, body);
    return jsonDecode(res.body);
  }
}
