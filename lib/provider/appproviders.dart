import 'package:localbuzz/controller/appcontroller.dart';
import 'package:localbuzz/view/mainmenu/mainmenu_providers.dart';
import 'package:localbuzz/view/screens/cart/cart_provider.dart';
import 'package:localbuzz/view/screens/home/homeprovider.dart';
import 'package:localbuzz/view/screens/chat/chat_provider.dart';
import 'package:localbuzz/view/screens/profile/profile_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> getProviders() {
  return [
    ChangeNotifierProvider(
      lazy: false,
      create: (context) => AppController(),
    ),
    ChangeNotifierProvider(
      lazy: false,
      create: (context) => MainMenuProvider(),
    ),
    ChangeNotifierProvider(
      lazy: false,
      create: (context) => CartProvider(),
    ),
    ChangeNotifierProvider(
      lazy: false,
      create: (context) => HomeProvider(),
    ),
    ChangeNotifierProvider(
      lazy: false,
      create: (context) => MessageProvider(),
    ),
    ChangeNotifierProvider(
      lazy: false,
      create: (context) => ProfileProvider(),
    ),
  ];
}
