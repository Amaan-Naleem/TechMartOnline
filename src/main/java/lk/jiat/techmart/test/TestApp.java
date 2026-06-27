package lk.jiat.techmart.test;

import lk.jiat.techmart.entity.Orders;
import lk.jiat.techmart.sessions.OrderSessionBean;

import javax.naming.Context;
import javax.naming.InitialContext;

public class TestApp {

    public static void main(String[] args) {

        try {
            Context ctx = new InitialContext();

            OrderSessionBean orderSessionBean =
                    (OrderSessionBean) ctx.lookup(
                            "java:global/TechMartOnline-1.0/OrderSessionBean"
                    );

            Orders order = new Orders();

            orderSessionBean.save(order);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}