#!/usr/bin/env bash
HERE=$(dirname "$0")
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

SUDO Rscript -e 'options(install.packages.check.source="no"); install.packages(c("remotes", "ranger", "LiblineaR", "xgboost", "e1071", "glmnet"), dependencies = TRUE)'
SUDO Rscript -e 'remotes::install_github("https://github.com/mlr-org/mlr3@master")'
SUDO Rscript -e 'remotes::install_github("https://github.com/mlr-org/mlr3tuning@autotuner-notimeout")'
SUDO Rscript -e 'remotes::install_github("https://github.com/mlr-org/mlr3extralearners@master")'
SUDO Rscript -e 'remotes::install_github("https://github.com/mlr-org/mlr3oml@master")'
SUDO Rscript -e 'remotes::install_github("https://github.com/a-hanf/mlr3automl@forward_search_numeric_imputation", dependencies = TRUE)'


