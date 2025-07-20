import 'package:http/http.dart';

abstract class RemoteDatasource {
  final Client client;

  RemoteDatasource(this.client);
}
