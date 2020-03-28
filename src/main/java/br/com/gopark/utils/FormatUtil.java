package br.com.gopark.utils;

import java.math.BigDecimal;

public class FormatUtil {

    public static Integer formatarCep(String cep) {

        return Integer.parseInt(cep.replace("-", "")
                .replace(".", ""));

    }

    public static BigDecimal formatarPreco(String preco) {

        return new BigDecimal(preco.replace("R$ ", "")
                .replace(",", "."));

    }

}
