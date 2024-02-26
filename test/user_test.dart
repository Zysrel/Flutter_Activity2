
import 'package:activity2/user_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:mocktail/mocktail.dart';

class MockHttpClient extends Mock implements http.Client {}

void main() {
  late MockHttpClient mockHttpClient;
  late UserRepository userRepository;

  setUp(
    () {
      mockHttpClient = MockHttpClient();
      userRepository = UserRepository(client: mockHttpClient);
    },
  );

  test(
    'Given user repository is instatiated, when fecthuser is called and return is 200, then a user object should be returned.',
    () async {
      when(
        () => mockHttpClient.get(
          Uri.parse('https://jsonplaceholder.typicode.com/users'),
        ),
      ).thenAnswer(
        (_) => Future.delayed(
          Duration.zero,
          () => Response('''
            [
              {
                "id": 1,
                "name": "Leanne Graham",
                "username": "Bret",
                "email": "Sincere@april.biz",
                "address": {
                  "street": "Kulas Light",
                  "suite": "Apt. 556",
                  "city": "Gwenborough",
                  "zipcode": "92998-3874",
                  "geo": {
                    "lat": "-37.3159",
                    "lng": "81.1496"
                  }
                },
                "phone": "1-770-736-8031 x56442",
                "website": "hildegard.org",
                "company": {
                  "name": "Romaguera-Crona",
                  "catchPhrase": "Multi-layered client-server neural-net",
                  "bs": "harness real-time e-markets"
                }
              }
            ]
        ''', 200),
        ),
      );
    },
  );

  test(
    'Given user Repository is instantiated, when fetchuser is called and return is 404, then an Exception should be thrown',
    () async {
      when(() => mockHttpClient.get(
          Uri.parse('https://jsonplaceholder.typicode.com/users'))).thenAnswer(
        (_) => Future.delayed(
          Duration.zero,
          () => Response('', 404),
        ),
      );

        expect(userRepository.fetchUsers(), throwsException);
    },
  );
}
