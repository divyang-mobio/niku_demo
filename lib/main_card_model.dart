class MainCardModel {
  String image, name, delivery;
  int price;
  bool isFavorite;
  List<String> size;

  MainCardModel(
      {required this.name,
      required this.image,
      required this.price,
      required this.isFavorite,
      required this.delivery,
      required this.size});
}
