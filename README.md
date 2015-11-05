# EC2 Route53 Presence for Docker

Docker container which registers the local EC2 instance into Route53.

Example of usage:

```bash
docker run --name route53-presence  \
          -e HOSTNAME_PUBLIC=some.example.com  \
          -e AWS_ACCESS_KEY=XXX \
          -e AWS_SECRET_KEY=XXX  \
          carsondarling/docker-route53-presence
```

In addition, the AWS credentials can be ommited, if the host has a valid IAM role that allows for the following permissions:

```
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "route53:GetHostedZone",
                "route53:ChangeResourceRecordSets"
            ],
            "Resource": "arn:aws:route53:::hostedzone/<ZONEID>"
        },
        {
            "Effect": "Allow",
            "Action": [
                "route53:ListHostedZones"
            ],
            "Resource": "*"
        }
    ]
}
```
