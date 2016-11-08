CREATE TABLE IF NOT EXISTS DF_DATA_INSTANCE
(
    ID                   BIGINT NOT NULL AUTO_INCREMENT,
    HSOTNAME             VARCHAR(128) NOT NULL,
    PORT                 VARCHAR(128) NOT NULL,
    INSTANCE_DATA	       VARCHAR(128) NOT NULL,
    INSTANCE_USERNAME    VARCHAR(128) NOT NULL,
    INSTANCE_PASSWORD    VARCHAR(128) NOT NULL,
    URI                  VARCHAR(256) NOT NULL,
    USERNAME             VARCHAR(64)  NOT NULL,
    PRIMARY KEY (ID)
) DEFAULT CHARSET=UTF8;

CREATE TABLE IF NOT EXISTS DF_DATA_INSTANCE_SERVICE
(
    ID                   BIGINT NOT NULL AUTO_INCREMENT,
    SERVICE_TYPE         VARCHAR(128) NOT NULL,
    INSTANCE_DATA        VARCHAR(128) NOT NULL,
    SERVICE_CLASS	       VARCHAR(128) NOT NULL,
    SERVICE_PROVIDER     VARCHAR(128) NOT NULL,
    DESCRIPTION          VARCHAR(512) NOT NULL,
    IMAGEURL             VARCHAR(256) NOT NULL,
    PRIMARY KEY (ID)
) DEFAULT CHARSET=UTF8;

CREATE TABLE IF NOT EXISTS DF_ITEM_STAT
(
   STAT_KEY     VARCHAR(255) NOT NULL COMMENT '3*255 = 765 < 767',
   STAT_VALUE   INT NOT NULL,
   PRIMARY KEY (STAT_KEY)
) DEFAULT CHARSET=UTF8;
