<?php

// current time
echo date('h:i:s') . "\n";

// sleep for X seconds
sleep(htmlspecialchars($_GET["seconds"]));

// wake up !
echo date('h:i:s') . "\n";

?>
