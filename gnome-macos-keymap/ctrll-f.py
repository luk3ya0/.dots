# Enter script code
if "emacs" in window.get_active_class():
    keyboard.send_keys("<ctrl>+f")
else:
    keyboard.send_keys("<right>")