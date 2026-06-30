package lk.jiat.techmart.controller;

import jakarta.enterprise.context.SessionScoped;
import jakarta.inject.Named;
import java.io.Serializable;

@Named
@SessionScoped
public class MyApp implements Serializable {

    private static final long serialVersionUID = 1L;

    public void doSomething() {
        System.out.println("MyApp doSomething...." + this);
    }
}