class Camera {
  int _id;
  String _brand;
  String _color;
  double _price;

  int get id => _id;
  String get brand => _brand;
  String get color => _color;
  double get price => _price;

  set id(int id) => _id = id;
  set brand(String brand) => _brand = brand;
  set color(String color) => _color = color;
  set price(double price) => _price = price;

  Camera(this._id, this._brand, this._color, this._price);

  void printDetails() {
    print('ID: $_id, Brand: $_brand, Color: $_color, Price: \$${_price.toStringAsFixed(2)}');
  }
}

void main() {
  Camera camera1 = Camera(1, 'Canon', 'Black', 799.99);
  Camera camera2 = Camera(2, 'Nikon', 'Silver', 1200.50);
  Camera camera3 = Camera(3, 'Sony', 'Red', 950.00);

  print('Camera 1 Details:');
  camera1.printDetails();

  print('\nCamera 2 Details:');
  camera2.printDetails();

  print('\nCamera 3 Details:');
  camera3.printDetails();

  camera1.price = 850.00;
  print('\nUpdated Camera 1 Price: \$${camera1.price.toStringAsFixed(2)}');
}