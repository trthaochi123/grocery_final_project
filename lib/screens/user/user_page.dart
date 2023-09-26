// body: isDrawer ? widgetDrawerOption[seclectedPage] : widgetOption[seclectedPage],
// drawer: DrawerView(
// icon: const AppIcon(
// icon: "assets/icons/ic_avatar.png",
// name: "George D.",
// username: "@george31",
// ),
// background: AppColors.whiteColor,
// backgroundItem: AppColors.backgroundItemDrawerColor,
// onClickItem: (index) {
// if(index == widgetDrawerOption.length) {
// const snackBar = SnackBar(
// content: Text("You've logged out"));
// scaffoldKey.currentState?.closeDrawer();
// ScaffoldMessenger.of(context).showSnackBar(snackBar);
// } else {
// setState(() {
// isDrawer = true;
// seclectedPage = index;
// });
// }
// },
// item: const [
// DrawerItem(
// icon: "assets/svg/ic_my_order.svg",
// title: "My orders",
// ),
// DrawerItem(
// icon: "assets/svg/ic_my_sub.svg",
// title: "My subscriptions",
// ),
// DrawerItem(
// icon: "assets/svg/ic_my_adress.svg",
// title: "My Address",
// ),
// DrawerItem(
// icon: "assets/svg/ic_fab.svg",
// title: "FAQ",
// ),
// DrawerItem(
// icon: "assets/svg/ic_contact_us.svg",
// title: "Contact Us",
// ),
// DrawerItem(
// icon: "assets/svg/ic_about.svg",
// title: "About",
// ),
// DrawerItem(
// icon: "assets/svg/ic_log_out.svg",
// title: "Log Out",
// )
// ]),
