
BUCKET_NAME=catsignal
REGION=us-east-1

deploy:
	aws s3 sync ./public s3://$(BUCKET_NAME) --region $(REGION)
	aws s3 website s3://$(BUCKET_NAME) --index-document index.html