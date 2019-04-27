function listFonts
	fc-list -v | grep -e 'family: ' | cut -c 10- | nvim
end
