import 'package:chopper/chopper.dart';

part 'ApiClient.chopper.dart';

@ChopperApi(baseUrl: "")
abstract class ApiClient extends ChopperService {
  @Post(path: "/Test")
  Future<Response> getCategoriesWithSubjects();

  @Get(path: "/Category")
  Future<Response> getSubjects();
  static  final  clients =  ChopperClient(baseUrl: Uri.parse("http://localhost:5046"),
      services: [
        _$ApiClient()
      ],
      converter: const JsonConverter()
  );
static ApiClient create ()=> _$ApiClient(clients);

}
// runner code
/// flutter packages pub run build_runner watch