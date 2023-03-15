all:
	docker build -t tlehman/sideload-drivers-k8s:dev .

push:
	docker push tlehman/sideload-drivers-k8s:dev

deploy:
	kubectl apply -f sideload-drivers-pod.yaml

undeploy:
	kubectl delete -f sideload-drivers-pod.yaml
