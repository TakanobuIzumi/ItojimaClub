-- �����Ƒ������ǁA�Z�����Ⴄ���R�[�h����������SQL
SELECT DISTINCT A1.name, A1.address
FROM Addresses A1 INNER JOIN Addresses A2
ON A1.family_id = A2.family_id
AND A1.address <> A2.address;