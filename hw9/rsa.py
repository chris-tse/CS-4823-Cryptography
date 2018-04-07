from Crypto.PublicKey import RSA
key_encoded='''-----BEGIN PUBLIC KEY-----
MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCdZGziIrJOlRomzh7M9qzo4ibw
QmwORcVDI0dsfUICLUVRdUN+MJ8ELd55NKsfYy4dZodWX7AmdN02zm1Gk5V5i2Vw
GVWE205u7DhtRe85W1oR9WTsMact5wuqU6okJd2GKrEGotgd9iuAJm90N6TDeDZ4
KHEvVEE1yTyvrxQgkwIDAQAB
-----END PUBLIC KEY-----'''


pubkey = RSA.importKey(key_encoded)
print(pubkey.n)
print(pubkey.e)