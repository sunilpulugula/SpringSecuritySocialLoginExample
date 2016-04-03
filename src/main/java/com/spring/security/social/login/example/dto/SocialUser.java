package com.spring.security.social.login.example.dto;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;

/**
 * @author <a href="mailto:sunil.pulugula@wavemaker.com">Sunil Kumar</a>
 * @since 2/4/16
 */
public class SocialUser extends org.springframework.social.security.SocialUser {

    private String userId;

    public SocialUser(final String userId, final String username, final String password, final boolean enabled, final boolean accountNonExpired, final boolean credentialsNonExpired, final boolean accountNonLocked, final Collection<? extends GrantedAuthority> authorities) {
        super(username, password, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorities);
        this.userId = userId;
    }

    public String getUserId() {
        return userId;
    }
}
