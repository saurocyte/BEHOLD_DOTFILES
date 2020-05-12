function list_fonts
	fc-list -v | grep -e 'family: ' | cut -c 10- | less
end
