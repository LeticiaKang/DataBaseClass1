
CREATE TABLE Answers모음
(
  Answers Key  NOT NULL,
  Answers      NULL    ,
  PRIMARY KEY (Answers Key)
);

CREATE TABLE Client Survey
(
  Client Key  NOT NULL COMMENT '설문참여자의 고유번호',
  Name        NULL     COMMENT '설문참여자의 이름 / 아이디로 해도 될 듯?',
  PRIMARY KEY (Client Key)
);

CREATE TABLE Questions
(
  Questions Key  NOT NULL,
  Questions      NULL     COMMENT '이용빈도, 개선사항, 만족도, 친절도',
  PRIMARY KEY (Questions Key)
) COMMENT '문항 모음';

CREATE TABLE 결과
(
  Questions Key  NOT NULL,
  Answers Key    NOT NULL,
  Client Key     NOT NULL COMMENT '설문참여자의 고유번호'
);

ALTER TABLE 결과
  ADD CONSTRAINT FK_Questions_TO_결과
    FOREIGN KEY (Questions Key)
    REFERENCES Questions (Questions Key);

ALTER TABLE 결과
  ADD CONSTRAINT FK_Answers모음_TO_결과
    FOREIGN KEY (Answers Key)
    REFERENCES Answers모음 (Answers Key);

ALTER TABLE 결과
  ADD CONSTRAINT FK_Client Survey_TO_결과
    FOREIGN KEY (Client Key)
    REFERENCES Client Survey (Client Key);
