
CREATE TABLE city_me
(
  ID          int          NOT NULL,
  Name        varchar(200) NOT NULL COMMENT '수도 및 주도 이름',
  District    varchar(200) NULL     COMMENT '지역/도시/구 이름',
  Population  int          NULL     COMMENT '인구',
  CountryCode varchar(200) NOT NULL COMMENT '국가코드',
  PRIMARY KEY (ID)
) COMMENT '도시';

CREATE TABLE country_me
(
  Code           varchar(200)   NOT NULL COMMENT '국가코드 CountryCode',
  Name           varchar(200)   NOT NULL COMMENT '국가명',
  Continent      enum           NULL     COMMENT '대륙',
  Region         varchar(200)se NULL    ,
  SurfaceArea    decimal        NULL     COMMENT '면적',
  IndepYear      smallint       NULL     COMMENT '독립연도',
  Population     int            NULL     COMMENT '인구',
  LifeExpectancy decimal        NULL     COMMENT '수명',
  GNP            decimal        NULL     COMMENT '국민총생산',
  GNPOld         decimal        NULL    ,
  LocalName      varchar(200)   NULL     COMMENT '지역명',
  GovernmentForm varchar(200)   NULL     COMMENT '정부형태',
  HeadOfState    varchar(200)   NULL     COMMENT '대통령',
  Capital        int            NULL     COMMENT '수도',
  Code2                         NULL     COMMENT '국가코드 앞 2자'
) COMMENT '국가';

CREATE TABLE countrylanguage_me
(
  CountryCode varchar(200) NOT NULL COMMENT '국가코드',
  Language    varchar(200) NULL     COMMENT '언어명',
  IsOfficial  enum         NULL     COMMENT '공식언어유무',
  Percentage  decimal      NULL    ,
  PRIMARY KEY (CountryCode)
) COMMENT '국가별 언어';

ALTER TABLE city_me
  ADD CONSTRAINT FK_countrylanguage_me_TO_city_me
    FOREIGN KEY (CountryCode)
    REFERENCES countrylanguage_me (CountryCode);

ALTER TABLE country_me
  ADD CONSTRAINT FK_countrylanguage_me_TO_country_me
    FOREIGN KEY (Code)
    REFERENCES countrylanguage_me (CountryCode);
