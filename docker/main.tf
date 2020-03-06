#Config Docker provider
provider "docker" {
  host = "unix:///var/run/docker.sock"
}
resource "docker_container" "jenkins" {
    image = "${docker_image.jenkins.latest}"
    name = "terraform-demo"
    ports {
       internal = 8080
       external = 8080
       }
    ports {
       internal = 5000
       external = 5000
       }
 }
resource "docker_image" "jenkins" {
    name = "jenkins:latest"
}

