<?php
// Práctica T2 (Plesk) - PHP básico para demostrar ejecución

declare(strict_types=1);

$now = new DateTimeImmutable('now');

header('Content-Type: text/html; charset=UTF-8');
?>
<!doctype html>
<html lang="es">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>DAW T2 - PHP OK</title>
  <style>
    body { font-family: system-ui, -apple-system, Segoe UI, Roboto, Arial, sans-serif; margin: 2rem; }
    code { background: #f3f3f3; padding: .15rem .35rem; border-radius: .25rem; }
    .card { border: 1px solid #ddd; border-radius: .5rem; padding: 1rem; max-width: 720px; }
    h1 { margin-top: 0; }
  </style>
</head>
<body>
  <div class="card">
    <h1>PHP funcionando ✅</h1>
    <p>Si estás viendo esto, el dominio sirve <code>.php</code> correctamente.</p>

    <h2>Info rápida</h2>
    <ul>
      <li><strong>Fecha/hora del servidor:</strong> <?= htmlspecialchars($now->format('Y-m-d H:i:s T')) ?></li>
      <li><strong>Host:</strong> <?= htmlspecialchars(gethostname() ?: 'desconocido') ?></li>
      <li><strong>PHP:</strong> <?= htmlspecialchars(PHP_VERSION) ?></li>
      <li><strong>Remote addr:</strong> <?= htmlspecialchars($_SERVER['REMOTE_ADDR'] ?? '-') ?></li>
    </ul>

    <p style="margin-bottom:0">
      Archivo: <code><?= htmlspecialchars(__FILE__) ?></code>
    </p>
  </div>
</body>
</html>
