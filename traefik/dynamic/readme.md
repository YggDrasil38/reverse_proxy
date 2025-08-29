openssl passwd -apr1 'motdepasse'
Remplace la partie après admin: par la chaîne retournée.

http:
  middlewares:
    auth:
      basicAuth:
        users:
          - "admin:$apr1$SALT$REPLACE_WITH_HASH"   => Ici
    lan-only:
      ipWhiteList:
        sourceRange:
          - "192.168.1.0/24"