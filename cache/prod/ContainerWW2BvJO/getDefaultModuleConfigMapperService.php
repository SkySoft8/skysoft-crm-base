<?php

namespace ContainerWW2BvJO;


use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\ContainerInterface;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/*
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getDefaultModuleConfigMapperService extends App_KernelProdContainer
{
    /*
     * Gets the private 'App\SystemConfig\LegacyHandler\DefaultModuleConfigMapper' shared autowired service.
     *
     * @return \App\SystemConfig\LegacyHandler\DefaultModuleConfigMapper
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'SystemConfig'.\DIRECTORY_SEPARATOR.'LegacyHandler'.\DIRECTORY_SEPARATOR.'SystemConfigMapperInterface.php';
        include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'core'.\DIRECTORY_SEPARATOR.'backend'.\DIRECTORY_SEPARATOR.'SystemConfig'.\DIRECTORY_SEPARATOR.'LegacyHandler'.\DIRECTORY_SEPARATOR.'DefaultModuleConfigMapper.php';

        return $container->privates['App\\SystemConfig\\LegacyHandler\\DefaultModuleConfigMapper'] = new \App\SystemConfig\LegacyHandler\DefaultModuleConfigMapper(($container->privates['App\\Module\\LegacyHandler\\ModuleNameMapperHandler'] ?? self::getModuleNameMapperHandlerService($container)));
    }
}
