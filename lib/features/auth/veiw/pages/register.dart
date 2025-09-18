import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../imports/register_imports.dart';
import '../widget/dialog.dart';

class Register extends ConsumerStatefulWidget {
  const Register({super.key});

  @override
  ConsumerState<Register> createState() => _RegisterState();
}

class _RegisterState extends ConsumerState<Register> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); // Form validation
  final ScrollController scrollController = ScrollController();
  //overlay
  final FocusNode focusNode = FocusNode();
  late final LayerLink link;
  late OverlayEntry? entry;
  late final OverlayState overlayState;

  late AuthRemoteRepository authRemoteRepository;
  late String phoneNumber;
  Social? provider;
  bool isProcessing = false;
  bool pVisible = false;
  bool isEmailVerifying = false;
  bool isPhoneVerifying = false;

  // Controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController pinController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  late final String? language;
  late final String? country;
  bool canRegister = false;
  String? name;
  @override
  void initState() {
    super.initState();

    language = slocal?.languageCode ?? ref.read(locale)?.languageCode;
    country = slocal?.countryCode ?? ref.read(locale)?.countryCode;
    authRemoteRepository = ref.read(authRemoteRepositoryProvider);
    name = authRemoteRepository.userCredential?.user?.displayName;
    firstNameController.text = name?.split(' ').first ?? '';
    lastNameController.text = name?.split(' ').last ?? '';
    phoneNumber = authRemoteRepository.phone ?? '';
    emailController.text = authRemoteRepository.email ?? authRemoteRepository.userCredential?.user?.email ?? '';
    phoneNumber = authRemoteRepository.userCredential?.user?.phoneNumber ?? phoneNumber;

    focusNode.addListener(() {
      if (isUserNameEnabled()) {
        if (focusNode.hasFocus) {
          showOverlay();
          scrollController.animateTo(scrollController.offset + 150, duration: Durations.medium1, curve: Curves.easeInOut);
        } else {
          removeOverlaySafely();
        }
      }
    });

    link = LayerLink();
    entry = OverlayEntry(builder: (final BuildContext context) => const SizedBox.shrink());
    overlayState = Overlay.of(context);

    userNameController.addListener(updateRegister);
    passwordController.addListener(updateRegister);
    firstNameController.addListener(updateRegister);
  }

  void removeOverlaySafely() {
    try {
      if (entry != null && entry!.mounted) {
        entry!.remove();
      }
    } catch (e) {
      log('Error removing overlay: $e');
    } finally {
      entry = null; // Always clear the reference
    }
  }

  void updateRegister() => canRegister != areAllFieldsFilled() ? setState(() => canRegister = areAllFieldsFilled()) : null;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    provider = ModalRoute.settingsOf(context)?.arguments as Social?;
  }

  @override
  void dispose() {
    userNameController.dispose();
    pinController.dispose();
    passwordController.dispose();
    emailController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    focusNode
      ..unfocus()
      ..dispose();
    entry?.dispose();
    overlayState.deactivate();
    scrollController.dispose();
    super.dispose();
  }

  bool isApple() => isSocial() && provider == Social.apple;
  bool isSocial() => provider != null;
  bool isPhoneVerified() => authRemoteRepository.phone == phoneNumber;
  bool isEmailVerified() => authRemoteRepository.email == emailController.text || isSocial();
  bool isUserNameEnabled() => isEmailVerified() && isPhoneVerified() && firstNameController.text.isNotEmpty && lastNameController.text.isNotEmpty;
  void showOverlay() {
    entry = OverlayEntry(
      maintainState: true,
      builder:
          (final BuildContext context) => Positioned(
            width: mediaQuery.size.width - padding * 2,
            child: CompositedTransformFollower(
              link: link,
              showWhenUnlinked: false,
              offset: const Offset(0, 62),
              child: Consumer(
                builder:
                    (final BuildContext context, final WidgetRef ref, final Widget? child) => ref
                        .watch(SuggestionProvider('${firstNameController.text} ${lastNameController.text}'))
                        .when(
                          loading: () => const SizedBox(height: 260, child: Material(child: loading)),
                          error: (final Object error, final StackTrace stackTrace) {
                            WidgetsBinding.instance.addPostFrameCallback((_) => showSnackBar(error.toString(), context: context));
                            // Return an EMPTY but valid suggestion list UI.
                            // This keeps the widget tree structure consistent.
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                IgnorePointer(
                                  child: SizedBox(
                                    width: mediaQuery.size.width - padding * 2,
                                    child: Material(
                                      type: MaterialType.card,
                                      elevation: 56,
                                      color: Colors.white,
                                      shadowColor: Colors.black54,
                                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(padding),
                                        child: Text(l10n.something_went_wrong, style: Secondary.titleLarge),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },

                          data:
                              (final List<String> data) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  IgnorePointer(
                                    child: SizedBox(
                                      width: mediaQuery.size.width - padding * 2,
                                      child: Material(
                                        type: MaterialType.card,
                                        elevation: 56,
                                        color: Colors.white,
                                        shadowColor: Colors.black54,
                                        borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(padding, padding, padding, 14),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            spacing: padding,
                                            children: <Widget>[
                                              IconText(
                                                text: l10n.you_can_take_this_username,

                                                icon: Icons.check_circle_rounded,
                                                color: Colorx.primary,
                                                iconColor: Colorx.primary,
                                              ),
                                              Text(l10n.suggested_username, style: Secondary.titleLarge),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: mediaQuery.size.width - padding * 2,
                                    child: Material(
                                      type: MaterialType.card,
                                      elevation: 56,
                                      color: Colors.white,
                                      shadowColor: Colors.black38,
                                      borderRadius: const BorderRadius.vertical(bottom: Radius.circular(10)),
                                      child: SizedBox(
                                        height: 125,
                                        width: mediaQuery.size.width - padding * 2,
                                        child: ListView(
                                          padding: const EdgeInsets.only(bottom: padding),
                                          children: List.generate(
                                            data.length,
                                            (final int i) => SizedBox(
                                              width: mediaQuery.size.width - padding * 2,
                                              child: InkWell(
                                                onTap: () {
                                                  focusNode.unfocus();

                                                  userNameController.text = data.elementAt(i);
                                                },
                                                child: Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: padding, vertical: 10),
                                                  child: Text(data.elementAt(i), style: Secondary.titleLargeBold),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                        ),
              ),
            ),
          ),
    );
    overlayState.insert(entry!);
  }

  Future<void> _dialogBuilder(final BuildContext context, final bool isEmail) => showDialog(
    barrierColor: Colors.black38,
    context: context,
    builder:
        (final BuildContext context) => DialogView(
          phoneNumber: isEmail ? null : phoneNumber,
          email: isEmail ? emailController.text : null,
          change: true,
          pinController: pinController,
          resendOtp: () => (isEmail ? sendEmailOTP() : sendPhoneOTP()).then((value) => value.fold((error) => false, (data) => true)),
          verifyOtp:
              (String value) => (isEmail ? verifyEmailOTP(value) : verifyPhoneOTP(value, isSocial: isSocial())).then(
                (res) => res.fold((error) => false, (_) {
                  showSnackBar(l10n.code_verified, context: context, success: true);
                  Navigator.pop(context);
                  return true;
                }),
              ),
        ),
  ).whenComplete(() => setState(pinController.clear));

  String? passwordalidation() {
    final String value = passwordController.text.trim();

    if (value.length < 8) {
      return 'Password must be at least 8 characters long.';
    }
    if (!RegExp(r'^(?=.*[A-Z])(?=.*\d)(?=.*[\W_]).{8,}$').hasMatch(value)) {
      return 'Password must contain at least one uppercase letter.';
    }
    return null;
  }

  Future<void> register() async {
    if (!_formKey.currentState!.validate() && !isSocial()) return;
    // final String? passwordValidation = passwordalidation();
    // if (passwordValidation != null) {
    //   showSnackBar(passwordValidation, context: context);
    //   return;
    // }
    if (userNameController.text.isEmpty && (name ?? '${firstNameController.text} ${lastNameController.text}').replaceAll(" ", "").isNotEmpty) {
      userNameController.text = (await ref.watch(SuggestionProvider(name ?? '${firstNameController.text} ${lastNameController.text}').future)).first;
    }
    setState(() => isProcessing = true);
    try {
      (isSocial()
              ? await authRemoteRepository.socialAuth(
                '${firstNameController.text} ${lastNameController.text}',
                userNameController.text,
                language ?? 'pt',
                country ?? 'PT',
                passwordController.text,
                provider!,
                emailController.text,
                null,
              )
              : await authRemoteRepository.completeRegistration(
                '${firstNameController.text} ${lastNameController.text}',
                userNameController.text,
                language ?? 'pt',
                country ?? 'PT',
                passwordController.text,
              ))
          .fold((final ErrorDetails error) => showSnackBar(error.message), (final UserDetail user) {
            ref.invalidate(authRemoteRepositoryProvider);
            Navigator.pushNamedAndRemoveUntil(context, AppRoutes.bottomNavigationScreen, (final Route<dynamic> route) => false);
          });
    } finally {
      setState(() => isProcessing = false);
    }
  }

  @override
  Widget build(final BuildContext context) {
    final bool userNameEnabled = isUserNameEnabled();
    provider = ModalRoute.settingsOf(context)?.arguments as Social?;
    log(name ?? 'No display name found');
    return Scaffold(
      body: GestureDetector(
        onTap: focusNode.unfocus,
        child: Form(
          key: _formKey,
          child: ListView(
            controller: scrollController,
            padding: const EdgeInsets.all(padding),
            children: <Widget>[
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(padding: EdgeInsets.only(top: spacing * 3, bottom: spacing / 2), child: Back(isMarging: false)),
              ),
              Title(text: isApple() ? l10n.complete_your_information : l10n.hello_register_to_get_started),
              const Gap(p24),
              Visibility(
                visible: !isApple(),
                child: _EmailField(
                  isEmailVerified: isEmailVerified(),
                  emailController: emailController,
                  onVerifyPressed: _verifyEmail,
                  isEmailVerifying: isEmailVerifying,
                ),
              ),

              _PhoneField(
                isPhoneVerified: isPhoneVerified(),
                onTextChanged: (final String text) => phoneNumber = text,
                e164: phoneNumber,
                onVerifyPressed: _verifyPhone,
                isPhoneVerifying: isPhoneVerifying,
              ),
              const Gap(14),
              Visibility(
                visible: !isApple() || name.isBlank || lastNameController.text.isEmpty,
                child: NameField(
                  first: firstNameController,
                  last: lastNameController,
                  onNameChanged: (final String p0) {
                    if (userNameEnabled != isUserNameEnabled()) {
                      setState(() {});
                    }
                  }, //=> firstNameController.text.length > 2 == 3 ? setState(() {}) : null,
                ),
              ),

              Visibility(
                visible: !isApple() || name.isBlank,
                child: _UsernameField(
                  link: link,
                  userNameController: userNameController,
                  focusNode: focusNode,
                  isUserNameEnabled: isUserNameEnabled(),
                  onTap: () {
                    // Only request focus if username is enabled
                    if (isUserNameEnabled()) {
                      focusNode.requestFocus();
                    } else {
                      // Prevent showing system context menu for read-only field.
                      focusNode.unfocus();
                    }
                  },
                ),
              ),

              if (!isSocial())
                PasswordField(pVisible: pVisible, passwordController: passwordController, toggleVisibility: () => setState(() => pVisible = !pVisible)),
              RegisterButton(onPressed: areAllFieldsFilled() ? register : null, isProcessing: isProcessing, text: isApple() ? l10n.save : l10n.signup),
              if (!isSocial()) _SocialButtons(authRemoteRepository: authRemoteRepository),
              Visibility(visible: !isApple(), child: const _LoginText()),
              Gap(isSocial() ? 80 : 40),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _verifyEmail() async {
    final Either<ErrorDetails, String> result = await sendEmailOTP();
    result.fold((final ErrorDetails l) => showSnackBar(l.message, context: context, success: true), (final String r) => _dialogBuilder(context, true));
    updateRegister();
  }

  Future<Either<ErrorDetails, String>> sendEmailOTP() async {
    setState(() => isEmailVerifying = true);
    final Either<ErrorDetails, String> result = await authRemoteRepository.sendEmailOtp(emailController.text);
    setState(() => isEmailVerifying = false);
    return result;
  }

  Future<void> _verifyPhone() async {
    final Either<ErrorDetails, String> result = await sendPhoneOTP();
    result.fold((final ErrorDetails l) => showSnackBar(l.message, context: context, success: true), (final String r) => _dialogBuilder(context, false));
    updateRegister();
  }

  Future<Either<ErrorDetails, String>> verifyEmailOTP(final String value) => authRemoteRepository.verifyEmailOtp(value, emailController.text);

  Future<Either<ErrorDetails, String>> verifyPhoneOTP(final String value, {final bool isSocial = false}) =>
      authRemoteRepository.verifyPhoneOtp(value, phoneNumber, isSocial: isSocial);

  Future<Either<ErrorDetails, String>> sendPhoneOTP() async {
    setState(() => isPhoneVerifying = true);
    final Either<ErrorDetails, String> result = await authRemoteRepository.sendPhoneOtp(phoneNumber, isSocial: isSocial());
    setState(() => isPhoneVerifying = false);
    return result;
  }

  bool areAllFieldsFilled() =>
      emailController.text.trim().isNotEmpty &&
      phoneNumber.trim().isNotEmpty &&
      firstNameController.text.trim().isNotEmpty &&
      lastNameController.text.trim().isNotEmpty &&
      (isApple() || userNameController.text.trim().isNotEmpty) &&
      isEmailVerified() &&
      isPhoneVerified() &&
      (isSocial() || passwordController.text.trim().isNotEmpty);
}

class Title extends StatelessWidget {
  const Title({required this.text, super.key});
  final String text;

  @override
  Widget build(BuildContext context) => Padding(padding: const EdgeInsets.symmetric(vertical: 8), child: Text(text, style: Default.displaySmall));
}

class _EmailField extends StatelessWidget {
  const _EmailField({required this.isEmailVerified, required this.emailController, required this.onVerifyPressed, required this.isEmailVerifying});

  final bool isEmailVerified;
  final TextEditingController emailController;
  final VoidCallback? onVerifyPressed;
  final bool isEmailVerifying;

  @override
  Widget build(BuildContext context) => FilledTextField(
    hintText: 'E-mail',
    readOnly: isEmailVerified,
    controller: emailController,
    keyboardType: TextInputType.emailAddress,
    icon: isEmailVerified ? Icons.check_circle : null,
    suffix: cyanTextButton(isEmailVerifying ? null : onVerifyPressed, isEmailVerifying ? 'Verifying...' : 'Verify', disabled: isEmailVerifying),
  );
}

class _PhoneField extends StatelessWidget {
  const _PhoneField({
    required this.isPhoneVerified,
    required this.onTextChanged,
    required this.e164,
    required this.onVerifyPressed,
    required this.isPhoneVerifying,
  });

  final bool isPhoneVerified;
  final OnTextChangedCallback onTextChanged;
  final String? e164;
  final VoidCallback? onVerifyPressed;
  final bool isPhoneVerifying;

  @override
  Widget build(BuildContext context) => FilledPhoneNo(
    hintText: l10n.phone_no,
    icon: isPhoneVerified ? Icons.check_circle : null,
    readOnly: isPhoneVerified,
    onTextChanged: onTextChanged,
    e164: e164,
    suffix: cyanTextButton(isPhoneVerifying ? null : onVerifyPressed, isPhoneVerifying ? 'Verifying...' : 'Verify', disabled: isPhoneVerifying),
  );
}

class NameField extends StatelessWidget {
  const NameField({required this.first, required this.last, super.key, this.onNameChanged});

  final TextEditingController first;
  final TextEditingController last;
  final ValueChanged<String>? onNameChanged;

  @override
  Widget build(BuildContext context) => Row(
    spacing: p12,
    children: [
      Expanded(child: FilledTextField(hintText: l10n.first_name, controller: first, onChanged: onNameChanged, keyboardType: TextInputType.name)),
      Expanded(child: FilledTextField(hintText: l10n.last_name, controller: last, onChanged: onNameChanged, keyboardType: TextInputType.name)),
    ],
  );
}

class _UsernameField extends StatelessWidget {
  const _UsernameField({required this.link, required this.userNameController, required this.focusNode, required this.isUserNameEnabled, this.onTap});

  final LayerLink link;
  final TextEditingController userNameController;
  final FocusNode focusNode;
  final bool isUserNameEnabled;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) => CompositedTransformTarget(
    link: link,
    child: FilledTextField(
      onTap: onTap,
      controller: userNameController,
      focusNode: focusNode,
      hintText: l10n.choose_a_username,
      readOnly: !isUserNameEnabled,
      keyboardType: TextInputType.name,
    ),
  );
}

class PasswordField extends StatelessWidget {
  const PasswordField({required this.pVisible, required this.passwordController, required this.toggleVisibility, super.key});

  final bool pVisible;
  final TextEditingController passwordController;
  final VoidCallback toggleVisibility;

  @override
  Widget build(BuildContext context) => FilledTextField(
    hintText: l10n.create_password,
    isVisible: pVisible,
    controller: passwordController,
    keyboardType: TextInputType.visiblePassword,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return l10n.password_is_empty;
      }
      if (value.length < 8) {
        return l10n.password_must_8_char_long;
      }
      if (!value.contains(RegExp('[A-Z]'))) {
        return l10n.password_must_contains_one_uppercase;
      }
      return null;
    },
    suffix: IconButton(onPressed: toggleVisibility, icon: Icon(pVisible ? CupertinoIcons.eye_slash_fill : CupertinoIcons.eye_solid)),
  );
}

class RegisterButton extends StatelessWidget {
  const RegisterButton({required this.isProcessing, required this.text, super.key, this.onPressed});
  final String text;
  final VoidCallback? onPressed;
  final bool isProcessing;

  @override
  Widget build(BuildContext context) =>
      Padding(padding: const EdgeInsets.only(top: 28, bottom: 28), child: BlackButton(text: text, onPressed: onPressed, isLoading: isProcessing));
}

class _LoginText extends StatelessWidget {
  const _LoginText();

  @override
  Widget build(BuildContext context) => RichText(
    textAlign: TextAlign.center,
    text: TextSpan(
      text: l10n.already_have_an_account,
      style: Default.title,
      children: <InlineSpan>[
        TextSpan(
          text: l10n.login_here,
          style: Cyan.titleLarge,
          recognizer: TapGestureRecognizer()..onTap = () => Navigator.pushNamed(context, AppRoutes.login),
        ),
      ],
    ),
  );
}

class _SocialButtons extends StatelessWidget {
  const _SocialButtons({required this.authRemoteRepository});
  final AuthRemoteRepository authRemoteRepository;

  @override
  Widget build(BuildContext context) => Column(
    children: <Widget>[
      Row(
        children: <Widget>[
          const Expanded(child: Divider(endIndent: 4, height: 0)),
          Text(l10n.or_signup_with, style: Secondary.titleBig),
          const Expanded(child: Divider(indent: 4, height: 0)),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(top: 24, bottom: padding * 2),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 9,
              child: SizedBox(
                height: 48,
                child: OutlinedButton.icon(
                  onPressed: () => social(authRemoteRepository, context, Social.google),
                  style: OutlinedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)), iconSize: 39),
                  label: Text(l10n.google, style: Default.titleLarge),
                  icon: SvgPicture.asset(google, width: 32, height: 32),
                ),
              ),
            ),
            if (Platform.isIOS)
              Expanded(
                flex: 10,
                child: Padding(
                  padding: const EdgeInsets.only(left: padding),
                  child: SizedBox(
                    height: 48,
                    child: OutlinedButton.icon(
                      style: OutlinedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)), iconSize: 32),
                      onPressed: () => social(authRemoteRepository, context, Social.apple),
                      label: Text(l10n.apple),
                      icon: const Icon(Icons.apple_rounded),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    ],
  );
}
