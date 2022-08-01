# Enter script code
if "emacs" in window.get_active_class():
    keyboard.send_keys("<super>+t")
elif "terminal" in window.get_active_class():
    keyboard.send_keys("<ctrl>+<shift>+t")      
else:
    keyboard.send_keys("<ctrl>+t")