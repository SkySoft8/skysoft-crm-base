<?php

namespace ContainerWW2BvJO;


use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\ContainerInterface;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/*
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getLoggingEnvVarProcessorService extends App_KernelProdContainer
{
    /*
     * Gets the private 'App\Logging\Services\LoggingEnvVarProcessor' shared autowired service.
     *
     * @return \App\Logging\Services\LoggingEnvVarProcessor
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'vendor'.\DIRECTORY_SEPARATOR.'symfony'.\DIRECTORY_SEPARATOR.'dependency-injection'.\DIRECTORY_SEPARATOR.'EnvVarProcessorInterface.php';
        include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'Logging'.\DIRECTORY_SEPARATOR.'Services'.\DIRECTORY_SEPARATOR.'LoggingEnvVarProcessor.php';

        return $container->privates['App\\Logging\\Services\\LoggingEnvVarProcessor'] = new \App\Logging\Services\LoggingEnvVarProcessor(\dirname(__DIR__, 3));
    }
}
