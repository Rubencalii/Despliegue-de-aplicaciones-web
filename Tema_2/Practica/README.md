# Práctica Tema 2 — Plesk (DAW)

Este directorio contiene los ficheros de apoyo para la práctica del **Tema 2** (Plesk en Docker), más una guía rápida para ejecutarlo y documentar evidencias.

## Estado / por dónde voy (para retomar otro día)

✅ Contenedor Plesk arrancado.

⚠️ En esta máquina el **puerto 80 estaba ocupado**, así que la web “normal” se está usando con puertos alternativos.

### URLs que estoy usando

- Panel inicial: http://localhost:8880
- Panel seguro: https://localhost:8443
- Web por HTTP: http://localhost:8080
- Web por HTTPS: https://localhost:8444

### Dominio local (opción B)

He añadido una entrada en `/etc/hosts` para resolver un dominio local (ejemplo):

- `127.0.0.1 daw.local`

Pruebas:

- HTML: http://daw.local:8080/
- PHP: http://daw.local:8080/index.php

### Carpeta con archivos de ejemplo

En `sample-site/` tienes contenido listo para subir al dominio en Plesk:

- `sample-site/index.html`
- `sample-site/index.php`

Pendiente: subir estos ficheros al `httpdocs/` del dominio desde **File Manager**.

### Capturas hechas / pendientes (checklist rápido)

**Punto 1 (Despliegue):**
- [ ] Captura: login / acceso a http://localhost:8880
- [ ] Captura: panel con sesión iniciada
- [ ] Captura: acceso a https://localhost:8443 (aviso de certificado OK)
- [ ] Captura: Tools & Settings → SSL/TLS Certificates
- [ ] Captura: detalles del certificado desde el navegador

**Punto 4 (Dominios):**
- [ ] Captura: Add Domain (creación dominio)
- [ ] Captura: dominio creado en Websites & Domains
- [ ] Captura: File Manager con `index.html` y `index.php` en `httpdocs/`
- [ ] Captura: web HTML funcionando (URL visible)
- [ ] Captura: web PHP funcionando (URL visible)
- [ ] Captura: listado de dominios

> Nota: Cuando tengas el dominio creado y sirviendo contenido, podremos completar el **punto 5** (carpeta protegida) y parte del **punto 2** (logs del dominio).

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
- Webs: normalmente http://localhost (puerto 80) y https://localhost (puerto 443)
  - En este equipo los puertos se han remapeado a: http://localhost:8080 y https://localhost:8444

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

## Checklist de la práctica (del PDF)

1. Despliegue de Plesk (capturas + respuesta)
2. Administración básica (logs, recursos, servicios + explicación)
3. Extensiones (mínimo 2 + beneficios + riesgos)
4. Dominios (HTML/PHP + listado + vhosts)
5. Autenticación (carpeta protegida) + jails
6. Let’s Encrypt (HTTPS válido en un dominio)
7. Rendimiento (ab + extensión, mínimo 4 pruebas + pregunta)
8. WordPress en segundo dominio (seguridad, DB, logs + pregunta)
