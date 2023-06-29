void main() {

  Lista_de_tarefa tarefa1 = Lista_de_tarefa();
  print('-----------parte1------------');
  tarefa1.adicionar('limpar o quarto');
  tarefa1.adicionar('Limpar a geladeira');
  tarefa1.adicionar('Limpar o sapato');
  tarefa1.adicionar('Mandar boa boite');

  tarefa1.mostrar_tarefas();
  tarefa1.tamanho_da_lista();

  print('-----------parte2------------');
  tarefa1.excluir_tarefa(1);

  tarefa1.mostrar_tarefas();
  tarefa1.tamanho_da_lista();

  print('-----------parte3------------');

  tarefa1.adicionar('Jogar basquete');
  tarefa1.adicionar('Pular corda');

  print('-----------parte4------------');
  tarefa1.excluir_tarefa(9);

  tarefa1.mostrar_tarefas();
  tarefa1.tamanho_da_lista();

  Lista_de_tarefa.lista;

}
class Lista_de_tarefa {

  static List lista = [];
  String tarefa = '';
  Lista_de_tarefa();

  void adicionar(String tarefa) => lista.add(tarefa);

  void mostrar_tarefas() {
    for(int i = 0; i < lista.length; i++) {
      print('${i + 1}ª tarefa ${lista[ i ]}');
    }
  }

  void tamanho_da_lista() => print('O tamanho da lista é ${lista.length}');

  void excluir_tarefa(int excluir) {
    
    if(excluir > lista.length) {
        return print('Tarefa não existe!!!');
      }else {
        for(int i = 1; i < lista.length; i++) {
          if(i == excluir) {
            excluir = excluir - 1;
            lista.removeAt(excluir);
            print('Tarefa $i excluída com sucesso!!');
          } 
        }
      }  
  }
}