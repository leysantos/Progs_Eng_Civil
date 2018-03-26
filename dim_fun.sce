// Programa para dimensionamento de fundaão rasas e profundas
// Desenvolvedor: Francirley Santos
// Manaus: 03 de março de 2018

clc;
clear;

// Função para localizar o tamanho de ancoragem lb conforme o fck, tipo de
// ancoragem e área de aderencia.
function lb = compAncoragem(fck, aderencia, ancoragem)
    C10 = [0.99 0.69;0.69 0.49];
    C15 = [0.73 0.56;0.53 0.37];
    C20 = [0.62 0.44;0.44 0.31];
    C25 = [0.54 0.38;0.38 0.26];
    C30 = [0.48 0.33;0.33 0.23];
    C35 = [0.43 0.30;0.30 0.21];
    C40 = [0.39 0.28;0.28 0.19];
    C45 = [0.36 0.25;0.25 0.18];
    C50 = [0.34 0.24;0.24 0.17];
    if fck == 10 && aderencia == 1 then
        if ancoragem == 1 then
            lb = C10(1,1);
        else
            lb = C10(1,2);
        end
    elseif fck == 10 && aderencia == 2 then
        if ancoragem == 1 then
            lb = C10(2,1);
        else
            lb = C10(2,2);
        end
    elseif fck == 15 && aderencia == 1 then
        if ancoragem == 1 then
            compAncoragem = C15(1,1);
        else
            compAncoragem = C15(1,2);
        end
    elseif fck == 15 && aderencia == 2 then
        if ancoragem == 1 then
            lb = C15(2,1);
        else
            lb = C15(2,2);
        end
    elseif fck == 20 && aderencia == 1 then
        if ancoragem == 1 then
            lb = C20(1,1);
        else
            lb = C20(1,2);
        end
    elseif fck == 20 && aderencia == 2 then
        if ancoragem == 1 then
            lb = C20(2,1);
        else
            lb = C20(2,2);
        end
    elseif fck == 25 && aderencia == 1 then
        if ancoragem == 1 then
            lb = C25(1,1);
        else
            lb = C25(1,2);
        end
    elseif fck == 25 && aderencia == 2 then
        if ancoragem == 1 then
            lb = C25(2,1);
        else
            lb = C25(2,2);
        end
    elseif fck == 30 && aderencia == 1 then
        if ancoragem == 1 then
            lb = C30(1,1);
        else
            lb = C30(1,2);
        end
    elseif fck == 30 && aderencia == 2 then
        if ancoragem == 1 then
            lb = C30(2,1);
        else
            lb = C30(2,2);
        end
    elseif fck == 35 && aderencia == 1 then
        if ancoragem == 1 then
            lb = C35(1,1);
        else
            lb = C35(1,2);
        end
    elseif fck == 35 && aderencia == 2 then
        if ancoragem == 1 then
            lb = C35(2,1);
        else
            lb = C35(2,2);
        end
    elseif fck == 40 && aderencia == 1 then
        if ancoragem == 1 then
            lb = C40(1,1);
        else
            lb = C40(1,2);
        end
    elseif fck == 40 && aderencia == 2 then
        if ancoragem == 1 then
            lb = C40(2,1);
        else
            lb = C40(2,2);
        end
    elseif fck == 45 && aderencia == 1 then
        if ancoragem == 1 then
            lb = C45(1,1);
        else
            lb = C45(1,2);
        end
    elseif fck == 45 && aderencia == 2 then
        if ancoragem == 1 then
            lb = C45(2,1);
        else
            lb = C45(2,2);
        end
    elseif fck == 50 && aderencia == 1 then
        if ancoragem == 1 then
            lb = C50(1,1);
        else
            lb = C50(1,2);
        end
    elseif fck == 50 && aderencia == 2 then
        if ancoragem == 1 then
            lb = C50(2,1);
        else
            lb = C50(2,2);
        end
    end
endfunction

