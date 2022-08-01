# Enter script code
if "emacs" in window.get_active_class():
    keyboard.send_keys("<super>+z")
elif "terminal" in window.get_active_class():
    keyboard.send_keys("<ctrl>+<shift>+z")    
else:
    keyboard.send_keys("<ctrl>+z")