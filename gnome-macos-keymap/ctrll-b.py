# Enter script code
if "emacs" in window.get_active_class():
    keyboard.send_keys("<ctrl>+b")
else:
    keyboard.send_keys("<left>")