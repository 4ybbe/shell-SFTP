if [ $(getent group sftp) ]; then
  echo "Digite o nome do usuario a ser criado:"
  read USER
  useradd -g sftp -d /arquivos -s /sbin/nologin $USER
  mkdir /sftp/$USER
  mkdir /sftp/$USER/arquivos
  chown $USER:sftp /sftp/$USER/arquivos
  echo "Digite uma senha para o usuario" $USER
  passwd $USER
else
  echo "O grupo sftp nao existe"
fi
