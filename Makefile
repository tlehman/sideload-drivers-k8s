all:
	docker build -t tlehman/sideload-drivers-k8s .

push:
	docker push tlehman/sideload-drivers-k8s

deploy:
	kubectl apply -f sideload-drivers-pod.yaml

undeploy:
	kubectl delete -f sideload-drivers-pod.yaml
