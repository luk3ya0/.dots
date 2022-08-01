# Enter script code
if "emacs" in window.get_active_class():
    keyboard.send_keys("<super>+v")
elif "terminal" in window.get_active_class():
    keyboard.send_keys("<ctrl>+<shift>+v")    
else:
    keyboard.send_keys("<ctrl>+v")