FROM influxdb:1.3.7

COPY pre-entry.sh /pre-entry.sh
ENTRYPOINT ["/pre-entry.sh"]
CMD ["influxd"]
