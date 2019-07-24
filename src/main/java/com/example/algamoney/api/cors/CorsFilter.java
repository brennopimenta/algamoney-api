package com.example.algamoney.api.cors;

import org.apache.commons.lang3.text.translate.NumericEntityUnescaper;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/*CORS nada mais é do que um componente ou propriedade para setar os headers da resquisição, autorizando a comunicação através do browser, ou seja Controle de Acesso
       No spring boot não funciona a parametrização pelo applications.properties, por isso a necessidade de construir este Filtro
       */

@Component
@Order(Ordered.HIGHEST_PRECEDENCE)
public class CorsFilter implements Filter {

    private String originPermitida = "http://localhost:8000"; // TODO: Configurar para diferentes ambiente

    @Override
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {

        HttpServletRequest resquest = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;


        //seta estes Headers para qualquer requisição
        response.setHeader("Access-Control-Allow-Origin", originPermitida);
        response.setHeader("Access-Control-Allow-Credentials", "true");


        //Se requisicao é um OPTIONS (cors) e é de Origin Permitida então seta os headers
        if ("OPTIONS".equals(resquest.getMethod()) && originPermitida.equals(resquest.getHeader("Origin"))) {
            response.setHeader("Access-Control-Allow-Methods", "POST, GET, DELETE, PUT, OPTIONS");
            response.setHeader("Access-Control-Allow-Headers", "Authorization, Content-Type, Accept");
            response.setHeader("Access-Control-Max-Age", "3600");
            response.setStatus(HttpServletResponse.SC_OK);


        } else {
            chain.doFilter(req, resp);
        }

    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void destroy() {

    }
}
