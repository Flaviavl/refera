# Refera

Esse é o material de entrega para participar do precesso seletivo da refera. Atravez de um CSV do DVD rental foi solicitado uma analise desse desse material utilizando o processo de ETL.

# Extração

Os dados foram extraidos do link https://drive.google.com/file/d/1NbCcMPwUBAXiC8rIxz_oxFtMHE4hR39L/view e atravez do codigo python alterei o nome dos arquivos. 

# Transformação

Para iniciar o processo de transformação fiz a conexão com o banco de dados e carreguei os CSV no banco.

Teste de conexão
<p float="left">
<img src="https://github.com/Flaviavl/refera/blob/cfba0ad6bec87479a1b5a3c680a2b37ba0eb64fa/dbtdebug.jpg" width="200" />
</p>

Foi utilizado o dbt seed para incluir os CSV.
 
 <p float="left">
<img src="https://github.com/Flaviavl/refera/blob/cfba0ad6bec87479a1b5a3c680a2b37ba0eb64fa/dbtseed.jpg" width="200" />
</p> 
