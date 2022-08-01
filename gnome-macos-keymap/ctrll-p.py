# Enter script code
if "emacs" in window.get_active_class():
    keyboard.send_keys("<ctrl>+p")
else:
    keyboard.send_keys("<up>")