uaac target http://localhost:8080/uaa
uaac token client get admin -s adminsecret
uaac client add dataflow \
  --name dataflow \
  --secret dataflow \
  --scope cloud_controller.read,cloud_controller.write,openid,password.write,scim.userids,sample.create,sample.view,dataflow.create,dataflow.deploy,dataflow.destroy,dataflow.manage,dataflow.modify,dataflow.schedule,dataflow.view \
  --authorized_grant_types password,authorization_code,client_credentials,refresh_token \
  --authorities uaa.resource,dataflow.create,dataflow.deploy,dataflow.destroy,dataflow.manage,dataflow.modify,dataflow.schedule,dataflow.view,sample.view,sample.create\
  --redirect_uri http://localhost:9393/login \
  --autoapprove openid

uaac group add "sample.view"
uaac group add "sample.create"
uaac group add "dataflow.view"
uaac group add "dataflow.create"
uaac group add "dataflow.deploy"
uaac group add "dataflow.destroy"
uaac group add "dataflow.manage"
uaac group add "dataflow.modify"
uaac group add "dataflow.schedule"

uaac user add admindf -p password --emails admindf@someplace.com
uaac user add vieweronly -p password --emails mrviewer@someplace.com

uaac member add "sample.view" admindf
uaac member add "sample.create" admindf
uaac member add "dataflow.view" admindf
uaac member add "dataflow.create" admindf
uaac member add "dataflow.deploy" admindf
uaac member add "dataflow.destroy" admindf
uaac member add "dataflow.manage" admindf
uaac member add "dataflow.modify" admindf
uaac member add "dataflow.schedule" admindf
uaac member add "sample.view" vieweronly
uaac member add "dataflow.view" vieweronly