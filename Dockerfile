FROM codercom/code-server:3.9.0
COPY --from=hashicorp/terraform:0.14.9 /bin/terraform /bin/
COPY . .
RUN terraform init