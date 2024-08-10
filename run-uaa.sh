openssl genrsa -traditional -out signingkey.pem 2048
openssl rsa -in signingkey.pem -pubout -out verificationkey.pem
export JWT_TOKEN_SIGNING_KEY=$(cat signingkey.pem)
export JWT_TOKEN_VERIFICATION_KEY=$(cat verificationkey.pem)
rm signingkey.pem
rm verificationkey.pem

#https://docs.spring.io/spring-cloud-dataflow/docs/current/reference/htmlsingle/#_download_and_start_uaa
java -jar uaa-bundled.jar
