import 'package:chopper/chopper.dart';

part 'ApiClient.chopper.dart';

@ChopperApi()
abstract class ApiClient extends ChopperService {

  @Post(path: "/Test")
  Future<Response> createTest(@Body()Map<String,dynamic> body);

  @Post(path: "/User")
  Future<Response> createUser(@Body()Map<String,dynamic> body);

  @Get(path: "/Test")
  Future<Response> getTest();

  @Get(path: "/Exam/Results")
  Future<Response> getExamResult();

  @Get(path: "/Test/{id}")
  Future<Response> getTestById(@Path()int id);

  @Get(path: "/Exam/Test/{id}")
  Future<Response> startExamTestById(@Path()int id);

  @Post(path: "/Exam/Checker/{id}")
  Future<Response> checkTestByCheckerId(@Path()int id,@Body()Map<String,dynamic> body);

  @Get(path: "/User")
  Future<Response> getUserDetails();

  static  final  clients =  ChopperClient(baseUrl: Uri.parse("http://10.0.2.2:5046"),
      services: [
        _$ApiClient()
      ],
      converter: const JsonConverter()
  );
static ApiClient create ()=> _$ApiClient(clients);
}
/// runner code
/// flutter packages pub run build_runner watch