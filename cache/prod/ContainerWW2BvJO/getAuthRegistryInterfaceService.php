<?php

namespace ContainerWW2BvJO;


use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\ContainerInterface;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/*
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getAuthRegistryInterfaceService extends App_KernelProdContainer
{
    /*
     * Gets the private 'Nbgrp\OneloginSamlBundle\Onelogin\AuthRegistryInterface' shared service.
     *
     * @return \Nbgrp\OneloginSamlBundle\Onelogin\AuthRegistry
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'vendor'.\DIRECTORY_SEPARATOR.'nbgrp'.\DIRECTORY_SEPARATOR.'onelogin-saml-bundle'.\DIRECTORY_SEPARATOR.'src'.\DIRECTORY_SEPARATOR.'Onelogin'.\DIRECTORY_SEPARATOR.'AuthRegistryInterface.php';
        include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'vendor'.\DIRECTORY_SEPARATOR.'nbgrp'.\DIRECTORY_SEPARATOR.'onelogin-saml-bundle'.\DIRECTORY_SEPARATOR.'src'.\DIRECTORY_SEPARATOR.'Onelogin'.\DIRECTORY_SEPARATOR.'AuthRegistry.php';
        include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'vendor'.\DIRECTORY_SEPARATOR.'onelogin'.\DIRECTORY_SEPARATOR.'php-saml'.\DIRECTORY_SEPARATOR.'src'.\DIRECTORY_SEPARATOR.'Saml2'.\DIRECTORY_SEPARATOR.'Auth.php';
        include_once \dirname(__DIR__, 3).''.\DIRECTORY_SEPARATOR.'vendor'.\DIRECTORY_SEPARATOR.'nbgrp'.\DIRECTORY_SEPARATOR.'onelogin-saml-bundle'.\DIRECTORY_SEPARATOR.'src'.\DIRECTORY_SEPARATOR.'Onelogin'.\DIRECTORY_SEPARATOR.'AuthFactory.php';

        $container->privates['Nbgrp\\OneloginSamlBundle\\Onelogin\\AuthRegistryInterface'] = $instance = new \Nbgrp\OneloginSamlBundle\Onelogin\AuthRegistry();

        $instance->addService('default', (new \Nbgrp\OneloginSamlBundle\Onelogin\AuthFactory(($container->services['request_stack'] ??= new \Symfony\Component\HttpFoundation\RequestStack())))->__invoke(['idp' => ['entityId' => $container->getEnv('SAML_IDP_ENTITY_ID'), 'singleSignOnService' => ['url' => $container->getEnv('SAML_IDP_SSO_URL'), 'binding' => 'urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect'], 'singleLogoutService' => ['url' => $container->getEnv('SAML_IDP_SLO_URL'), 'binding' => 'urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect'], 'x509cert' => $container->getEnv('SAML_IDP_X509CERT')], 'sp' => ['entityId' => $container->getEnv('string:default:site.url:SAML_SP_ENTITY_ID'), 'assertionConsumerService' => ['url' => $container->getEnv('string:SITE_URL').'/saml/acs', 'binding' => 'urn:oasis:names:tc:SAML:2.0:bindings:HTTP-POST'], 'singleLogoutService' => ['url' => $container->getEnv('string:SITE_URL').'/saml/logout', 'binding' => 'urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect'], 'privateKey' => $container->getEnv('SAML_SP_PRIVATE_KEY'), 'x509cert' => $container->getEnv('SAML_SP_CERT')], 'baseurl' => $container->getEnv('string:SITE_URL').'/saml', 'strict' => $container->getEnv('bool:SAML_STRICT'), 'debug' => $container->getEnv('bool:SAML_DEBUG'), 'security' => ['nameIdEncrypted' => $container->getEnv('bool:SAML_NAME_ID_ENCRYPTED'), 'authnRequestsSigned' => $container->getEnv('bool:SAML_AUTHN_REQUESTS_SIGNED'), 'logoutRequestSigned' => $container->getEnv('bool:SAML_LOGOUT_REQUEST_SIGNED'), 'logoutResponseSigned' => $container->getEnv('bool:SAML_LOGOUT_RESPONSE_SIGNED'), 'signMetadata' => $container->getEnv('bool:SAML_SIGN_METADATA'), 'wantMessagesSigned' => $container->getEnv('bool:SAML_WANT_MESSAGES_SIGNED'), 'wantAssertionsEncrypted' => $container->getEnv('bool:SAML_WANT_ASSERTIONS_ENCRYPTED'), 'wantAssertionsSigned' => $container->getEnv('bool:SAML_WANT_ASSERTIONS_SIGNED'), 'wantNameId' => $container->getEnv('bool:SAML_WANT_NAME_ID'), 'wantNameIdEncrypted' => $container->getEnv('bool:SAML_WANT_NAME_ID_ENCRYPTED'), 'requestedAuthnContext' => $container->getEnv('bool:SAML_REQUESTED_AUTHN_CONTEXT'), 'wantXMLValidation' => $container->getEnv('bool:SAML_WANT_XML_VALIDATION'), 'relaxDestinationValidation' => $container->getEnv('bool:SAML_RELAX_DESTINATION_VALIDATION'), 'destinationStrictlyMatches' => $container->getEnv('bool:SAML_DESTINATION_STRICTLY_MATCHES'), 'allowRepeatAttributeName' => $container->getEnv('bool:SAML_ALLOW_REPEAT_ATTRIBUTE_NAME'), 'rejectUnsolicitedResponsesWithInResponseTo' => $container->getEnv('bool:SAML_REJECT_UNSOLICITED_RESPONSES_WITH_IN_RESPONSE_TO'), 'signatureAlgorithm' => 'http://www.w3.org/2001/04/xmldsig-more#rsa-sha256', 'digestAlgorithm' => 'http://www.w3.org/2001/04/xmlenc#sha256', 'encryption_algorithm' => 'http://www.w3.org/2001/04/xmlenc#aes256-cbc', 'lowercaseUrlencoding' => $container->getEnv('bool:SAML_LOWERCASE_URL_ENCODING')], 'contactPerson' => ['technical' => ['givenName' => $container->getEnv('SAML_CONTACT_TECHNICAL_GIVEN_NAME'), 'emailAddress' => $container->getEnv('SAML_CONTACT_TECHNICAL_EMAIL_ADDRESS')], 'support' => ['givenName' => $container->getEnv('SAML_CONTACT_SUPPORT_GIVEN_NAME'), 'emailAddress' => $container->getEnv('SAML_CONTACT_SUPPORT_EMAIL_ADDRESS')], 'administrative' => ['givenName' => $container->getEnv('SAML_CONTACT_ADMINISTRATIVE_GIVEN_NAME'), 'emailAddress' => $container->getEnv('SAML_CONTACT_ADMINISTRATIVE_EMAIL_ADDRESS')]], 'organization' => ['en_US' => ['name' => $container->getEnv('SAML_ORGANIZATION_NAME'), 'displayname' => $container->getEnv('SAML_ORGANIZATION_DISPLAY_NAME'), 'url' => $container->getEnv('SAML_ORGANIZATION_URL')]], 'compress' => ['requests' => $container->getEnv('bool:SAML_COMPRESS_REQUESTS'), 'responses' => $container->getEnv('bool:SAML_COMPRESS_RESPONSES')]]));

        return $instance;
    }
}
