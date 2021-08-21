import 'package:flutter/material.dart';
import 'package:pineapplebank_frontend/util/Loading.dart';
import 'package:sign_button/sign_button.dart';
import 'package:pineapplebank_frontend/screens/authenticate/authenticate_constants.dart';
import 'package:pineapplebank_frontend/util/AssetImgPath.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}
class _SignInState extends State<SignIn> {

  final _formKey = GlobalKey<FormState>();
  final text_pinEmail = TextEditingController();
  final text_pinCode = TextEditingController();
  bool loading = false;

  //text field state
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {

    //讓Widget尺寸根據螢幕寬度調整
    final ScreenW = MediaQuery.of(context).size.width;
    final paddingNum = ScreenW/12;
    final LogoRadius = ScreenW/3;

    //AppBar右上角按鈕 切換畫面
    final GotoSignUp = TextButton.icon(
      icon: ChangePageIcon,
      label: SignUpText,
      onPressed: (){
        //Sign In Func.
      },
    );

    //畫面正中央的鳳梨
    final AppLogo = Container(
      width: LogoRadius,
      height: LogoRadius,
      child: Image(
        image: AssetImage(AppIconImgPath[0]),
      ),
    );

    //輸入框
    final EmailInput = TextFormField(
      keyboardType: TextInputType.multiline,
      controller: text_pinEmail,
      validator: (val) => val!.isEmpty ? pinEmailHintText : null,
      onChanged: (val) {setState(() => email = val);},
      style: InputBlockTextDesign[0],
      cursorColor: InputColor,
      decoration: EmailInputDesign,
    );
    final PasswordInput = TextFormField(
      keyboardType: TextInputType.multiline,
      controller: text_pinCode,
      obscureText: true,
      validator: (val) => val!.length < 6 ? PasswordErrorText : null,//密碼限制(大於六個字)
      onChanged: (val) {setState(() => password = val);},
      style: InputBlockTextDesign[0],
      cursorColor: InputColor,
      decoration: PasswordInputDesign,
    );

    //登入按鈕
    final SignInBtn = ElevatedButton(
      style: SignInBtnStyle,
      child: SignInText,
      onPressed: () async {
        // Call Func. check password
        // go to HomePage()
      },
    );

    //輸入錯誤的提示訊息
    final ShowErrorText = Text(
      error,
      style: ErrorMsgStyle,
    );


    //美觀設計
    final dividerLine = SizedBox(
      width: MediaQuery.of(context).size.width*0.8,
      height: 3,
      child: divLineDesign,
    );
    //WidgetSpace在authenticate_constants.dart


    //第三方登入 Github、Facebook、Google
    //icon是別人的套件喔OuO
    final OtherSignIn = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        SignInButton.mini(
          buttonType: ButtonType.google,
          onPressed: () {},
        ),
        SignInButton.mini(
          buttonType: ButtonType.facebook,
          btnColor: Colors.white,
          onPressed: () {},
        ),
        SignInButton.mini(
          buttonType: ButtonType.github,
          onPressed: () {},
        ),
      ],
    );

    return loading ? Loading() : Scaffold(
      backgroundColor: SignInBGcolor,
      appBar: AppBar(
        backgroundColor: SignInBarColor,
        elevation: 0.0,
        title: AppBarAppName,
        actions: <Widget>[
          GotoSignUp,
        ],
      ),
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(
            vertical: paddingNum,
            horizontal: paddingNum,
          ),
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  WidgetSpace,
                  AppLogo,
                  WidgetSpace,WidgetSpace,
                  EmailInput,
                  WidgetSpace,
                  PasswordInput,
                  WidgetSpace,
                  SignInBtn,
                  WidgetSpace,
                  ShowErrorText,
                  WidgetSpace,WidgetSpace,
                  dividerLine,
                  WidgetSpace,WidgetSpace,
                  OtherSignIn,
                ],
              ),
            ),
          ],
        ),
      ),
      // ^ 點擊空白處自動收起鍵盤 v 避免輸入框被遮擋
      resizeToAvoidBottomInset: false,
    );
  }
}
