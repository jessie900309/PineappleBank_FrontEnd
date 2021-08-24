import 'package:flutter/material.dart';
import 'package:sign_button/sign_button.dart';
import 'package:pineapplebank_frontend/util/Loading.dart';
import 'package:pineapplebank_frontend/screens/authenticate/authenticate_constants.dart';
import 'package:pineapplebank_frontend/util/AssetImgPath.dart';

// 登入畫面
class SignIn extends StatefulWidget {
  final Function toggleView;
  SignIn({this.toggleView});
  @override
  _SignInState createState() => _SignInState();
}
class _SignInState extends State<SignIn> {

  //輸入框(TextFormField)控制
  final text_pinEmail = TextEditingController();
  final text_pinCode = TextEditingController();

  //畫面狀態
  bool loading = false;

  //表單狀態
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {

    //讓Widget尺寸根據螢幕寬度調整
    final ScreenW = MediaQuery.of(context).size.width;
    final paddingNum = ScreenW/12;
    final LogoRadius = ScreenW/3;

    //輸入框
    final EmailInput = TextFormField(
      keyboardType: TextInputType.multiline,
      controller: text_pinEmail,
      validator: (val) => val.isEmpty ? pinEmailHintText : null,
      onChanged: (val) {setState(() => email = val);},
      style: InputBlockTextDesign,
      cursorColor: InputColor,
      decoration: EmailInputDesign,
    );
    final PasswordInput = TextFormField(
      keyboardType: TextInputType.multiline,
      controller: text_pinCode,
      obscureText: true,
      validator: (val) => val.length < 6 ? PasswordErrorText : null,//密碼限制(大於六個字)
      onChanged: (val) {setState(() => password = val);},
      style: InputBlockTextDesign,
      cursorColor: InputColor,
      decoration: PasswordInputDesign,
    );

    //登入按鈕
    final SignInBtn = ElevatedButton(
      style: SubmitBtnStyle,
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

    //表單本體(含按鈕)
    final SignInForm = Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          EmailInput,
          WidgetSpace,
          PasswordInput,
          WidgetSpace,
          SignInBtn,
          WidgetSpace,
          ShowErrorText,
        ],
      ),
    );

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

    //AppBar右上角按鈕 切換畫面
    final GotoSignUp = TextButton.icon(
      icon: ChangePageIcon,
      label: SignUpText,
      onPressed: (){
        widget.toggleView();
      },
    );

    //美觀設計
    //Widget之間的留白 20.0 WidgetSpace在authenticate_constants.dart
    final dividerLine = SizedBox(
      width: MediaQuery.of(context).size.width*0.8,
      height: 3,
      child: divLineDesign,
    );
    final AppLogo = Column(
      children: [
        WidgetSpace,
        Container(
          width: LogoRadius,
          height: LogoRadius,
          child: Image(
            image: AssetImage(AppIconPath),
          ),
        ),
        WidgetSpace,WidgetSpace,
      ],
    );
    final underDividerLine = Column(
      children: [
        WidgetSpace,WidgetSpace,
        dividerLine,
        WidgetSpace,WidgetSpace,
        OtherSignIn,
      ],
    );

    return loading ? Loading() : Scaffold(
      backgroundColor: SignInBGcolor,
      appBar: AppBar(
        backgroundColor: SignInBarColor,
        elevation: 0.0,
        title: AppBarAppName,
        actions: <Widget>[GotoSignUp,],
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
            //上下左右的空隙
            vertical: paddingNum,
            horizontal: paddingNum,
          ),
          children: [
            AppLogo,
            //表單在這裡OuO
            SignInForm,
            //
            underDividerLine,
          ],
        ),
      ),
      // ^ 點擊空白處自動收起鍵盤 v 避免輸入框被遮擋
      resizeToAvoidBottomInset: false,
    );
  }
}

// 註冊畫面
class Register extends StatefulWidget {
  final Function toggleView;
  Register({this.toggleView});
  @override
  _RegisterState createState() => _RegisterState();
}
class _RegisterState extends State<Register> {

  //畫面狀態
  bool loading = false;

  //表單狀態
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  String password2 ='';
  String error = '';

  @override
  Widget build(BuildContext context) {

    //讓Widget尺寸根據螢幕寬度調整
    final ScreenW = MediaQuery.of(context).size.width;
    final paddingNum = ScreenW/12;
    final LogoRadius = ScreenW/3;

    //輸入框
    final EmailInput = TextFormField(
      keyboardType: TextInputType.multiline,
      validator: (val) => val.isEmpty ? pinEmailHintText : null,
      onChanged: (val) {
        setState(() => email = val);
      },
      style: InputBlockTextDesign,
      cursorColor: InputColor,
      decoration: EmailInputDesign,
    );
    final PasswordInput = TextFormField(
      keyboardType: TextInputType.multiline,
      obscureText: true,
      validator: (val) => val.length < 6 ? PasswordErrorText : null,
      onChanged: (val) {
        setState(() => password = val);
      },
      style: InputBlockTextDesign,
      cursorColor: InputColor,
      decoration: PasswordInputDesign,
    );
    final PasswordCheck = TextFormField(
      keyboardType: TextInputType.multiline,
      obscureText: true,
      validator: (val) => password2!=password ? ConfirmPasswordErrorText : null,
      onChanged: (val) {
        setState(() => password2 = val);
      },
      style: InputBlockTextDesign,
      cursorColor: InputColor,
      decoration: PassWord2InputDesign,
    );

    //註冊按鈕
    final SindUpBtn = ElevatedButton(
      style: SubmitBtnStyle,
      child: SignUpText,
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

    //表單本體(含按鈕)
    final RegisterForm = Form(
      key: _formKey,
      child: Column(
        children: [
          EmailInput,
          WidgetSpace,
          PasswordInput,
          WidgetSpace,
          PasswordCheck,
          WidgetSpace,
          SindUpBtn,
          WidgetSpace,
          ShowErrorText,
        ],
      ),
    );

    //AppBar右上角按鈕 切換畫面
    final BacktoSignIn = TextButton.icon(
      icon: ChangePageIcon,
      label: SignUpText,
      onPressed: (){widget.toggleView();},
    );

    //美觀設計
    //Widget之間的留白 20.0 WidgetSpace在authenticate_constants.dart
    final AppLogo = Column(
      children: [
        WidgetSpace,
        Container(
          width: LogoRadius,
          height: LogoRadius,
          child: Image(
            image: AssetImage(AppIconSmilePath),
          ),
        ),
        WidgetSpace,WidgetSpace,
      ],
    );

    return loading ? Loading() : Scaffold(
      backgroundColor: SignInBGcolor,
      appBar: AppBar(
        backgroundColor: SignInBarColor,
        elevation: 0.0,
        title: AppBarAppName,
        actions: <Widget>[BacktoSignIn,],
      ),
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child:ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(
            vertical: paddingNum,
            horizontal: paddingNum,
          ),
          children: [
            AppLogo,
            RegisterForm,
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
