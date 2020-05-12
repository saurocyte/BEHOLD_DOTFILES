function kp
	ps -ef | fzf | awk '{print $2}' | xargs kill -KILL
end
