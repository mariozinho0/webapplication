package br.com.gopark.utils;

import java.math.BigDecimal;

public class FormatUtil {

    public static Integer formatarCep(String cep) {

        String cepFormatado = cep.replace("-", "");

        return Integer.parseInt(cepFormatado);

    }

    //TODO REFATORAR???
    public static BigDecimal formatarPreco(String preco) {

        preco = preco.replace("R$ ", "");
        preco = preco.replace(",", ".");

        return new BigDecimal(preco);

    }

    //TODO FORMATA DATA

}
