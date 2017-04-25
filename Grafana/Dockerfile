FROM grafana/grafana
#RUN apt-get update && apt-get install -y curl
ADD config/grafana.ini /etc/grafana/grafana.ini
ADD dashboards/*.json /var/lib/grafana/dashboards/
#ADD config/init_datasource.sh /run2.sh
#ONBUILD RUN ./run2.sh
