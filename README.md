# Code-Server & Extras

![code-server-build](https://github.com/rushyrush/code-server/actions/workflows/docker_build.yaml/badge.svg)

tag: `rushyrush/code-server:latest`

from: `codercom/code-server:4.4.0`

### Extras
- Terraform - `hashicorp/terraform:1.1.9`
- AWSCLI
- kubectl
- fluxcd/fluxcli
- helm

### Vars

| Parameter | Function |
| :----: | --- |
| `-e PUID=1000` | for UserID - see below for explanation |
| `-e PGID=1000` | for GroupID - see below for explanation |
| `-e TZ=Europe/London` | Specify a timezone to use EG Europe/London |
| `-e HASHED_PASSWORD=` | Optional web gui password, overrides `PASSWORD`, instructions on how to create it is below. |
| `-e PROXY_DOMAIN=code-server.my.domain` | If this optional variable is set, this domain will be proxied for subdomain proxying. See [Documentation](https://github.com/cdr/code-server/blob/master/doc/FAQ.md#sub-domains) |


Generate the `hashed-password` with:

```bash
printf "thisismypassword" | sha256sum | cut -d' ' -f1
```
Example:

```yaml
# password: thisismypassword
        - name: HASHED_PASSWORD
          value: "1da9133ab9dbd11d2937ec8d312e1e2569857059e73cc72df92e670928983ab5" 
```
