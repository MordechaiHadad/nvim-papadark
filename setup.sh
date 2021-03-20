sh << "EOF"
  git reset --soft 9069669
  git add .
  git commit --amend --no-edit
  LUSH_NAME=$(basename $(pwd))
  GIT_NAME=$(git config user.name)
  YEAR=$(date +"%Y")
  mv colors/lush_template.vim colors/$LUSH_NAME.vim
  mv lua/lush_theme/lush_template.lua lua/lush_theme/$LUSH_NAME.lua
  if command -v sed &> /dev/null; then
    sed -i "s/lush_template/$LUSH_NAME/g" colors/$LUSH_NAME.vim
    sed -i "s/COPYRIGHT_NAME/$GIT_NAME/g" LICENSE
    sed -i "s/COPYRIGHT_YEAR/$YEAR/g" LICENSE
    git add .
    git commit -m "Configure template for $LUSH_NAME, please enjoy using Lush!"
  else
    echo "Could not find sed, please manually replace 'lush_template' with '$LUSH_NAME' in colors/$LUSH_NAME.vim, and update the LICENCE file."
  fi
EOF
