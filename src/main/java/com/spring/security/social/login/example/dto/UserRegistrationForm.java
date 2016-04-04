package com.spring.security.social.login.example.dto;

/**
 * @author <a href="mailto:sunil.pulugula@wavemaker.com">Sunil Kumar</a>
 * @since 28/3/16
 */
public class UserRegistrationForm {

    private String userId;
    private String firstName;
    private String lastName;
    private String phoneno;
    private String email;
    private String password;
    private SocialProvider socialProvider;

    public UserRegistrationForm() {
    }

    public UserRegistrationForm(final String userId, final String firstName, final String lastName, final String phoneno, final String email, final String password, final SocialProvider socialProvider) {
        this.userId = userId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.phoneno = phoneno;
        this.email = email;
        this.password = password;
        this.socialProvider = socialProvider;
    }

    public static Builder getBuilder() {
        return new Builder();
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(final String userId) {
        this.userId = userId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(final String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(final String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(final String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(final String password) {
        this.password = password;
    }

    public String getPhoneno() {
        return phoneno;
    }

    public void setPhoneno(final String phoneno) {
        this.phoneno = phoneno;
    }

    public SocialProvider getSocialProvider() {
        return socialProvider;
    }

    public void setSocialProvider(final SocialProvider socialProvider) {
        this.socialProvider = socialProvider;
    }

    public static class Builder {
        private String userId;
        private String firstName;
        private String lastName;
        private String phoneno;
        private String email;
        private String password;
        private SocialProvider socialProvider;

        public Builder addUserId(final String userId) {
            this.userId = userId;
            return this;
        }

        public Builder addFirstName(final String firstName) {
            this.firstName = firstName;
            return this;
        }

        public Builder addLastName(final String lastName) {
            this.lastName = lastName;
            return this;
        }

        public Builder addEmail(final String email) {
            this.email = email;
            return this;
        }

        public Builder addPassword(final String password) {
            this.password = password;
            return this;
        }

        public Builder addPhoneNo(final String phoneno) {
            this.phoneno = phoneno;
            return this;
        }

        public Builder addSocialProvider(final SocialProvider socialProvider) {
            this.socialProvider = socialProvider;
            return this;
        }

        public UserRegistrationForm build() {
            return new UserRegistrationForm(userId, firstName, lastName, phoneno, email, password, socialProvider);
        }
    }
}