// Função para localizar o diâmetro da barra, conforme o consumo de aço.
function diametroBarra = locDiametroBarra(areaAco)
    diametro = [6.3 8 10 12.5];
    if areaAco < 2.9 then
        diametroBarra = diametro(1,1);
    elseif areaAco > 2.89 && areaAco < 4 then
        diametroBarra = diametro(1,2);
    elseif areaAco > 3.99 && areaAco < 6.6 then
        diametroBarra = diametro(1,3);
    elseif areaAco > 6.59 then
        diametroBarra = diametro(1,4);
    end
endfunction

disp("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
disp("PROGRAMA PARA DIMENSIONAMENTO DE FUNDAÇÕES DIRETAS E INDIRETAS.");
disp("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
mprintf(" Desenvolvedor: Francirley Santos \n " + ...
       "Cursando: Engenharia Civil \n " + ...
       "Período: 8º, Noturno \n " + ...
       "CENTRO UNIVERSITÁRIO LUTERANO DE MANAUS (CEULM)");
disp(date());
disp("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");

// Escolha dos tipos de fundação
printf(" Escola o tipo de fundação: \n " + ...
        "Opção [1] - Fundação Direta.\n " + ...
        "Opção [2] - Fundação Indireta.");        
disp("");

// Início da coleta de dados para resolução do problema...
tipoFundacao = input(" Informe a opção desejada para o tipo de fundação: ");
tensaoSolo = input(" Informe a tensão adminissível do solo em (tf/m²): ");
fck = input(" Informe o fck do concreto em (Mpa): ");
printf(" Escolha a tipo de área de aderencia: \n " + ...
        "Opção [1] - Má. \n Opção [2] - Boa.");
aderencia = input(" Informe a opção desejada para área de aderencia: ");
printf(" Escolha a opção de acoragem para armadura do Pilar: \n " + ... 
        "Opção [1] - Sem gancho. \n Opção [2] - Com gancho.");
ancoragem = input(" Informe a opção de ancoragem da armadura do " + ...
                   "Pilar: ");
lb = compAncoragem(fck,aderencia,ancoragem); // Comprimento de ancoragem
// do pilar da sapata em (cm)

// Condição que verifica o tipo de fundação.
if tipoFundacao == 1 then
    printf(" Escolha o tipo de sapata:\n" + ...
            " Opção [1] - Sapata Isolada.\n" + ...
            " Opção [2] - Sapata Corrida. \n" + ...
            " Opção [3] - Sapata de Divisa. \n" + ...
            " Opção [4] - Sapata Associada.");
    disp("");
    tipoSapata = input(" Informe a opção desejada para o tipo de sapata: ");
    
    // Condição que verifica o tipo sapata.
    if tipoSapata == 1 then
        cargaPilar = input(" Informe a carga do pilar em (tf): ");
        ladoAPilar = input(" Informe o valor do lado (a) do pilar em (m): ");
        ladoBPilar = input(" Informe o valor do lado (b) do pilar em (m): ");
        
        // Cálculo das dimensões da sapata inicio do dimensionamento.
        areaSapata = (1.05*cargaPilar)/tensaoSolo; // Cálculo da área da sapata
        //em (m²)        
        // Equação do segundo grau para achar o lado (a) da Sapata em (m).
        ladoASapata = (((ladoAPilar-ladoBPilar)/2) + ...
                         sqrt(((ladoAPilar-ladoBPilar)^2/4)+areaSapata));
        ladoBSapata = areaSapata/ladoASapata; // Relação para achar o lado (b)
        // da Sapata em (m).
        balancoSapata = (ladoASapata-ladoAPilar)/2; // Cálculo dos balanços da
        // Sapata.
        h = (ladoASapata-ladoAPilar)/3; // Altura do cone (h), valor em (m).
        if h > lb then
            d = h*1.25; // A útil da sapata caso h > lb, valor em (m).
        else
            d = lb*1.25; // Altura útil da sapata caso h < lb, valor em (m).
        end
        cob = 0.05; // Espessura de cobrimento do aço, valor em (m).
        h = d+cob;// Altura da sapata, valor em (m).
        h0 = (d/3); // Altura da base da Sapata (h0), valor em (m).        
        // cone da Sapata (d) em (m).
        hTotalRasa = ladoASapata/2; // Altura total para Sapatas rasas.
        hTotalProfunda = ladoASapata*2; // Altura total para Sapatas profundas.
        angulo = atan((h-h0)/balancoSapata)*(180/%pi);
        
        //Dimensionamento das armaduras na sapata.
        // Cálculo da pressão do solo onde Ps = (1,4*N)/(A*B) em tf/m².
        tensao = (1.05*cargaPilar)/(ladoASapata*ladoBSapata);
        // Condição para verificar e calcular Xa e Xb.
        if (h/2) <= balancoSapata && balancoSapata <= (h*2) then
            msgLimiteCBE70 = "Ok, os limites para calcular Xa e Xb " + ...
                              "estão dentro dos padrões da CBE-70";
            Xa = balancoSapata+0.15*ladoAPilar;
            Xb = balancoSapata+0.15*ladoBPilar;
        else
            msgLimiteCBE70 = "ERRO, os limites para calcular Xa e Xb " + ...
                              "não estão dentro dos padrões da CBE-70 " + ...
                              "\n \n O tipo de fundação não é recomendado!";
            disp("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
            printf(msgLimiteCBE70);            
        end
        // Cálculo dos momentos fletores nas seções de referência S1A e S1B
        // onde os momento estão nas unidades (tf*m).
        M1A = tensao*(Xa^2/2)*ladoBSapata;
        M1B = tensao*(Xb^2/2)*ladoASapata;
        // Cálculo da área de aço nas direções A e B onde As em (m²).
        fyd = 50/1.15; // fyd em (kN/cm²).
        // Fator de atrito lado A da sapata em tf.
        FtA = ((1.05*cargaPilar)/8)*((ladoASapata-ladoAPilar)/d);
        // Fator de atrito lado B da sapata em tf.
        FtB = ((1.05*cargaPilar)/8)*((ladoBSapata-ladoBPilar)/d);
        areaMinAs = 0.1*h0*100; // Área mínima de aço
        AsA = (1.4*(FtA*10))/fyd; // Área de aço na direção A em cm².
        AsB = (1.4*(FtB*10))/fyd; // Área de aço na direção B em cm².
        // Condição para verificar a maior área de aço para o projeto.
        if areaMinAs > AsA & areaMinAs > AsB then
            AsA = areaMinAs
            AsB = areaMinAs
        end
        // Consumo de aço lado A da sapata em cm²/m.
        asa = (AsA)/ladoBSapata;
        // Consumo de aço lado B da sapata em cm²/m.
        asb = (AsB)/ladoASapata;
        // Verificação do maior consumo de aço, fator para localizar o
        // diâmetro da barra na tabela.
        if asa > asb then
            areaAco = asa;
        else
            areaAco = asb;
        end
        // Valor do diâmetro da barra de aço CA50 em (mm).
        barraAco = locDiametroBarra(areaAco);
        disp("");
        areaAcoBarra = (%pi*((barraAco/10)^2))/4; // Área da barra de aço em
        // cm².
        qtdBarraA = round((AsA/areaAcoBarra)+1); // Qtd de barras lado A.
        qtdBarraB = round((AsB/areaAcoBarra)+1); // Qtd de barras lado B.
        // Área efetiva de aço lado A da sapata em m²
        AsAEfetivo = qtdBarraA*areaAcoBarra;
        // Área efetiva de aço lado B da sapata em m²
        AsBEfetivo = qtdBarraB*areaAcoBarra;
        // Espaçamento das barras do lado A da sapata em cm.
        eBarraLadoA = (ladoBSapata-0.1)/(qtdBarraA-1);
        // Espaçamento das barras do lado B da sapata em cm.
        eBarraLadoB = (ladoASapata-0.1)/(qtdBarraB-1);
        tamBarLadA = (ladoASapata-0.10)+((h0*2)-0.20); // Tamanho da barra na
        // direção A com gancho.
        tamBarLadB = (ladoBSapata-0.10)+((h0*2)-0.20); // Tamanho da barra na
        // direção B com gancho.
        gancho = (h0-0.10)*100; // Tamanho dos gancho da barras.
        strHSapataUtil = string(round(d*100));
        strLb = string(round(lb*100));
        // Verificação da maior altura útil da sapata, condição para determinar
        // a altura da sapata
        if d > lb then
            msgAlturaUtil = "Ok, Sua altura útil está dentro dos" + ...
                            " padrões! d: " + strHSapataUtil + "cm > lb: " + ...
                             strLb + "cm" ;
        else
            msgAlturaUtil = "Erro, Sua altura útil não está" + ...
                            " dentro dos padrões! d: " + strHSapataUtil + ...
                            "< lb: " + strLb;
        end
        
        // Dimensionamento ao cisalhamento.
        // Verificação da ruptura por compressão diagonal.
        // Cálculo da tensão resistente.
        coefCisalhamento = 1 - (fck/250); // Coeficiente para verificação ao
        // cisalhamento onde o valor é admencional.
        fcd = (fck/10)/1.4; // Resistência do concreto minorado onde o valor
        // é em kN/cm².
        tensaoResistente = 0.27*coefCisalhamento*fcd; // Tensão resistênte onde
        // o valor é em kN/cm².
        // Cálculo da tensão solicitante.
        cargaPilarM = (cargaPilar + (cargaPilar*0.3))*10; // Carga do pilar
        // majorada em kN (Substituindo a carga do ELU).
        Fsd = 1.1*cargaPilarM; // Reação vertical de cálculo em kN
        //(aplicado pelo solo á sapata).
        perimetroContorno = (2*(ladoAPilar+ladoBPilar))*100; // Perimetro de
        // da área da sapata (u) em cm;
        tensaoSolicitante = Fsd/(perimetroContorno*(d*100)); // Tensão
        // solicitante em kN/cm²;
        
        // Condição para verificar se a tensão resistente é maior que a
        // tensão solicitante.
        if tensaoResistente > tensaoSolicitante then
            msgVerifRuptura = "Ok, não há ruptura por compressão " + ...
            "diagonal!\n Portanto não há necessidade de armadura " + ...
            "transversal.";
        else
            msgVerifRuptura = "Erro, a tensão solicitante está " + ...
                               "maior que a tensão resistente \n " + ...
                               "haverá ruptura por compresão diagonal.";
        end
        
        // Condição para verificar a tensão admissível sendo superior a
        // tensão da sapata provocada no solo.
        if tensao > tensaoSolo then
            msgVerifTensao = "Erro! A tensão da sapata provocada  " + ...
            "no solo é superior a tensão admissível! \n " + ...
            "Por favor verifique os cálculos, se possível aumente a " + ...
            "área da sapata.";
        else
            msgVerifTensao = "Ok, a tensão admissível é maior que a " + ...
            "tensão da sapata gerada no solo.";
        end
        
        // Resultados para o cálculo da sapata isolada.
        clc;
        disp("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
        disp("PROGRAMA PARA DIMENSIONAMENTO DE FUNDAÇÕES DIRETAS E INDIRETAS.");
        disp("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
        mprintf(" Desenvolvedor: Francirley Santos \n " + ...
               "Cursando: Engenharia Civil \n " + ...
               "Período: 8º, Noturno \n " + ...
               "CENTRO UNIVERSITÁRIO LUTERANO DE MANAUS (CEULM)");
        disp(date());
        disp("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
        disp("DADOS PARA O CÁLCULO:");
        disp("");
        if aderencia == 1 then
            strAderencia = "Ruim";
        else
            strAderencia = "Boa";
        end
        
        if ancoragem == 1 then
            strAncoragem = "Sem Gancho";
        else
            strAncoragem = "Com Gancho";
        end
        printf(" Dimensão do pilar: %.1f cm x %.1f cm \n " + ...
                "Carga normal do pilar: %.2f tf \n " + ...
                "Tensão admissível do solo: %.2f tf/m² \n " + ...
                "Área de aderencia: " + strAderencia + "\n " + ...
                "Tipo de Ancoragem: " + strAncoragem + "\n " + ...
                "Fck do concreto: %d Mpa", ...
                ladoBPilar*100, ladoAPilar*100, cargaPilar, tensaoSolo, fck);
        disp("");
        disp("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
        disp("DIMENSÕES DA SAPATA:");
        disp("");
        printf(" Áraa da Sapata: %.2f m² \n Sapata lado a: %.2f m \n " + ...
                "Sapata lado b: %.2f m \n Balanço Ca = Cb: %.2f m \n " + ...
                "Comprimento de Ancoragem lb: %.2f m \n " + ...
                "Altura do Cone: %.2f m \n Altura da Base: %.2f m \n " + ...
                "Cobrimento da armadura da sapata: %.2f m \n " + ...
                "Altura Útil do Cone: %.2f m \n " + ...
                "Para Sapatas rasas adotar: ht = %.2f m \n " + ...
                "Para Sapatas profundas adotar: ht = %.2f m \n " + ...
                "Angulo %.2fº \n ", areaSapata, ...
                ladoASapata, ladoBSapata, balancoSapata, lb, h, ...
                h0,cob, d, hTotalRasa, hTotalProfunda, angulo);
        disp("");
        disp("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
        disp("DADOS DA TENSÃO DO SOLO E MOMENTOS FLETORES");
        disp("");
        printf(" Tensão aplicada no solo: %.2f tf/m² \n " + ...
               "Momento fletor na região A da sapata: %.2f tf*m \n " + ...
               "Momento fletor na região B da sapata: %.2f tf*m \n ", ...
               tensao, M1A, M1B);
        disp("");
        disp("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
        disp("DIMENSIONAMENTO DA ARMADURA DA SAPATA:");
        disp("");
        printf(" Área de aço na direção de A: %.2f cm² \n " + ...
               "Área de aço na direção de B: %.2f cm² \n " + ...
               "Consumo de aço na direção de A: %.2f cm²/m \n " + ...
               "Consumo de aço na direção de B: %.2f cm²/m \n " + ...
               "Área efetiva de aço na direção de A: %.2f cm² \n " + ...
               "Área efetiva de aço na direção de B: %.2f cm² \n " + ...
               "Diâmetro da barra de aço: %.1f mm \n " + ...
               "Número de barras na direção de A: %d Und \n " + ...
               "Número de barras na direção de B: %d Und \n " + ...
               "Espaçamento das barras na direção de A: %d cm \n " + ...
               "Espaçamento das barras na direção de B: %d cm ", ...
               AsA, AsB, asa, asb, AsAEfetivo, AsBEfetivo, barraAco, ...
               qtdBarraA, qtdBarraB, eBarraLadoA*100, eBarraLadoB*100);
        disp("");
        disp("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
        disp("VERIFICAÇÕES DO DIMENSIONAMENTO:");
        disp("");
        printf(" ALTURA ÚTIL DO CONE DA SAPATA:\n " + msgAlturaUtil + ...
               "\n\n " + "LIMITES DE XA E XB:\n " + msgLimiteCBE70 + ...
               "\n\n " + "CISALHAMENTO POR TENSÃO DIAGONAL:\n " + ...
               msgVerifRuptura + ...
               "\n\n " + "COMPARAÇÃO DAS TENSÕES SAPATA E TENSÃO ADM:\n " + ...
               msgVerifTensao);
        disp("");
        disp("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
        disp("RESULTADO FINAL PARA O DIMENSIONAMENTO DA ARMADURA:");
        disp("");
        printf(" Direção A: Nb: %d Und - Ø %.2f mm - e: %d cm " + ...
               "- C/A: %.2f cm - G/: %d cm\n \n " + ...
               "Direção B: Nb: %d Und - Ø %.2f mm " + ...
               "- e: %d cm - C/B: %.2f cm - G/: %d cm ", ...
               qtdBarraA, barraAco, eBarraLadoA*100, tamBarLadA*100, gancho, ...
               qtdBarraB, barraAco, eBarraLadoB*100, tamBarLadB*100, gancho);
        disp("");
        
    // Condição para calcular uma sapata corrida.    
    elseif tipoSapata == 2 then
        // Coleta de dados para resolução do problema.
        cargaDist = input(" Informe o carregamento distribuído em (tf/m): ");
        a0 = input(" Informe o lado a0 da sapata corrida em (m): ");
        compSapata = input(" Informe o comprimento da sapata corrida em (m): ");
        // Cálculo da área da sapata.
        areaSapata = (1.05*cargaDist)/tensaoSolo;
        // Cálculo do lado A da sapata em função de 1m de comprimento.   
        A = areaSapata/1;
        areaTotalSapata = A*compSapata;
        // Cálculo do balanço da sapata.
        balanco = (A-a0)/2;
        // Cálculo da altura do cone da sapata.
        h = (A-a0)/3;
        // Condição para determinar a altura útil da sapata.
        if h > lb then
            d = h*1.25; // A útil da sapata caso h > lb, valor em (m).
        else
            d = lb*1.25; // Altura útil da sapata caso h < lb, valor em (m).
        end
        cob = 0.05; // Espessura de cobrimento do aço, valor em (m).
        h = d+cob;// Altura da sapata, valor em (m).
        h0 = (d/3); // Altura da base da Sapata (h0), valor em (m).        
        // cone da Sapata (d) em (m).
        hTotalRasa = A/2; // Altura total para Sapatas rasas em (m).
        hTotalProfunda = A*2; // Altura total para Sapatas profundas em (m).
        // Cálculo do ângulo de inclinação do cone da sapata corrida em (graus).
        angulo = atan((h-h0)/balanco)*(180/%pi);
        
        // Dimensionamento das armaduras na sapata.
        La = (A-a0)/2; // Sessão para cálculo do momento fletor em (m).
        tSolo = (1.05*cargaDist)/(A*1.0); // Tensão do solo em tf/m².
        qA = tSolo*1.0; // Carga distribuida na direção A em tf/m.
        Mka = (qA*La^2)/2; // Cálculo do momento fletor em A em (tf*m).
        Mda = 1.4*Mka*980.665; // Momento fletor majorado na região A em (kN*m).
        As = Mda/(0.8*(d*100)*43.5); // Cálculo da área de aço em cm²/m.
        AsMin = 0.0015*100*(h0*100); // Cálculo da área de aço mínima em cm²/m.
        // Condição para adotar a maior área de aço.
        if AsMin > As then
            As = AsMin;
        end
        // Buscar o diâmetro da barra na tabela de consumo de aço cm²/m.
        barraAco = locDiametroBarra(As);
        areaAcoBarra = (%pi*((barraAco/10)^2))/4; // Área da barra de aço em
        // cm².
        qtdBarra = round((As/areaAcoBarra)+1)*compSapata; // Qtd de barras.
        AsEfetivo = qtdBarra*areaAcoBarra; // Área de aço efetiva em cm².
        // Espaçamento das barras do lado B da sapata em m.
        eBarra = (compSapata-(2*cob))/(qtdBarra-1);
        tamBarra = (A-0.10)+((h0*2)-(4*cob)); // Tamanho da barra na
        // direção B com gancho em m.
        
        // Cálculo das armaduras de distribuição
        AsDist1 = 0.4*As; // Área de aço de distribuição
        // 0,2*(As/s).
        AsDist2 = 1.1; // Área de aço de distribuição intermediária.
        AsDist3 = 0.7*(AsMin); // Área de aço de distribuição
        // 0,5*(AsMin/s).
        // Condição para verificar a maior área de aço de distribuição.
        if AsDist1 > AsDist2 | AsDist1 > AsDist3 then
            AsDist = AsDist1
        elseif AsDist2 > AsDist1 | AsDist2 > AsDist3 then
            AsDist = AsDist2
        else
            Asdist = AsDist3
        end 
        // Busca do diâmetro da barra de aço de distribuição na tabela de
        // consumo de aço cm²/m.
        barraAcoDist = locDiametroBarra(AsDist);
        areaAcoBarraDist = (%pi*((barraAcoDist/10)^2))/4; // Área da barra de
        //aço em cm².
        qtdBarraDist = round((AsDist/areaAcoBarraDist)+1);
        AsEfetivoDist = qtdBarraDist*areaAcoBarraDist; // Área de aço efetiva
        // em cm².
        eBarraDist = (A-(2*cob))/(qtdBarraDist-1);      
        tamBarraDist = (compSapata-0.10)+((h0*2)-(4*cob)); // Tamanho da barra
        // na direção A com gancho em m.
        gancho = (h0-0.10)*100; // Tamanho dos gancho das barras em cm.
        // Condição para verificar a tensão admissível superior a tensão da
        // sapata aplicada no solo.
        if tensao > tensaoSolo then
            msgVerifTensao = "Erro! A tensão da sapata provocada  " + ...
            "no solo é superior a tensão admissível! \n " + ...
            "Por favor verifique os cálculos, se possível aumente a " + ...
            "área da sapata.";
        else
            msgVerifTensao = "Ok, a tensão admissível é maior que a " + ...
            "tensão da sapata gerada no solo.";
        end
        
        // Resultados para o cálculo da sapata isolada.
        clc;
        disp("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
        disp("PROGRAMA PARA DIMENSIONAMENTO DE FUNDAÇÕES DIRETAS E INDIRETAS.");
        disp("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
        mprintf(" Desenvolvedor: Francirley Santos \n " + ...
               "Cursando: Engenharia Civil \n " + ...
               "Período: 8º, Noturno \n " + ...
               "CENTRO UNIVERSITÁRIO LUTERANO DE MANAUS (CEULM)");
        disp(date());
        disp("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
        disp("DADOS PARA O CÁLCULO:");
        disp("");
        if aderencia == 1 then
            strAderencia = "Ruim";
        else
            strAderencia = "Boa";
        end
        
        if ancoragem == 1 then
            strAncoragem = "Sem Gancho";
        else
            strAncoragem = "Com Gancho";
        end
        printf(" Dimensão da carga distribuída: %.1f cm x %.1f cm \n " + ...
                "Carga Distribuída: %.2f tf/m \n " + ...
                "Tensão admissível do solo: %.2f tf/m² \n " + ...
                "Área de aderencia: " + strAderencia + "\n " + ...
                "Tipo de Ancoragem: " + strAncoragem + "\n " + ...
                "Fck do concreto: %d Mpa", ...
                a0*100, compSapata*100, cargaDist, tensaoSolo, fck);
        disp("");
        disp("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
        disp("DIMENSÕES DA SAPATA:");
        disp("");
        printf(" Áraa da Sapata: %.2f m² \n Sapata lado A: %.2f m \n " + ...
                "Sapata lado B: %.2f m \n Balanço Ca: %.2f m \n " + ...
                "Comprimento de Ancoragem lb: %.2f m \n " + ...
                "Altura do Cone: %.2f m \n Altura da Base: %.2f m \n " + ...
                "Cobrimento da armadura da sapata: %.2f m \n " + ...
                "Altura Útil do Cone: %.2f m \n " + ...
                "Para Sapatas rasas adotar: ht = %.2f m \n " + ...
                "Para Sapatas profundas adotar: ht = %.2f m \n " + ...
                "Angulo %.2fº \n ", areaTotalSapata, ...
                A, compSapata, balanco, lb, h, ...
                h0,cob, d, hTotalRasa, hTotalProfunda, angulo);
        disp("");
        disp("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
        disp("DADOS DA TENSÃO DO SOLO E MOMENTOS FLETORES");
        disp("");
        printf(" Tensão aplicada no solo: %.2f tf/m²/m \n " + ...
               "Momento fletor na região A da sapata: %.2f tf*m", ...
               tSolo, Mka);
        disp("");
        disp("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
        disp("DIMENSIONAMENTO DA ARMADURA DA SAPATA:");
        disp("");
        printf(" Área de aço principal A: %.2f cm²/m \n " + ...
               "Área de aço de distribuição B: %.2f cm² \n " + ...
               "Área efetiva de aço principal A: %.2f cm² \n " + ...
               "Área efetiva de aço de distribuição B: %.2f cm² \n " + ...
               "Diâmetro da barra de aço principal: %.1f mm \n " + ...
               "Diâmetro da barra de aço de distribuição: %.1f mm \n " + ...
               "Número de barras principais A: %d Und \n " + ...
               "Número de barras de distribuição B: %d Und \n " + ...
               "Espaçamento das barras na direção de A: %d cm \n " + ...
               "Espaçamento das barras na direção de B: %d cm ", ...
               As, AsDist, AsEfetivo, AsEfetivoDist, barraAco, barraAcoDist, ...
               qtdBarra, qtdBarraDist, eBarra*100, eBarraDist*100);
        disp("");
        //disp("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
        //disp("VERIFICAÇÕES DO DIMENSIONAMENTO:");
        //disp("");
        //printf(" ALTURA ÚTIL DO CONE DA SAPATA:\n " + msgAlturaUtil + ...
               //"\n\n " + "LIMITES DE XA E XB:\n " + msgLimiteCBE70 + ...
               //"\n\n " + "CISALHAMENTO POR TENSÃO DIAGONAL:\n " + ...
               //msgVerifRuptura + ...
               // "\n\n " + "COMPARAÇÃO DAS TENSÕES SAPATA E TENSÃO ADM:\n " + ...
               // msgVerifTensao);
        //disp("");
        disp("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
        disp("RESULTADO FINAL PARA O DIMENSIONAMENTO DA ARMADURA:");
        disp("");
        printf(" Barras principais A: Nb: %d Und - Ø %.2f mm - e: %d cm " + ...
               "- C/A: %.2f cm - G/: %d cm\n \n " + ...
               "Barras de distribuição B: Nb: %d Und - Ø %.2f mm " + ...
               "- e: %d cm - C/B: %.2f cm - G/: %d cm ", ...
               qtdBarra, barraAco, eBarra*100, tamBarra*100, gancho, ...
               qtdBarraDist, barraAcoDist, eBarraDist*100, tamBarraDist*100, ...
               gancho);
        disp("");
        
    // Condição para calcular uma sapata de divisa.    
    elseif tipoSapata == 3 then
        
    // Condição para calcular uma sapata associada.    
    else
        qtdPilar = input(" Informe a quantidade de Pilar: ");
        somaAreaSapata = 0;
        somaLadoASapata = 0;
        somaLadoBSapata = 0;
        for contador =1:qtdPilar
            strI = string(contador);
            cargaPilar = input(" Informe a carga do pilar " + strI + ...
                               " em (tf): ");
            ladoAPilar = input(" Informe o valor do lado (a) do pilar " ...
                               + strI + " em (m): ");
            ladoBPilar = input(" Informe o valor do lado (b) do pilar " ...
                               + strI + " em (m): ");
            areaSapata = (1.05*cargaPilar)/tensaoSolo;
            ladoASapata = (((ladoAPilar-ladoBPilar)/2) + ...
                         sqrt(((ladoAPilar-ladoBPilar)^2/4)+areaSapata));
            ladoBSapata = areaSapata/ladoASapata;
            somaAreaSapata = somaAreaSapata + areaSapata;

            somaLadoASapata = somaLadoASapata + ladoASapata;

            somaLadoBSapata = somaLadoBSapata + ladoBSapata;
            contador = contador+1;            
        end
        disp(somaAreaSapata, somaLadoASapata, somaLadoBSapata);
    end // Fim da condição que verifica o tipo de sapata.
end // Fim da condição que verifica o tipo de fundação.
