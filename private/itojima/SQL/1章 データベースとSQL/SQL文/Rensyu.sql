-- �e�[�u���̍쐬
CREATE TABLE Jyushoroku
(toroku_bango INTEGER NOT NULL,
 namae VARCHAR(128) NOT NULL,
 jyusyo VARCHAR(256) NOT NULL,
 tel_no CHAR(10),
 mail_address CHAR(20),
 PRIMARY KEY (toroku_bango));

-- ��̒ǉ�
ALTER TABLE Jyushoroku ADD yubin_bango CHAR(8);

-- �e�[�u���̍폜
DROP TABLE Jyushoroku;