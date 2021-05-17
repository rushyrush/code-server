FROM codercom/code-server:3.10.1

RUN sudo apt-get update \
 && sudo apt-get install -y unzip 

# Install terraform
COPY --from=hashicorp/terraform:0.15.3 /bin/terraform /bin/
RUN terraform init

# Install awscli
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
  && unzip -qq awscliv2.zip \
  && sudo ./aws/install \
  && rm -rf ./awscliv2.zip ./aws
RUN aws --version