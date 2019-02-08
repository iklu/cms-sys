package org.project.startup.api.event;

import org.project.startup.api.model.User;
import org.springframework.context.ApplicationEvent;

import java.util.Locale;

public class RegistrationEvent extends ApplicationEvent {
	
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private final String appUrl;
    private final Locale locale;
    private final User user;

    public RegistrationEvent(final User user, final Locale locale, final String appUrl) {
        super(user);
        this.user = user;
        this.locale = locale;
        this.appUrl = appUrl;
    }

    public String getAppUrl() {
        return appUrl;
    }

    public Locale getLocale() {
        return locale;
    }

    public User getUser() {
        return user;
    }
}
