# Enter script code
if "emacs" in window.get_active_class():
    keyboard.send_keys("<super>+<alt>+l")
else:
    keyboard.send_keys("<ctrl>+<alt>+l")