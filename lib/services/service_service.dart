import 'package:grpc/grpc.dart' as grpc;
import 'package:open_pms/generated/service_service.pbgrpc.dart';

class ServiceService extends ServiceServiceBase {
  List<grpc.Service> services = [];

  @override
  Stream<Service> listService(
      grpc.ServiceCall call, ListServiceRequest request) {
    return Stream.fromIterable(services.map((e) => Service(name: e.$name)));
  }
}
