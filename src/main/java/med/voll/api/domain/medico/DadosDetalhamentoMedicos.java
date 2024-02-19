package med.voll.api.domain.medico;

import med.voll.api.domain.endereco.Endereco;

public record DadosDetalhamentoMedicos(long id, String Nome, String email, String crm,String telefone, Especialidade especialidade, Endereco endereco) {
    public DadosDetalhamentoMedicos(Medico medico){
        this(medico.getId(),medico.getNome(), medico.getEmail(), medico.getCrm(), medico.getTelefone(), medico.getEspecialidade(),medico.getEndereco());
    }

}
