

# Project Documentation

![](https://i.imgur.com/socgWhf.png)

## Deployment Steps

This project uses AWS S3 for hosting static website content. The deployment process is automated using a Makefile.

Here are the steps to deploy the project:

1. Ensure you have AWS CLI installed and configured with your AWS credentials.

2. Open a terminal in the project root directory.

3. Run the following command to deploy the website to S3:

```sh
make deploy
```

This command syncs the contents of the [`public/`](command:_github.copilot.openRelativePath?%5B%22public%2F%22%5D "public/") directory to the S3 bucket and sets the bucket's website configuration to use [`index.html`](command:_github.copilot.openRelativePath?%5B%22public%2Findex.html%22%5D "public/index.html") as the index document.

## Policy Assignment

The project includes a predefined S3 bucket policy in [`infra/s3-public-policy.json`](command:_github.copilot.openRelativePath?%5B%22infra%2Fs3-public-policy.json%22%5D "infra/s3-public-policy.json") that allows public read access to the objects in the bucket. This policy is necessary for the public to access the website hosted in the S3 bucket.

Here's how to assign the policy to your S3 bucket:

1. Open the Amazon S3 console at https://console.aws.amazon.com/s3/.

2. In the Bucket name list, choose the name of the bucket that you want to make public.

3. Choose Permissions.

4. Under Bucket Policy, paste the contents of [`infra/s3-public-policy.json`](command:_github.copilot.openRelativePath?%5B%22infra%2Fs3-public-policy.json%22%5D "infra/s3-public-policy.json"), replacing 'catsignal' with the name of your bucket.

5. Choose Save.

Please note that by making your bucket publicly accessible, anyone on the internet can read from your bucket. Be careful when using this setting.