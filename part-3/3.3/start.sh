#!/bin/bash
cd ~
git clone https://github.com/tyrng/streetrunner-staff.git streetrunner-staff
cd streetrunner-staff
usermod -aG docker `whoami`
docker build -t streetrunner-staff .
docker tag streetrunner-staff ongtypc/streetrunner-staff
docker push ongtypc/streetrunner-staff