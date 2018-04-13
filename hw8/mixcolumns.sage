from sage.crypto.mq.rijndael_gf import RijndaelGF
from sage.crypto.util import bin_to_ascii

def my_mix_columns(string):
    """
    Takes an input string and performs AES
    MixColumns transform on it
    
    Arguments:
        string {str} -- Input string
        
    Throws:
        ValueError -- Input string must be 16 characters long
    """
    if len(string) != 16:
        raise ValueError("Input string must be 16 characters long")
        return
        
    rgf = RijndaelGF(4, 4)
    
    s = HexadecimalStrings().encoding(string)
    
    state = rgf._hex_to_GF(str(s))
    result = rgf.mix_columns(state)
    line = rgf._GF_to_hex(result)
    
    n = 2
    split = [line[i:i+n] for i in range(0, len(line), n)]
    
    def parse_and_mod(n):
        n = int(n, base=16)
        hexval = str(hex(n))
        return bin_to_ascii(Integer(int(hexval, base=16)).binary().zfill(8))
        
        
    
    encoded = "".join(map(parse_and_mod, split))
    print encoded