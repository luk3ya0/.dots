# Enter script code
if "emacs" in window.get_active_class():
    keyboard.send_keys("<super>+x")
elif "terminal" in window.get_active_class():
    keyboard.send_keys("<ctrl>+<shift>+x")    
else:
    keyboard.send_keys("<ctrl>+x")