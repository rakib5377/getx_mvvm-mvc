class AppUrl{
  static const String baseUrl = 'https://reqres.in/';
  static const String loginEndPoint = '${baseUrl}api/login';
  static const String usersEndPoint = '${baseUrl}api/users?page=2';
}
class AppHeader {
  static const Map header =
    {
      "x-api-key": "reqres-free-v1"
    };

}