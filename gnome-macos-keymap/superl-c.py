# Enter script code
if "emacs" in window.get_active_class():
    keyboard.send_keys("<super>+c")
elif "terminal" in window.get_active_class():
    keyboard.send_keys("<ctrl>+<shift>+c")
else:
    keyboard.send_keys("<ctrl>+c")