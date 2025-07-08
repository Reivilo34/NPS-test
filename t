<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <title>Merci pour votre réponse</title>
  <style>
    body { font-family: sans-serif; text-align: center; padding: 50px; }
    form { display: none; }
  </style>
</head>
<body>
  <h2>✅ Merci pour votre réponse</h2>
  <p>Votre avis a bien été pris en compte.</p>

  <!-- Formulaire HubSpot -->
  <form id="npsForm" action="https://forms.hubspot.com/uploads/form/v2/146213632/bc27806a-55b5-4869-ba83-8a4707014f7d" method="POST">
    <input type="email" name="email" />
    <input type="text" name="nps_score" />
    <input type="submit">
  </form>

  <script>
    window.onload = function () {
      const params = new URLSearchParams(window.location.search);
      const email = params.get("email");
      const score = params.get("nps");

      if (email && score) {
        document.querySelector('input[name="email"]').value = email;
        document.querySelector('input[name="nps_score"]').value = score;
        document.querySelector('form').submit();
      }
    };
  </script>
</body>
</html>
