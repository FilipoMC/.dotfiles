function mkcd --wraps='mkdir  && cd ' --wraps='command mkdir &argv && cd &argv' --wraps='command mkdir &1 && cd &1' --wraps='command mkdir  && cd '
command mkdir $argv && cd $argv
end
