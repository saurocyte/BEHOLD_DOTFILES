function create_python_env
    command python3 -m venv $argv[1]
    source $argv[1]/bin/activate.fish
end
