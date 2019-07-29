package com.example.algamoney.api.security.util;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//Classe Main criada para gerar senhas encodada!
public class GeradorSenha {

    public static void main(String[] args) {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        //mostra na tela a senha digitada entre " " encodada!
        System.out.println(encoder.encode("maria"));
    }
}
