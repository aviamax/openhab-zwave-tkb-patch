# openhab-zwave-tkb-patch

A switch TKB HOME TZ35S has been added to the device database. The z-wave device id 0808:0808 was transferred from TZ65D(dual-dutton) to TZ35S (single-button).

These changes led to the fact that my two-button switches in openHab began to be defined as one-button.

As a result, I lost control over the functions of the second button.

I informed the developer about the problem:

bugreport - https://github.com/openhab/org.openhab.binding.zwave/issues/1031

OpenHub Discussion - https://community.openhab.org/t/tkb-tz65d-as-tz35s/76157

This script locally fixes the problem.
It repacks the java file by adding the device identifier to the TZ65D switch and deletes the file with the TZ35S definition 

