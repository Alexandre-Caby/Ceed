<?php


if (basename($_SERVER["PHP_SELF"]) != "index.php")
{
	header("Location:../index.php?view=accueil");
	die("");
}
echo"
Afficher les meilleurs 3 meilleurs sites selon les types
Afficher les 5 meilleurs sites que l'on a visités peut importe le type
";
?>



<html>
<style>
	.case{
		width:250px;
		height:250px;
		border:1px solid black;
		text-align:center;
		float:left;
	}

	img{
	    max-width : 180px;
	    max-height: 180px;
		margin-top:5px;	
	}
	

</style>

<body>
<div classe="case">
<img src="./ressources/logo.png" />
<div>nom produit</div>
</div>

</body>

</html>

