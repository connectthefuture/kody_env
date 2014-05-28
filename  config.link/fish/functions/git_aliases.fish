function git_aliases --description 'load aliases'
  set_color red
  echo git aliases loaded!
end

function gs --description 'git status'
  git status
end

function gaa --description 'add all untracked files'
  git add --all
end

function gpl --description 'make a pull'
    git pull
end

function gcl --description 'clone the provided repo'
  git clone $argv
end

function glg --description 'git log'
  git log
end

function gpu --description 'push changes'
    git push
end

function gca --description 'commit all changes with provided message'
  git commit -a -m $argv
end

function gch --description 'checkout branch'
  git checkout $argv
end

function gcb --description 'checkout and track remote branch'
  git checkout -b $argv origin/$argv
end

function gba --description 'check for available branches'
  git branch -av
end
