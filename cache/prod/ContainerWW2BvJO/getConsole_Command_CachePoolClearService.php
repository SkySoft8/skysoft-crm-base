<?php

namespace ContainerWW2BvJO;


use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\ContainerInterface;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/*
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getConsole_Command_CachePoolClearService extends App_KernelProdContainer
{
    /*
     * Gets the private 'console.command.cache_pool_clear' shared service.
     *
     * @return \Symfony\Bundle\FrameworkBundle\Command\CachePoolClearCommand
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'vendor'.\DIRECTORY_SEPARATOR.'symfony'.\DIRECTORY_SEPARATOR.'console'.\DIRECTORY_SEPARATOR.'Command'.\DIRECTORY_SEPARATOR.'Command.php';
        include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'vendor'.\DIRECTORY_SEPARATOR.'symfony'.\DIRECTORY_SEPARATOR.'framework-bundle'.\DIRECTORY_SEPARATOR.'Command'.\DIRECTORY_SEPARATOR.'CachePoolClearCommand.php';

        $container->privates['console.command.cache_pool_clear'] = $instance = new \Symfony\Bundle\FrameworkBundle\Command\CachePoolClearCommand(($container->services['cache.global_clearer'] ?? $container->load('getCache_GlobalClearerService')), ['cache.app', 'cache.system', 'cache.validator', 'cache.serializer', 'cache.annotations', 'cache.property_info', 'cache.messenger.restart_workers_signal', 'cache.rate_limiter', 'doctrine.result_cache_pool', 'doctrine.system_cache_pool', 'cache.property_access', 'cache.validator_expression_language', 'cache.security_expression_language', 'cache.security_is_granted_attribute_expression_language', 'shivas_versioning.cache.version', 'api_platform.cache.route_name_resolver', 'api_platform.cache.metadata.resource', 'api_platform.cache.metadata.property', 'api_platform.cache.metadata.resource_collection', 'api_platform.graphql.cache.subscription']);

        $instance->setName('cache:pool:clear');
        $instance->setDescription('Clear cache pools');

        return $instance;
    }
}
