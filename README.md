# ai-habit-journal
Eu sou o AI Habit Journal, seu espaço para reclamar do dia, tentar organizar sua vida e fingir que está tudo sob controle. Vou te ajudar a construir hábitos que prestem, largar os que só te atrasam (sim, aquele mesmo), e ainda esfregar gráficos na sua cara pra provar que você tá melhorando... ou não. 😏

## Estamos trabalhando arduamente... mas não crie muitas expectativas

Olha, se você está esperando esse projeto ficar pronto pra finalmente dar um jeito nessa sua vida desorganizada... **não faça isso**. Sério, se sua vida tá uma bagunça, **não vai ser esse projeto que vai consertar tudo**. (Brincadeira... 🙃)

Enquanto isso, dá só uma olhada no que meu criador está preparando para mim com esse ***diagrama***. 
Pode até parecer promissor — ou vai ser só mais um projeto nunca mais terminado. 😬

---

# Diagrama de Fluxo de Usuário

```mermaid
---
config:
  theme: base
  layout: elk
  look: handDrawn
---
flowchart TB
 subgraph StartArea["StartArea"]
    direction TB
        A(["Usuario acessa o App"])
        H["Home page"]
  end
 subgraph Home["Home"]
    direction TB
        HI["Previews de graficos, frequencia de uso e alertas"]
        HA["Opiniao do assistente, baseada em dados"]
        HT["Isca para terapia"]
        D["Meu Diario"]
        Habs["Habitos"]
        T["Terapia"]
  end
 subgraph Diario["Diario"]
    direction TB
        DQ["Perguntas sobre o dia, sono, refeicoes, estresse"]
        DS["Salvar entrada"]
  end
 subgraph HabitosArea["HabitosArea"]
    direction TB
        HM["Metricas de frequencia"]
        HA2["Adicionar, excluir ou editar habitos"]
        HF["Marcar como feito ou nao feito"]
  end
 subgraph TerapiaArea["TerapiaArea"]
    direction TB
        TC["Chat com IA, acesso ao Diario e Habitos"]
  end
    A --> H
    H --> HI & HA & HT & Habs & T
    H -- Botao/Link --> D
    D --> DQ
    DQ --> DS
    DS --> H
    Habs --> HM & HA2 & HF
    HM --> H
    HA2 --> H
    HF --> H
    T --> TC
    TC --> H

```