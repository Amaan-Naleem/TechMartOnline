package lk.jiat.techmart.jms;

import jakarta.annotation.Resource;
import jakarta.ejb.Stateless;
import jakarta.jms.ConnectionFactory;
import jakarta.jms.JMSContext;
import jakarta.jms.Queue;

@Stateless
public class NotificationProducer {

    @Resource(lookup = "jms/TechMartQueue")
    private Queue queue;

    @Resource(lookup = "jms/TechMartConnectionFactory")
    private ConnectionFactory connectionFactory;

    public void sendMessage(String message) {
        try (JMSContext context = connectionFactory.createContext()) {
            context.createProducer().send(queue, message);
        }
    }
}