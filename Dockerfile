ARG OPENSTACK_HEAT_VERSION
FROM openstackhelm/heat:${OPENSTACK_HEAT_VERSION}

# RUN pip install --upgrade --no-cache-dir python-openstackclient==5.4.0

RUN curl -LJO https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64  \
  && chmod +x jq-linux64 \
  && mv jq-linux64 /bin/jq
