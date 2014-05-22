funtion git_aliases
  set_color red
  echo git aliases loaded!
end

function gs
  git status
end

function gaa
  git add --all
end

function gpl
    git pull
end

function glg
  git log
end

function gpu
    git push
end

function gca
  git commit -a -m $argv
end

function gch
  git checkout $argv
end

function gcb
  git checkout -b $argv origin/$argv
end

function gba
  git branch -av
end

