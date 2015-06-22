#A call to this empty function within config.fish will load other aliases in the file.
function project_utils --description 'load project utils'
end

function gen_gulp_project --description 'generate gulp project'
  mkdir $argv
  cd $argv
  git init
  git clone https://github.com/jh3y/gulp-boilerplate
  cp -a gulp-boilerplate/. ./
  rm -rf gulp-boilerplate
  npm install
  rm -rf .git/
  git init
  git add --all
end


function open_project --description 'Open a workspace project in atom'
  cd ~/Documents/Workspace/$argv
  atom .
end


function setup_project --description 'Set up project by running npm, gulp etc.'
  cd $argv
  if test -e package.json
    npm install
  end
  if test -e bower.json
    bower install
  end
  atom .
  if test -e gulpfile.js
    gulp
  end
end

function import_project --description 'Import a project and install deps'
    git clone https://github.com/jh3y/$argv[1]
    if test (count $argv) -gt 1
      if [ $argv[2] = "true" ]
        setup_project $argv[1]
      end
    end
end
