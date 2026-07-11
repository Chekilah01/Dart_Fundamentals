// TODO 1: This uses Future.delayed — mark it async and fix the return type
Future<String> fetchWeather(String city) async {
  return Future.delayed(
    Duration(milliseconds: 500),
    () {
      if (city == 'Atlantis') throw Exception('City not found in database');
      if (city == 'Gotham') throw Exception('No data available');
      return '${city}: 22°C, Sunny';
    },
  );
}

// TODO 2: Fetch all cities sequentially using async/await
// Fix the return type and add missing keywords
Future<void> showForecast(List<String> cities) async {
  for (var city in cities) {
    String result = await fetchWeather(city); // this gets a Future, not String
    print(result);
  }
}

// TODO 3: Same as showForecast but wrap each fetch in try/catch
// so a failing city doesn't stop the rest
Future<void> showForecastSafe(List<String> cities) async{
  for (var city in cities) {
    // add try/catch here
    try {
      String result = await fetchWeather(city);
    print(result);
    } catch (e) {
      print(e);
    }
  }
}

void main() async {
  print('Loading...');
  await showForecast(['Tokyo', 'London', 'Paris']);
  await showForecastSafe(['Tokyo', 'Atlantis', 'Paris', 'Gotham', 'Berlin']);
  print('Done');
}