import 'package:equatable/equatable.dart';

class WeatherDataSource extends Equatable {
  final String name;
  final String url;

  const WeatherDataSource({
    required this.name,
    required this.url,
  });

  @override
  List<Object?> get props => [name, url];
}
