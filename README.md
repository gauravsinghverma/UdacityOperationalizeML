# UdacityOperationalizeML

[![CircleCI](https://circleci.com/gh/gauravsinghverma/UdacityOperationalizeML.svg?style=svg)](https://circleci.com/gh/gauravsinghverma/UdacityOperationalizeML)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv and activate it
   ```
   python3 -m venv ~/.devops
   source ~/.devops/bin/activate
   ```
* Run `make install` to install the necessary dependencies
  ```
  pip install --upgrade pip &&\
                pip3 install -r requirements.txt
  ```
  
### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
  - Create a free account in [Docker](https://hub.docker.com/signup)
  - After installation check the veriosn of the docker `docker --version`
  - Once the version is confirmed download [hadolint](https://github.com/hadolint/hadolint/) for linting Dockerfile 
* Setup and Configure Kubernetes locally
  - TO download the [minikube](https://minikube.sigs.k8s.io/docs/start/) visit the page and follow the instructions based on your OS
  - After installation check your minikube version by this command `kubectl version`
* Create Flask app in Container
  - Build the code and create an image in Docker `./run_docker.sh`, it will perform steps entioned in the file
  - Push the docker image to docker.io account `./upload_docker.sh` by following the steps
* Run via kubectl
  - Start the minikube by `minikube start`
  - Run the kubernetes file `./run_kubernetes.sh`. This will run create the pod and run the docker image
  - Verify the app running by executing the command in other terminal `./make_prediction.sh`

