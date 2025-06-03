class AppUrl{
  static const String baseUrl = 'https://reqres.in/';
  static const String loginEndPoint = '${baseUrl}api/login';

}
class AppHeader {
  static const Map header =
    {
      "x-api-key": "reqres-free-v1"
    };

}