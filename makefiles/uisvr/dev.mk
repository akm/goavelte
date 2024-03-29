# DEV_DEPS の定義は この .mk ファイルを include する前に定義してください
.PHONY: dev
dev: $(DEV_DEPS)
	npm run dev

DEV_ENVS_BASE=\
	FIREBASE_AUTH_EMULATOR_HOST="127.0.0.1:$(APP_PORT_FIREBASE_AUTH_dev)" \
	VITE_FIREBASE_AUTH_EMULATOR_HOST="127.0.0.1:$(APP_PORT_FIREBASE_AUTH_dev)" \
	VITE_UISVR_ORIGIN=http://localhost:$(APP_PORT_UISVR_HTTP_dev)

.PHONY: dev_servers
dev_servers:
	$(DEV_ENVS_BASE) $(DEV_ENVS) APP_SKIP_DB_SCHEMA_DUMP=true \
		$(MAKE) -C $(PATH_TO_SERVERS) dev

.PHONY: dev_run
dev_run:
	$(DEV_ENVS_BASE) $(DEV_ENVS) npx vite dev --port $(APP_PORT_UISVR_HTTP_dev)
