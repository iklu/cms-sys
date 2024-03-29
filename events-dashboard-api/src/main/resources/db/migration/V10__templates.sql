INSERT INTO public.templates (id, template_name, template_content) VALUES (1, 'index', '<!doctype html>
<title>Example</title>
<style>
    * {
        box-sizing: border-box;
    }
    body {
        font-family: Arial;
        margin: 0;
        background: rgb(12, 69, 102);
    }
    #main {
        display: flex;
        flex: 1;
    }
    #main > article {
        flex: 60%;
        order: 1;
    }
    #main > aside {
        flex: 40%;
    }

    #main > aside {
        background: rgb(12, 69, 102);
        color: white;
        order: 2;
    }
    #main > article > figure > img {
        width: 100%;
    }
    header, footer {
        color: rgb(138, 228, 255);
        text-align: center;
        background: rgb(12, 69, 102);
        height: 10vh;
    }
    header, footer, article, aside {
        padding: 1em;
    }
</style>-
<body>
<header>
    <h1>$title</h1>
</header>
<div id="main">
    <article>
        <figure>
            <img src="$image">
            <iframe width="560" height="315" src=$video frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            <figcaption>Fig1. - A view of the pulpit rock in Norway.</figcaption>
        </figure>
    </article>
    <aside>$content</aside>
</div>
<footer>$footer</footer>
</body>');