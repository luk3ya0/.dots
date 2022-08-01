# Enter script code
if "emacs" in window.get_active_class():
    keyboard.send_keys("<super>+j")
else:
    keyboard.send_keys("<ctrl>+j")