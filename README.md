### `npm start`

Runs the app in the development mode.\
Open [http://localhost:3000](http://localhost:3000) to view it in the browser.

The page will reload if you make edits.\
You will also see any lint errors in the console.

### `npm run build`

Builds the app for production to the `build` folder.\
It correctly bundles React in production mode and optimizes the build for the best performance.

The build is minified and the filenames include the hashes.\
Your app is ready to be deployed!

### `docker build -t name_of_image_you_want_to_give`

To build a new Docker image.

### `docker run -p port_number_you_want_to_run_image_on name_of_image_you_want_to_run`

To run a docker image

### `docker login`

command: docker login

### `docker tag tag_name_you_want_to_give docker_hub_username/docker_image_name_you_want_to_push`

Before pushing a new image to the hub, you need to give a tag to the image

### `docker push docker_hub_username/docker_image_name_you_want_to_push`

To push a new image to the docker hub

### `docker pull docker_hub_username/docker_image_name_you_want_to_pull`

To pull an image from docker hub

# Steps to deploy an image to aws ec2 instance:

### `sudo yum install docker`

To install docker on ec2 instance

### `sudo systemctl start docker`

To start docker

### `docker login`

TO login into docker

### `docker pull docker_hub_username/docker_image_name_you_want_to_pull`

To pull an image from docker hub, which you want to deploy

### `docker run -d -p 80:80 name_of_image_you_want_to_run`

To run a docker image
