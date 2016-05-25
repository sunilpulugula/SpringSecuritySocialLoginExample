package com.spring.security.social.login.example.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.security.social.login.example.database.dao.UserDAO;
import com.spring.security.social.login.example.database.model.Role;
import com.spring.security.social.login.example.database.model.User;
import com.spring.security.social.login.example.dto.LocalUser;


/**
 * @author <a href="mailto:psunil1278@gmail.com">Sunil Kumar</a>
 * @since 26/12/15
 */
@Service("localUserDetailService")
public class LocalUserDetailService implements UserDetailsService {

    @Autowired
    private UserDAO userDAO;

    @Override
    @Transactional
    public LocalUser loadUserByUsername(final String userId) throws UsernameNotFoundException {
        User user = userDAO.get(userId);
        if (user == null) {
            return null;
        }
        List<SimpleGrantedAuthority> simpleGrantedAuthorities = buildSimpleGrantedAuthorities(user);
        return new LocalUser(user.getUserId(), user.getName(), user.getPassword(), user.getActive() == 1 ? true : false, true
                , true, true, simpleGrantedAuthorities);
    }

    private List<SimpleGrantedAuthority> buildSimpleGrantedAuthorities(final User user) {
        List<SimpleGrantedAuthority> simpleGrantedAuthorities = new ArrayList<>();
        if (user.getRoles() != null) {
            for (Role role : user.getRoles()) {
                simpleGrantedAuthorities.add(new SimpleGrantedAuthority(role.getName()));
            }
        }
        return simpleGrantedAuthorities;
    }
}
