FROM python:3.12
WORKDIR /workspaces
RUN python -m pip install nb-cli
RUN nb driver install fastapi 
RUN nb adapter install nonebot-adapter-onebot
RUN nb plugin install nonebot-plugin-exe-code   
RUN chmod -R +rx /root
RUN mkdir -p /root/.local/share/nonebot2/nonebot_plugin_exe_code
RUN chmod 1777 /root/.local/share/nonebot2/nonebot_plugin_exe_code
RUN chmod +t /root/.local/share/nonebot2/nonebot_plugin_exe_code
CMD ["su","-m","www-data","-s","/bin/bash","-c","nb run --reload"]
