<?php

namespace ContainerWW2BvJO;


use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\ContainerInterface;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/*
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getCreateEnvService extends App_KernelProdContainer
{
    /*
     * Gets the private 'App\Install\Service\Installation\Steps\CreateEnv' autowired service.
     *
     * @return \App\Install\Service\Installation\Steps\CreateEnv
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'Engine'.\DIRECTORY_SEPARATOR.'Model'.\DIRECTORY_SEPARATOR.'ProcessStepInterface.php';
        include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'Install'.\DIRECTORY_SEPARATOR.'Service'.\DIRECTORY_SEPARATOR.'Installation'.\DIRECTORY_SEPARATOR.'InstallStepInterface.php';
        include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'Engine'.\DIRECTORY_SEPARATOR.'Model'.\DIRECTORY_SEPARATOR.'ProcessStepTrait.php';
        include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'Install'.\DIRECTORY_SEPARATOR.'Service'.\DIRECTORY_SEPARATOR.'Installation'.\DIRECTORY_SEPARATOR.'InstallStepTrait.php';
        include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'Install'.\DIRECTORY_SEPARATOR.'Service'.\DIRECTORY_SEPARATOR.'Installation'.\DIRECTORY_SEPARATOR.'Steps'.\DIRECTORY_SEPARATOR.'CreateEnv.php';

        $container->factories['service_container']['App\\Install\\Service\\Installation\\Steps\\CreateEnv'] = function ($container) {
            return new \App\Install\Service\Installation\Steps\CreateEnv(($container->privates['App\\Install\\LegacyHandler\\InstallHandler'] ?? $container->load('getInstallHandlerService')));
        };

        return $container->factories['service_container']['App\\Install\\Service\\Installation\\Steps\\CreateEnv']($container);
    }
}
