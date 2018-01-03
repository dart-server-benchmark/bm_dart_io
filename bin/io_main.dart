import 'dart:io';

main() async {
  HttpServer server =
      await HttpServer.bind(InternetAddress.LOOPBACK_IP_V4, 8081);
  await for (HttpRequest request in server) {
    request.response
      ..headers.contentType = new ContentType("text", "plain", charset: "utf-8")
      ..write('hello')
      ..close();
  }
}
