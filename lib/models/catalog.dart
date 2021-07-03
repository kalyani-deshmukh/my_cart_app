class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}

final products = [
  Item(
  id: "item001",
  name:"Athena",
  desc: "Charming Fuchsia Pink Power Shoulders Tulip Hem Wrap Dress",
  price: 979,
  color:"#33505a",
  image: "https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/13719160/2021/3/5/b04a5dc0-9beb-4490-ae2c-f0f9654ded1c1614925067822-Athena-Fuchsia-Pink-dress-with-Power-shoulderS--Tulip-Bottom-1.jpg",
  ),
];
