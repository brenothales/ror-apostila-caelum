public class Pessoa {

   private String nome;

   public Pessoa (String meuNome){
    this.nome = meuNome;
   }

   public void setNome(Sting novoNome){
    this.nome = novoNome
   }

   public Sting getNome(){
    return this.nome;
   }

   public void seMostra(){
    System.out.println(this.getNome());
   }
}
