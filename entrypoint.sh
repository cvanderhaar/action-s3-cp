#!/bin/sh

set -e

echo "[default]
aws_access_key_id = ${aws_access_key_id_tooling}
aws_secret_access_key = ${aws_secret_access_key_tooling}"

aws s3 cp ${file} s3://${aws_s3_bucket}${aws_s3_path} \
            ${aws_region} $*
