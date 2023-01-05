clear all
fich = fopen("wordlist-preao-20201103.txt");
palavras = textscan(fich,"%s",'delimiter',"\n");
palavras = palavras{1};
chaves = palavras(1:1000);

