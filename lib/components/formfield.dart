import 'package:flutter/material.dart';
import 'package:knavm/model/select/model_select.dart';
import 'package:knavm/utils/themes.dart';
import 'package:knavm/utils/variable_color.dart';

class InputField extends StatelessWidget {
  final TextEditingController inputControl;
  final Themes theme;
  final FocusNode focusNode;
  final String inputFor;
  final bool? isPassword;
  final bool? borderOutline;
  final bool? showPassword;
  final VoidCallback? onVisiblePassword;
  const InputField(
      {Key? key,
      required this.inputControl,
      required this.focusNode,
      required this.theme,
      required this.inputFor,
      this.onVisiblePassword,
      this.borderOutline = true,
      this.showPassword = false,
      this.isPassword = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          inputFor,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 13,
              color: theme.isDark ? Colors.white60 : Colors.grey[800]),
        ),
        const SizedBox(
          height: 5,
        ),
        TextFormField(
            obscureText: isPassword == true ? !showPassword! : false,
            controller: inputControl,
            style: const TextStyle(fontSize: 16),
            textInputAction:
                isPassword == true ? TextInputAction.go : TextInputAction.next,
            focusNode: focusNode,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            autocorrect: true,
            autofocus: false,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "$inputFor tidak boleh kosong";
              }
              return null;
            },
            decoration: InputDecoration(
                border: borderOutline == false
                    ? const UnderlineInputBorder()
                    : null,
                hintText: 'Masukan $inputFor',
                suffixIcon: isPassword == true
                    ? GestureDetector(
                        onTap: onVisiblePassword,
                        child: Icon(
                          showPassword == false
                              ? Icons.visibility_off_rounded
                              : Icons.visibility,
                          color: Colors.grey,
                        ),
                      )
                    : null,
                hintStyle: const TextStyle(
                    color: Colors.grey, fontWeight: FontWeight.w500),
                contentPadding: borderOutline == true
                    ? const EdgeInsets.fromLTRB(10.0, 15.0, 15.0, 10.0)
                    : const EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
                focusedBorder: borderOutline == true
                    ? const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))
                    : null,
                focusedErrorBorder: borderOutline == true
                    ? OutlineInputBorder(
                        borderSide: BorderSide(color: VariableColors().red))
                    : null,
                errorStyle: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w600,
                    fontSize: 14.0),
                enabledBorder: borderOutline == true
                    ? const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))
                    : null,
                disabledBorder: borderOutline == true
                    ? OutlineInputBorder(
                        borderSide: BorderSide(
                            color: theme.isDark
                                ? VariableColors().lightPrimary
                                : VariableColors().darkPrimary))
                    : null,
                errorBorder: borderOutline == true
                    ? OutlineInputBorder(
                        borderSide: BorderSide(color: VariableColors().red))
                    : null,
                fillColor: Colors.transparent,
                filled: true,
                isDense: false)),
      ],
    );
  }
}

class InputFieldDropdown extends StatelessWidget {
  final Themes theme;
  final FocusNode focusNode;
  final bool isExpanded;
  final TextEditingController editingController;
  final List<ModelSelect> item;
  final String inputFor;

  const InputFieldDropdown(
      {Key? key,
      required this.focusNode,
      required this.theme,
      required this.item,
      required this.inputFor,
      required this.editingController,
      this.isExpanded = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          inputFor,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 13,
              color: theme.isDark ? Colors.white60 : Colors.grey[800]),
        ),
        const SizedBox(
          height: 5,
        ),
        DropdownButtonFormField(
          onChanged: (e) => editingController.text = e.id.toString(),
          hint: Text("Pilih $inputFor"),
          items: item.map<DropdownMenuItem<dynamic>>((value) {
            return DropdownMenuItem<dynamic>(
                value: value.id, child: Text(value.title.toString()));
          }).toList(),
          validator: (value) {
            if (focusNode.hasFocus) {
              return null;
            }
            return "Pilih $inputFor";
          },
          decoration: InputDecoration(
              hintStyle: const TextStyle(
                  color: Colors.grey, fontWeight: FontWeight.w500),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: -1.0, horizontal: 10.0),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)),
              focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: VariableColors().red)),
              errorStyle: const TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.0),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)),
              disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: theme.isDark
                          ? VariableColors().lightPrimary
                          : VariableColors().darkPrimary)),
              errorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red)),
              fillColor: Colors.transparent,
              filled: true),
        ),
      ],
    );
  }
}

class ButtonLoading extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isLoading;
  final bool disabled;
  final double rounded;
  final String buttonText;
  final String buttonTextLoading;
  final String buttonType;

  const ButtonLoading(
      {Key? key,
      required this.onPressed,
      required this.buttonText,
      required this.isLoading,
      this.buttonTextLoading = "",
      this.disabled = false,
      this.rounded = 45.0,
      this.buttonType = 'primary'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.blue[900],
      textColor: Colors.white,
      disabledColor: buttonType == 'error'
          ? Colors.red[800]
          : buttonType == 'warning'
              ? Colors.amber[800]
              : Colors.blue[800],
      disabledTextColor: buttonType == 'error'
          ? Colors.red[200]
          : buttonType == 'warning'
              ? Colors.amber[200]
              : Colors.blue[200],
      onPressed: disabled ? null : onPressed,
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(rounded)),
      child: isLoading
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                        strokeWidth: 2.0, color: Colors.white)),
                const SizedBox(width: 10),
                Text(buttonTextLoading,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 16))
              ],
            )
          : Text(
              buttonText,
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
    );
  }
}

class FormProps extends StatelessWidget {
  final int formType;
  final String label;
  final String placeholder;
  final VoidCallback onChanged;
  const FormProps(
      {super.key,
      required this.onChanged,
      required this.formType,
      required this.label,
      required this.placeholder});

  Widget renderForm(label, type) {
    if (type == 1) {
      return TextFormField(
          style: const TextStyle(fontSize: 16),
          textInputAction: TextInputAction.next,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          autocorrect: true,
          autofocus: false,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "$label tidak boleh kosong";
            }
            return null;
          });
    } else {
      return const Text("Form Input Tidak Tersedia",
          style: TextStyle(color: Colors.red));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
        ),
        const SizedBox(
          height: 5,
        ),
        renderForm(label, formType)
      ],
    );
  }
}
