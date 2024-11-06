FROM rocker/tidyverse:latest
RUN R -e "install.packages(c(\"ComplexHeatmap\", \"circlize\", \"colorblindr\", \"rprojroot\"))"
WORKDIR /project


COPY . .
RUN chmod +x analyses/gender-dist/run_module.sh
CMD ["bash", "analyses/gender-dist/run_module.sh"]
