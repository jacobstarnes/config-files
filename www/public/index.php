<?php
use Slim\Factory\AppFactory;
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;

require __DIR__ . '/../vendor/autoload.php';

$app = AppFactory::create();

$app->get('/',function (Request $request, Response $response) {
	$response->getBody()->write("wrwer");
	return $response;
});

$app->run();

?>
