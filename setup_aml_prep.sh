# This script installs the pip3  installers for Python. 
# Assumes Python3 is enabled and installed by the OS , invokable as python3 from path
sudo apt install python3-pip


# This script installs the azure cli  
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash > cli.log


# This script installs the azure-cli ml extension 

#Adding the AzureML CLI extension install 
az config set extension.use_dynamic_install=yes_without_prompt > azml_log.log
az extension add --name azure-cli-ml > azml_log.log

# This script installs the required AzureML libraries needed for the build agent

pip3 install setuptools > az_libs_log.log
pip3 install -U pip  > az_libs_log.log
pip3 install requests  > az_libs_log.log
pip3 install azureml-core  > az_libs_log.log
pip3 install azureml-sdk > az_libs_log.log
pip3 install azureml-pipline > az_libs_log.log
pip3 install joblib > az_libs_log.log
pip3 install adal > az_libs_log.log
pip3 install scipy > az_libs_log.log



#adal, appdirs, applicationinsights, argparse, azureml-core, azureml-pipeline, azureml-sdk, joblib, numpy, pandas, requests, scikit-learn, scipy
#adal, appdirs, applicationinsights, argparse, azureml-core, azureml-pipeline, azureml-sdk, joblib, numpy, pandas, requests, scikit-learn, scipy, beautifulsoup4, keras, tensorflow, pytorch
