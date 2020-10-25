package com.rkdevblog.service;

import com.rkdevblog.configuration.Translator;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class FoodMenuService {

    private final Translator translator;

    public FoodMenuService(Translator translator) {
        this.translator = translator;
    }

    /**
     * Send menu list
     *
     * @return menu
     */
    public List<String> getSushi() {
        List<String> sushi = new ArrayList<>();
        sushi.add(0, translator.toLocale("s1"));
        sushi.add(1, translator.toLocale("s2"));
        sushi.add(2, translator.toLocale("s3"));
        sushi.add(3, translator.toLocale("s4"));
        return sushi;
    }

}
