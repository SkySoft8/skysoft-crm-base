<?php

namespace ContainerWW2BvJO;


use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\ContainerInterface;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/*
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getSamlUserFactoryService extends App_KernelProdContainer
{
    /*
     * Gets the public 'saml_user_factory' shared autowired service.
     *
     * @return \App\Security\Saml\AppSamlUserFactory
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'vendor'.\DIRECTORY_SEPARATOR.'nbgrp'.\DIRECTORY_SEPARATOR.'onelogin-saml-bundle'.\DIRECTORY_SEPARATOR.'src'.\DIRECTORY_SEPARATOR.'Security'.\DIRECTORY_SEPARATOR.'User'.\DIRECTORY_SEPARATOR.'SamlUserFactoryInterface.php';
        include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'Logging'.\DIRECTORY_SEPARATOR.'Services'.\DIRECTORY_SEPARATOR.'AppLoggingTrait.php';
        include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'Security'.\DIRECTORY_SEPARATOR.'Saml'.\DIRECTORY_SEPARATOR.'AppSamlUserFactory.php';

        return $container->services['saml_user_factory'] = new \App\Security\Saml\AppSamlUserFactory(($container->privates['App\\Authentication\\LegacyHandler\\UserHandler'] ?? $container->load('getUserHandlerService')), $container->getEnv('json:SAML_AUTOCREATE_ATTRIBUTES_MAP'), ($container->services['monolog.logger.auth'] ?? $container->load('getMonolog_Logger_AuthService')));
    }
}
