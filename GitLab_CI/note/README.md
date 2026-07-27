# Introdução

## Sobre este curso

Estas anotações foram elaboradas durante o curso **GitLab CI/CD** com o objetivo de consolidar os principais conceitos, registrar exemplos práticos e documentar os laboratórios realizados.

O foco é compreender como automatizar processos de desenvolvimento utilizando os recursos oferecidos pelo GitLab, desde a criação de pipelines até o deploy de aplicações.

---

## Objetivos de aprendizado

Ao final deste curso, espero ser capaz de:

- Compreender os conceitos de CI/CD;
- Utilizar o GitLab como plataforma de gerenciamento de código;
- Configurar e administrar GitLab Runners;
- Criar pipelines utilizando o arquivo `.gitlab-ci.yml`;
- Automatizar builds, testes e deploys;
- Trabalhar com variáveis, cache e artifacts;
- Integrar pipelines com Docker e Kubernetes;
- Aplicar boas práticas na construção de pipelines.

---

## Organização das anotações

Cada módulo do curso possui um arquivo próprio contendo:

- Resumo do conteúdo;
- Conceitos importantes;
- Comandos utilizados;
- Exemplos;
- Observações pessoais;
- Referências.

---

Gitlab runner: Servidores

Estrutura das branches: 

master: branch principal e importante - código de produção
develop: Contém os códigos do próximo release. Quando a branch estiver pronta pra produção, fazer o merge para a master.
feture: Criada para desenvolver uma nova funciolidade. Criada da develop.

parametros: 

parallel - quantidade de instancia um job pode executar em paralelo

Duas formas de configurar o parallel: 

Número fixo (Multi-instanciação simples): Apenas roda o mesmo script várias vezes em paralelo (geralmente usado com a variável $CI_NODE_INDEX e $CI_NODE_TOTAL para você mesmo dividir a carga de testes via código).

Matriz de variáveis (parallel:matrix): Permite rodar o job em paralelo mudando os valores de variáveis diferentes em cada instância (ex: testar o mesmo código em várias versões do Node.js ou do Python ao mesmo tempo).