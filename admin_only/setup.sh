uaac target http://localhost:8080/uaa
uaac token client get admin -s adminsecret
uaac client add dataflow \
  --name dataflow \
  --secret dataflow \
  --scope openid \
  --redirect_uri http://localhost:9393/login \
  --authorized_grant_types authorization_code \
  --autoapprove openid
uaac user add admin -p admin --emails admind@someplace.com
