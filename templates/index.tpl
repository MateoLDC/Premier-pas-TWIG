<!DOCTYPE html>
<html lang="en">

<head>
    <title>ALIPTIC - Exercice TWIG</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="icon" type="image/png" href="assets/icon.png" />
    <link href="https://fonts.googleapis.com/css2?family=Barlow:wght@400;500;700&amp;display=swap" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="assets/bootstrap.min.css" />
    <link href="assets/style.css" rel="stylesheet" />
    <style>
        .bg-img1 {
            border-left: 50px solid #1fc4f4;
        }
    </style>
</head>

<body>

    <div class="bg-img1 size1 flex-w flex-c-m p-t-20 p-b-55 p-l-15 p-r-15">
    
        <div class="wsize1 bor1 bg1 p-b-45 p-l-15 p-r-15 p-t-20 respon1">
            <div class="wrappic1">
                <img src="assets/logo.png" alt="Logo ALIPTIC" />
            </div>
            <p class="txt-center m1-txt1 p-t-33 p-b-68">Exercice TWIG avec TWIG</p>
            <div class="container row">
                {% for utilisateur in utilisateurs %}
                    <div class="card col-4">
                        <img class="card-img-top" src="{{ utilisateur.picture.medium }}" alt="Image de {{utilisateur.name.first}} " />

                        <div class="card-body">
                            <h5 class="card-title">
                                Bonjour, mon nom est {{utilisateur.name.first}} {{utilisateur.name.last}}
                            </h5>
                            <p class="card-text">
                                J'habite "{{utilisateur.location.state}}", dans une ville qui s'appelle "{{utilisateur.location.city}}"</br></br>
                            </p>
                            <p class="card-text">
                                <small class="text-muted">
                                    Mon adresse e-mail est
                                        <a href="mailto:{{utilisateur.email}}" title="Envoyer un email à {{utilisateur.name.first}}">{{utilisateur.email}}
                                        </a>
                                    , dont le mot de passe est "{{utilisateur.login.password}}"
                                </small>
                            </p>
                        </div>
                    </div>
                {% endfor %}
            </div>
        </div>
    </div>
</body>

</html>