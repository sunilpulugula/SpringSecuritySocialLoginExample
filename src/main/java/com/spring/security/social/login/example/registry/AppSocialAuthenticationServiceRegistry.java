package com.spring.security.social.login.example.registry;

import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.social.security.SocialAuthenticationServiceRegistry;
import org.springframework.social.security.provider.SocialAuthenticationService;

/**
 * @author <a href="mailto:sunil.pulugula@wavemaker.com">Sunil Kumar</a>
 * @since 21/3/16
 */
public class AppSocialAuthenticationServiceRegistry extends SocialAuthenticationServiceRegistry {

    private List<SocialAuthenticationService<?>> authenticationServices;

    public AppSocialAuthenticationServiceRegistry(final List<SocialAuthenticationService<?>> authenticationServices) {
        this.authenticationServices = authenticationServices;
    }

    @PostConstruct
    public void init() {
        if (authenticationServices != null) {
            for (SocialAuthenticationService authenticationService : authenticationServices) {
                super.addAuthenticationService(authenticationService);
            }
        }
    }

}
