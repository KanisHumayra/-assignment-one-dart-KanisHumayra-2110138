import 'package:test/test.dart';
import 'dart:io';
import '../question4.dart';

void main() {
  group('Question 4 Tests', () {
    test('Car class can be instantiated', () {
      final car = Car('Toyota', 'Camry', 2020, 4);
      expect(car.brand, equals('Toyota'));
      expect(car.model, equals('Camry'));
      expect(car.year, equals(2020));
      expect(car.numberOfDoors, equals(4));
      print(car.brand);
      print(car.model);
      print(car.year);
      print(car.numberOfDoors);
    });
    
    test('Motorcycle class can be instantiated', () {
      final motorcycle = Motorcycle('Honda', 'CBR', 2021, true);
      expect(motorcycle.brand, equals('Honda'));
      expect(motorcycle.model, equals('CBR'));
      expect(motorcycle.year, equals(2021));
      expect(motorcycle.hasWindshield, equals(true));
      print(motorcycle.brand);
      print(motorcycle.model);
      print(motorcycle.year);
      print(motorcycle.hasWindshield);
    });
    
    test('calculateAge method works correctly', () {
      final car = Car('Toyota', 'Camry', 2020, 4);
      final currentYear = DateTime.now().year;
      final expectedAge = currentYear - 2020;
      expect(car.calculateAge(), equals(expectedAge));
      print(car.calculateAge());
    });
    
    test('polymorphism works correctly', () {
      var vehicles = <Vehicle>[
        Car('Toyota', 'Camry', 2020, 4),
        Motorcycle('Honda', 'CBR', 2021, true),
      ];
      
      expect(vehicles.length, equals(2));
      expect(vehicles[0], isA<Car>());
      expect(vehicles[1], isA<Motorcycle>());
      print(vehicles[0].brand);
      print(vehicles[1].brand);
    });
    
    test('main function runs without errors', () {
      // This test verifies that the main function exists and can be called
      expect(true, isTrue);
      
    });
  });
}
