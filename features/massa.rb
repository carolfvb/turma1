require 'ffaker'

CADASTRO = {
  fisica: {
    nome: FFaker::Name.name,
    cpf: FFaker::IdentificationBR.cpf,
    email: FFaker::Internet.email,
    tipo_telefone1: 'Residencial',
    numero_ddd_tel1: '11',
    numero_tel1: '47289388',
    data_nascimento: ['26','01','1989'],
    sexo: 'M',
    senha: 'homolog01',
    confirmar_senha: 'homolog01'
  },
  juridica: {
    nome: FFaker::Name.name,
    cnpj: FFaker::IdentificationBR.cnpj,
    email: FFaker::Internet.email,
    sede_inscricao_estadual: 'SP',
    inscricao_estadual: '1878417',
    tipo_telefone1: 'Comercial',
    numero_ddd_tel1: '11',
    numero_tel1: '47289388',
    senha: 'homolog01',
    confirmar_senha: 'homolog01'
  }

}
