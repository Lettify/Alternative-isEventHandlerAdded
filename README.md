# Função **isEventHandlerAdded** (alternativa) - Multi Theft Auto (MTA)
Por enquanto esta função é funcional por resource, ou seja, ela não trabalha com mais de um resource, somente com aquele que você usou o código.
## Introdução de aplicação
1. Coloque o arquivo no resource que você quer usar a função.
2. No arquivo **meta.xml** adicione a tag *script* mencionando o arquivo da função, definindo o atributo *type* para `shared`, como a seguir:
![](https://i.imgur.com/WBsv0jN.png)
3. **Observação**: A tag que especifica este arquivo deve ser carregada antes dos outros arquivos que usam a função de [*adicionar*](https://wiki.multitheftauto.com/wiki/AddEventHandler) e [*remover*](https://wiki.multitheftauto.com/wiki/RemoveEventHandler) evento, ou seja, você deve colocá-la em "primeiro lugar" no **meta.xml**.
