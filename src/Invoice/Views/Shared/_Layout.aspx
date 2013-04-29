<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />

		<!-- Always force latest IE rendering engine (even in intranet) & Chrome Frame
		Remove this if you use the .htaccess -->
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

		<title>@ViewBag.Title;</title>

		<meta name="viewport" content="width=device-width; initial-scale=1.0" />

		<!-- Replace favicon.ico & apple-touch-icon.png in the root of your domain and delete these references -->
		<link rel="shortcut icon" href="/favicon.ico" />

        @Styles.Render("~/css");
		
	</head>
	<body>
		
		<header class="masthead">
			<nav class="navbar">
				<ul class="nav pull-right">
					<li><a href="/fakturor">Fakturor</a></li>
					<li><a href="/kunder">Kunder</a></li>
					<li><a href="/projekt">Projekt</a></li>
					<li><a href="/inställningar">Inställningar</a></li>
				</ul>
			</nav>
			
			<h3 class="muted">
				<a href="/">Fakturor</a>
			</h3>
		</header>
		    @RenderBody( );
        <article>
        </article>

        @Scripts.Render("~/js");
    </body>
</html>