# Enter script code
if "emacs" in window.get_active_class():
    keyboard.send_keys("<super>+<alt>+m")
else:
    keyboard.send_keys("<ctrl>+<alt>+m")