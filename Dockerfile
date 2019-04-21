FROM node:latest
RUN npm install cnpm -g --registry=https://registry.npm.taobao.org \
    && cnpm install -g http-server
COPY ./entrypoint /entrypoint
COPY ./folders-component /opt/folders-component
COPY ./assets/folders.json /opt/folders-component/ext.json
COPY ./advanced-markdown-editor /opt/advanced-markdown-editor
COPY ./assets/markdown.json /opt/advanced-markdown-editor/ext.json
COPY ./plus-editor /opt/plus-editor
COPY ./assets/pluseditor.json /opt/plus-editor/ext.json
COPY ./autocomplete-tags /opt/autocomplete-tags
COPY ./assets/autotags.json /opt/autocomplete-tags/ext.json
COPY ./simple-task-editor /opt/simple-task-editor
COPY ./assets/stask.json /opt/simple-task-editor/ext.json
COPY ./action-bar /opt/action-bar
COPY ./assets/action.json /opt/action-bar/ext.json
ENV PROJECT_DIR=/opt
WORKDIR $PROJECT_DIR
EXPOSE 8000
ENTRYPOINT [ "/entrypoint" ]
CMD [ "start" ]
