#!/usr/bin/env zsh
# Ensure execution in current dir
cd "$(cd -P -- "$(dirname -- "$0")" && pwd -P)"

set -eux
current_dir="$(pwd -P)"

# List configs to symlink to ~/
home_dir_configs=( "global_gitignore/gitignore" "zshrc" "zshenv" "bash_profile" "bashrc" "gitconfig")
# Symlink configs for home dir
for relative_file_path in "${home_dir_configs[@]}"
do
  target_dir="${HOME}"
  target_file_name="$(basename -- ${relative_file_path})"

  target_file_path="${target_dir}/.${target_file_name}"
  config_file_path="${current_dir}/${relative_file_path}"

  ln -s "${config_file_path}" "${target_file_path}" || continue
done

if [[ ! -d ${HOME}/.config ]]
then
  mkdir ${HOME}/.config
fi

# Symlink config folders to ~/.config
config_dir_configs=( "karabiner" )
for relative_path in "${config_dir_configs[@]}"
do
  target_dir="${HOME}/.config/${relative_path}"
  config_path="${current_dir}/${relative_path}"

  ln -s "${config_path}" "${target_dir}" || continue
done
