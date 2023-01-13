import 'package:http/http.dart' as http;

void main(List<String> args) async {
  http.Response response = await priceUsd(
    'free3HSIkITicxJLc7c38A98JrEYslzu',
    'usd_buy',
  );

  print(response.body);
}

Future<http.Response> priceUsd(String apiKey, String item) {
  return http.post(
    Uri.parse('http://api.navasan.tech/latest/?api_key=$apiKey&item=$item'),
    //! body: jsonEncode({'api_key': 'free3HSIkITicxJLc7c38A98JrEYslzu'}),
  );
}
