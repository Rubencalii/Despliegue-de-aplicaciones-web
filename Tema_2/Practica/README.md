# Práctica Tema 2 — Plesk (DAW)

Este directorio contiene los ficheros de apoyo para la práctica del **Tema 2** (Plesk en Docker), más una guía rápida para ejecutarlo y documentar evidencias.

## Requisitos (del PDF)

1. Despliegue de Plesk
2. Administración básica (logs, recursos, estado servicios)
3. Extensiones (mínimo 2)
4. Dominios + contenido HTML/PHP
5. Auth (carpeta protegida) + jails
6. Let’s Encrypt en un dominio
7. Rendimiento (ab + extensión, mínimo 4 pruebas)
8. WordPress en segundo dominio + seguridad + logs

## Arranque del contenedor (recomendado)

Este `docker-compose.yml` replica el comando del PDF con persistencia en volumen.

- Interfaz inicial: http://localhost:8880
- Panel seguro: https://localhost:8443
- Webs: http://localhost (puerto 80) y https://localhost (puerto 443)

Credenciales iniciales (PDF):
- Usuario: `admin`
- Contraseña: `changeme1Q**`

## Evidencias

- Coloca tu documento final (con portada, capturas, respuestas, problemas y buenas prácticas) en `docs/`.
- Sugerencia: `docs/PracticaT2_Apellido1_Nombre.md` o `.pdf`.

## Notas importantes

- Let’s Encrypt requiere que el dominio sea accesible públicamente y con DNS correcto. Si estás trabajando solo en local (sin dominio real), normalmente tendrás que:
  - usar un dominio real apuntando a tu IP pública, **o**
  - usar un certificado propio (autofirmado) solo para pruebas (esto no cumple el punto 6 tal cual).

Si me dices si tienes **dominio real** (y si estás detrás de CGNAT), te preparo el camino más rápido para completar el punto 6.
