.PHONY: all apply-mod apply-upstream

# При запуске `make` - применить модифицированную тему
all: apply-mod

# Применить модифицированную тему
apply-mod:
	-rm ~/.themes/Adwaita-mod* 2>/dev/null; \
	-mkdir ~/.themes 2>/dev/null; \
	themeName=Adwaita-mod"`date +%s`"; \
	ln -s "`pwd`"/Adwaita/ ~/.themes/$$themeName; \
	dconf write /org/gnome/desktop/interface/gtk-theme \"$$themeName\"

# Применить оригинальную тему Adwaita
apply-upstream:
	dconf write /org/gnome/desktop/interface/gtk-theme \"Adwaita\"
