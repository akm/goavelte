# ## APP_PORT
#
# APP_ENV                        | APP_STAGE_TYPE           | apisvr HTTP | apisvr gRPC | ui HTTP  | mysql    | firebase authentication | swagger ui
# -------------------------------|--------------------------|-------------|-------------|----------|----------|-------------------------|------------
# server                         | staging,production       | 8000        | 8080        | 4173     | 3306     | ?                       |
# dev                            | local                    | 8000        | 8080        | 5173     | 3306     | 9099                    | 8090
# clients/uisvr/test:integration | staging,production       | 8000        | 8080        | 4173     | 3306     | ?                       |
# clients/uisvr/test:integration | local,github             | 8001        | 8081        | 4173     | 3307     | 9090                    |
# clients/uisvr/test:unit        | local,github             | -           | -           | -        | -        | -                       |
# servers/apisvr/test            | local,github             | -           | -           | -        | 3311     | 9091                    |

APP_PORT_APISVR_HTTP_dev?=8000
APP_PORT_APISVR_HTTP_e2e_test?=8001
APP_PORT_APISVR_GRPC_dev?=8080
APP_PORT_APISVR_GRPC_e2e_test?=8081
APP_PORT_UISVR_HTTP_dev?=5173
APP_PORT_UISVR_HTTP_e2e_test?=4173
APP_PORT_MYSQL_dev?=3306
APP_PORT_MYSQL_e2e_test?=3307
APP_PORT_MYSQL_unit_test?=3311
APP_PORT_FIREBASE_AUTH_dev?=9099
APP_PORT_FIREBASE_AUTH_e2e_test?=9090
APP_PORT_FIREBASE_AUTH_unit_test?=9091
APP_PORT_FIREBASE_EMULATOR_SUITE_dev?=4000
APP_PORT_SWAGGERUI_dev?=8090
