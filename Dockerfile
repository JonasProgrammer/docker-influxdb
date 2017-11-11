FROM influxdb:1.3

COPY pre-entry.sh /pre-entry.sh
ENTRYPOINT ["/pre-entry.sh"]
CMD ["influxd"]
