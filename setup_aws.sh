#!/usr/bin/env zsh
# Ensure execution in current dir
cd "$(cd -P -- "$(dirname -- "$0")" && pwd -P)"
set -eux

current_dir="$(pwd -P)"

# Setup AWS config
config_path="${current_dir}/awsconfig"
echo "${config_path}" # testing

if [[ -f awsconfig ]]
then
  target_dir="${HOME}/.aws"
  target_path="${target_dir}/config"

  if [[ ! -d ${target_dir} ]]
  then
    echo "${target_dir} not found, creating"
    mkdir "${target_dir}"
  fi

  echo "${target_path}"  # testing
  ln -s "${config_path}" "${target_path}" || true
fi
