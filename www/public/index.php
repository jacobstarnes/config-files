<?php
# use Slim\Factory\AppFactory;
# use Psr\Http\Message\ResponseInterface as Response;
# use Psr\Http\Message\ServerRequestInterface as Request;

# require __DIR__ . '/../vendor/autoload.php';

# $app = AppFactory::create();

# $app->get('/',function (Request $request, Response $response) {
#	$response->getBody()->write("wrwer");
#	return $response;
# });

# $app->run();
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;
use \Slim\Factory\AppFactory;

require  '../vendor/autoload.php';

#$app = new \Slim\App;
$app = AppFactory::create();

$app->addRoutingMiddleware();

$errorMiddleware = $app->addErrorMiddleware(true, true, true);

$app->get('/', function (Request $request, Response $response, array $args) {
	$name = $args['name'];
	$response->getBody()->write('Hello, name');
	return $response;
})

$app->run();

?>
