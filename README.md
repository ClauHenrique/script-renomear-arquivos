### Eu criei esse script para uso pessoal. Todo mês preciso fazer um relatorio onde tenho que inserir vários arquivos de imagem em um documento. Assim fica mais fácil pra mim se o nome do arquivo for a hora em que eu os baixei em meu computador.
### Obs: Esse script é para meu caso, que é bem especifico

## como usar:
### Conceder permissão de execução ao script
- chmod +x rename_files.sh

### Ao executar o script você deve passar como parametro o caminho do diretorio onde estão os arquivos:
./rename_files.sh /path/seu_diretorio/
<br>
<p>claudioh@claudioh:~/projetos/script-renomear-arquivos$ ls -l /home/claudioh/Documentos/teste/</p>
<br>
-rw-rw-r-- 1 claudioh claudioh       0 fev  8 19:05 arquivo1.txt
<br>
-rw-rw-r-- 1 claudioh claudioh       0 fev  8 19:05 arquivo2.txt
<br>
-rw-rw-r-- 1 claudioh claudioh       0 fev  8 19:05 arquivo3.txt
<br>
-rw-rw-r-- 1 claudioh claudioh 1455743 jan  8 19:06 imagem.jpg
<br>
<p>claudioh@claudioh:~/projetos/script-renomear-arquivos$ ./rename_files.sh /home/claudioh/Documentos/teste/</p>
<br>
<p>claudioh@claudioh:~/projetos/script-renomear-arquivos$ ls -l /home/claudioh/Documentos/teste/</p>
<br>
-rw-rw-r-- 1 claudioh claudioh       0 fev  8 19:05 19:05:37.txt
<br>
-rw-rw-r-- 1 claudioh claudioh       0 fev  8 19:05 19:05:40.txt
<br>
-rw-rw-r-- 1 claudioh claudioh       0 fev  8 19:05 19:05:43.txt
<br>
-rw-rw-r-- 1 claudioh claudioh 1455743 jan  8 19:06 19:06:04.jpg

### Você também pode passar como segundo parametro (opcionalmente), o tipo de arquivo que você deseja renomear. Entao o script altera apenas os arquivos que contenham a extensão especificada
./rename_files.sh /path/seu_diretorio/ extesao
<br>
<p>claudioh@claudioh:~/projetos/script-renomear-arquivos$ ./rename_files.sh /home/claudioh/Documentos/teste/ jpg</p>
<br>
<p>claudioh@claudioh:~/projetos/script-renomear-arquivos$ ls -l /home/claudioh/Documentos/teste/</p>
<br>
-rw-rw-r-- 1 claudioh claudioh 1455743 jan  8 19:06 19:06:04.jpg
<br>
-rw-rw-r-- 1 claudioh claudioh       0 fev  8 19:05 arquivo1.txt
<br>
-rw-rw-r-- 1 claudioh claudioh       0 fev  8 19:05 arquivo2.txt
<br>
-rw-rw-r-- 1 claudioh claudioh       0 fev  8 19:05 arquivo3.txt
