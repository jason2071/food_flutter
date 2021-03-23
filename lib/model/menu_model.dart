class MenuModel {
  String title;
  String icon;

  MenuModel({
    this.title,
    this.icon,
  });
}

List<MenuModel> menuList = [
  MenuModel(title: "Profile", icon: "assets/icons/icon_profile.svg"),
  MenuModel(title: "Orders", icon: "assets/icons/icon_order.svg"),
  MenuModel(
      title: "Offer and promo", icon: "assets/icons/icon_offer_and_promo.svg"),
  MenuModel(
      title: "Privacy policy", icon: "assets/icons/icon_privacy_policy.svg"),
  MenuModel(title: "Security", icon: "assets/icons/icon_securit.svg"),
];
