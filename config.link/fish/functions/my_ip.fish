function my_ip --description "Show my network IP"
  set_color $fish_color_cwd
  echo -n Your deetz:
  set_color $fish_color_error
  echo -n (ifconfig -a | grep broadcast)
end
