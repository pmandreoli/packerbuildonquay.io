
#sh script for galaxydocker build
wget https://raw.githubusercontent.com/galaxyproject/SARS-CoV-2/master/genomics/deploy/all_covid_tools.yaml -O $GALAXY_ROOT/all_covid_tools.yaml;
install-tools $GALAXY_ROOT/all_covid_tools.yaml -a admin -g http://localhost:8080;
git clone https://github.com/galaxyproject/SARS-CoV-2.git ;
mv SARS-CoV-2/genomics/deploy/workflows/* $GALAXY_HOME/workflows;
rm -rf SARS-CoV-2;
