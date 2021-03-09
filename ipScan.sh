#!/bin/bash
for i in $(seq 1 255); do
	timeout 1 bash -c "ping -c 1 192.168.1.$i" >/dev/null && echo "192.168.1.$i - Active" &
done; wait
