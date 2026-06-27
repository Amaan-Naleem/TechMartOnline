package lk.jiat.techmart.sessions;

import jakarta.ejb.Singleton;
import jakarta.ejb.Startup;

@Singleton
@Startup
public class SystemConfigBean {

    private int totalOrders = 0;

    public synchronized void incrementOrders() {
        totalOrders++;
    }

    public int getTotalOrders() {
        return totalOrders;
    }


}