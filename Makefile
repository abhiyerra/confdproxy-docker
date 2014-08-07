image: confd
	sudo docker build -t abhiyerra/confprox .

confd:
	go get -u github.com/kelseyhightower/confd
	go build github.com/kelseyhightower/confd
	mv $(GOPATH)/bin/confd .

clean:
	rm confd
