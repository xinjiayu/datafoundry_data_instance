CREATE TABLE IF NOT EXISTS DF_DATA_INSTANCE
(
    INSTANCE_ID          BIGINT NOT NULL AUTO_INCREMENT,
    HSOTNAME             VARCHAR(128) NOT NULL,
    PORT                 VARCHAR(128) NOT NULL,
    INSTANCE_DATA	       VARCHAR(128) NOT NULL,
    INSTANCE_USERNAME    VARCHAR(128) NOT NULL,
    INSTANCE_PASSWORD    VARCHAR(128) NOT NULL,
    URI                  VARCHAR(256) NOT NULL,
    USERNAME             VARCHAR(64)  NOT NULL,
    CREATE_TIME          TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UPDATE_TIME          TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (INSTANCE_ID)
) DEFAULT CHARSET=UTF8;

CREATE TABLE IF NOT EXISTS DF_DATA_INSTANCE_SERVICE
(
    ID                   BIGINT NOT NULL AUTO_INCREMENT,
    SERVICE_ID           VARCHAR(128) NOT NULL,
    SERVICE_TYPE         VARCHAR(128) NOT NULL,
    SERVICE_DATA         VARCHAR(128) NOT NULL,
    DATA_NAME            VARCHAR(128) NOT NULL,
    SERVICE_ADDR         VARCHAR(256) NOT NULL,
    SERVICE_PORT         VARCHAR(10)  NOT NULL,
    USERNAME             VARCHAR(128) NOT NULL,
    PASSWORD             VARCHAR(128) NOT NULL,
    SERVICE_CLASS	       VARCHAR(128) NOT NULL,
    SERVICE_PROVIDER     VARCHAR(128) NOT NULL,
    DESCRIPTION          VARCHAR(1024) NOT NULL,
    IMAGEURL             VARCHAR(256) NOT NULL,
    CREATE_TIME          TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UPDATE_TIME          TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (ID)
) DEFAULT CHARSET=UTF8;

CREATE TABLE IF NOT EXISTS DF_ITEM_STAT
(
   STAT_KEY     VARCHAR(255) NOT NULL COMMENT '3*255 = 765 < 767',
   STAT_VALUE   INT NOT NULL,
   PRIMARY KEY (STAT_KEY)
) DEFAULT CHARSET=UTF8;
