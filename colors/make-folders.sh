#! /usr/bin/env bash

for theme in '-blue' '-purple' '-pink' '-red' '-orange' '-yellow' '-green' '-teal' '-grey'; do
  for type in '-nord' '-dracula' '-pastel'; do
    if [[ "$type" == '-nord' ]]; then
      case "$theme" in
        -blue)
          folder_color='#89a3c2'
          ;;
        -purple)
          folder_color='#c89dbf'
          ;;
        -pink)
          folder_color='#dc98b1'
          ;;
        -red)
          folder_color='#d4878f'
          ;;
        -orange)
          folder_color='#dca493'
          ;;
        -yellow)
          folder_color='#eac985'
          ;;
        -green)
          folder_color='#a0c082'
          ;;
        -teal)
          folder_color='#83b9b8'
          ;;
        -grey)
          folder_color='#74819a'
          ;;
      esac
    fi

    if [[ "$type" == '-dracula' ]]; then
      case "$theme" in
        -blue)
          folder_color='#6272a4'
          ;;
        -purple)
          folder_color='#bd93f9'
          ;;
        -pink)
          folder_color='#ff79c6'
          ;;
        -red)
          folder_color='#ff5555'
          ;;
        -orange)
          folder_color='#ffb86c'
          ;;
        -yellow)
          folder_color='#f1fa8c'
          ;;
        -green)
          folder_color='#75f093'
          ;;
        -teal)
          folder_color='#50fae9'
          ;;
        -grey)
          folder_color='#757a99'
          ;;
      esac
    fi

    if [[ "$type" == '-pastel' ]]; then
      case "$theme" in
        -blue)
          folder_color='#b9cfde'
          ;;
        -purple)
          folder_color='#c5b3cd'
          ;;
        -pink)
          folder_color='#f4b9be'
          ;;
        -red)
          folder_color='#ec9b97'
          ;;
        -orange)
          folder_color='#f5cba3'
          ;;
        -yellow)
          folder_color='#fae3a8'
          ;;
        -green)
          folder_color='#add49f'
          ;;
        -teal)
          folder_color='#a8decc'
          ;;
        -grey)
          folder_color='#a19d91'
          ;;
      esac
    fi

    rm -rf "color${theme}${type}"
    cp -rf "color-blue" "color${theme}${type}"
    sed -i "s/#5b9bf8/${folder_color}/g" "color${theme}${type}/"*".svg"

  done
done

echo -e "DONE!"
