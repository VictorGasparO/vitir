package edu.chain;

public abstract class Processo {
	
	private Processo proximoProcesso;

	public Processo getProximoProcesso() {
		return proximoProcesso;
	}

	public void setProximoProcesso(Processo proximoProcesso) {
		this.proximoProcesso = proximoProcesso;
	}
	
	
	public void executar(ProblemaArea p) { 
		if (getProximoProcesso() != null){
			System.out.println("N�o sei resolver, passando para o proximo processo");
			getProximoProcesso().executar(p);
		} else {
			System.out.println("Problema n�o foi resolvido acabou a cadeia de responsabilidade");
		}
	}

}
