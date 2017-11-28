# faas-plantuml-to-png

Function to convert plantUML sequence diagrams to png file format

## Building the docker image

Run the build.sh script in terminal

```sh
./build.sh
```

## Push the image to registry

Run the push.sh script in terminal

```sh
./push.sh
```

## deploy the function

Deploy the function using faas-cli by running the command below

```sh

faas-cli deploy -f https://raw.githubusercontent.com/tmobile/faas-plantuml-to-png/master/faas-plantutml-to-png.yml  --gateway http://docker.local:8080

```

## Testing the function

Use the sample plantUML below and create a sample.txt file

```text
@startuml
Alice -> Bob: Authentication Request
Bob --> Alice: Authentication Response

Alice -> Bob: Another authentication Request
Alice <-- Bob: another authentication Response
@enduml
```

Run the curl command below

```sh

cat sample.txt| faas-cli invoke plantuml-to-png > out.png

```