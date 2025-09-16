# Estudo Dirigido: Ruby + LLMs — Homework 01 (SEMESTREE)

Repositório com as soluções do Homework 01 de Ruby e relatório (na Wiki) sobre como LLMs podem apoiar o aprendizado e o desenvolvimento.

- Repositório: https://github.com/cauet-code/-Atividade-de-aprendizagem-sobre-linguagem-Ruby-integrada-ao-uso-de-LLM
- Wiki (Relatório completo): https://github.com/cauet-code/-Atividade-de-aprendizagem-sobre-linguagem-Ruby-integrada-ao-uso-de-LLM/wiki/Relatorio-Estudo-Dirigido-Ruby-LLMs

## Estrutura

- Parte 01
  - `part1a_palindrome.rb`: função `palindrome?(string)`
  - `part1b_count_words.rb`: função `count_words(string)`
- Parte 02
  - `part2a_rps_game_winner.rb`: jogo Pedra-Papel-Tesoura (2 jogadores)
  - `part2b_rps_tournament_winner.rb`: torneio de Pedra-Papel-Tesoura (recursivo)
- Parte 03
  - `part3_combine_anagrams.rb`: combinação de anagramas
- Parte 04
  - `part4b_jellybean.rb`: classes `Dessert` e `JellyBean` (herança)
- Parte 05
  - `part5_attr_accessor_with_history.rb`: `attr_accessor_with_history` (metaprogramação)
- Parte 06
  - `part6a_currency_conversion.rb`: extensão de `Numeric` com conversão de moedas
  - `part6b_string_palindrome.rb`: extensão de `String#palindrome?`
  - `part6c_enumerable_palindrome.rb`: extensão de `Enumerable#palindrome?`

## Pré-requisitos

- Ruby 2.7+ (recomendado Ruby 3.x)

## Como executar exemplos rápidos

Execute no diretório do projeto:

```bash
# Parte 01 — palindrome?
ruby -e 'load "part1a_palindrome.rb"; puts palindrome?("A man, a plan, a canal -- Panama"); puts palindrome?("Abracadabra")'

# Parte 01 — count_words
ruby -e 'load "part1b_count_words.rb"; p count_words("A man, a plan, a canal -- Panama")'

# Parte 02 — RPS game
ruby -e 'load "part2a_rps_game_winner.rb"; p rps_game_winner([["Armando","P"],["Dave","S"]])'

# Parte 02 — RPS tournament
ruby -e 'load "part2b_rps_tournament_winner.rb"; t=[[ ["Armando","P"],["Dave","S"] ], [ ["Richard","R"],["Michael","S"] ]]; p rps_tournament_winner(t)'

# Parte 03 — combine_anagrams
ruby -e 'load "part3_combine_anagrams.rb"; p combine_anagrams(["cars","racs","scar","for","rof"])'

# Parte 04 — Dessert/JellyBean
ruby -e 'load "part4b_jellybean.rb"; jb=JellyBean.new("jelly",150,"black licorice"); puts jb.healthy?; puts jb.delicious?'

# Parte 05 — attr_accessor_with_history
ruby -e 'load "part5_attr_accessor_with_history.rb"; class Foo; attr_accessor_with_history :bar; end; f=Foo.new; f.bar=1; f.bar=2; p f.bar_history'

# Parte 06 — moedas e extensões
ruby -e 'load "part6a_currency_conversion.rb"; puts (5.euros.in(:dollars)).round(2)'
ruby -e 'load "part6b_string_palindrome.rb"; puts "Madam, I’m Adam".palindrome?'
ruby -e 'load "part6c_enumerable_palindrome.rb"; p [1,2,3,2,1].palindrome?; p [1,2,3].palindrome?'
```

## Licença

Uso acadêmico/educacional.

