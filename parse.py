
import re

def matematica_para_processos(expressao):
    # Dividir a expressão em tokens
    tokens = re.findall(r'[\d]+|[\+\-\*/\(\)]', expressao)

    # Mapear operadores matemáticos para operadores de processos
    operadores = {
        '+': 'ADD',
        '-': 'SUB',
        '*': 'MUL',
        '/': 'DIV'
    }

    processo = []
    processo_variavel = 1
    for token in tokens:
        if token.isdigit():
            # Se o token for um número, crie uma variável temporária
            processo.append(f'var{processo_variavel}={token};\r\n')
            processo_variavel += 1
        elif token in operadores:
            # Se o token for um operador matemático, converta-o para um operador de processo
            operador_processo = operadores[token]
            args = [f'var{i}' for i in range(processo_variavel - 2, processo_variavel)]
            processo.append(f'{operador_processo},{",".join(args)};')

    return ''.join(processo)

def main():
    expressao = input("Digite uma expressão matemática: ")
    processo = matematica_para_processos(expressao)
    print("Expressão convertida em processos:")
    print(processo)
print("\x1bc\x1b[44;37m")
main()
