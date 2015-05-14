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
