#!/usr/bin/env bash
HERE=$(dirname "$0")
VERSION=${1:-"stable"}
REPO=${2:-"https://github.com/a-hanf"}
MLR_REPO=${3:-"https://github.com/mlr-org"}

. $HERE/../shared/setup.sh
if [[ -x "$(command -v apt-get)" ]]; then
SUDO apt-get update
SUDO apt-get install -y software-properties-common apt-transport-https libxml2-dev
SUDO apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 51716619E084DAB9
SUDO add-apt-repository 'deb [arch=amd64,i386] https://cran.rstudio.com/bin/linux/ubuntu bionic-cran35/'
SUDO apt-get update
SUDO apt-get install -y r-base r-base-dev
SUDO apt-get install -y libgdal-dev libproj-dev
SUDO apt-get install -y libssl-dev libcurl4-openssl-dev
SUDO apt-get install -y libcairo2-dev libudunits2-dev
fi

SUDO Rscript -e 'options(install.packages.check.source="no"); install.packages(c("remotes", "checkmate", "R6", "xgboost", "ranger", "LiblineaR", "e1071", "glmnet"), repos="https://cloud.r-project.org/", dependencies = TRUE)'
SUDO Rscript -e 'remotes::install_github("'${MLR_REPO}'/mlr3pipelines")'
SUDO Rscript -e 'remotes::install_github("'${MLR_REPO}'/mlr3oml")'
SUDO Rscript -e 'remotes::install_github("'${MLR_REPO}'/paradox")'
SUDO Rscript -e 'remotes::install_github("'${MLR_REPO}'/mlr3extralearners")'
SUDO Rscript -e 'remotes::install_github("'${MLR_REPO}'/mlr3misc")'
SUDO Rscript -e 'remotes::install_github("'${REPO}'/mlr3automl")'
SUDO Rscript -e 'remotes::install_github("'${MLR_REPO}'/mlr3hyperband")'
SUDO Rscript -e 'remotes::install_github("'${MLR_REPO}'/bbotk")'
SUDO Rscript -e 'remotes::install_github("'${MLR_REPO}'/mlr3")'
SUDO Rscript -e 'remotes::install_github("'${MLR_REPO}'/mlr3tuning@autotuner-notimeout")'

