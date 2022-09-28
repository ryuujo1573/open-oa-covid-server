import 'package:grpc/grpc.dart' as grpc;
import 'package:open_pms/services/bodytemp_service.dart';
import 'package:open_pms/services/service_service.dart';

void main(List<String> arguments) async {
  const defaultPort = 8000;
  final metaService = ServiceService();
  metaService.services.addAll([
    BodyTempService(),
  ]);

  final server = grpc.Server([metaService, ...metaService.services]);

  await server.serve(port: defaultPort);
  print('Server listening on $defaultPort');
}
