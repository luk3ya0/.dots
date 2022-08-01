# Enter script code
if "emacs" in window.get_active_class():
    keyboard.send_keys("<ctrl>+h")
else:
    keyboard.send_keys("<backspace>")