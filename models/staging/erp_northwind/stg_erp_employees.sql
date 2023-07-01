with
    source_employees as (
        select
            cast(employee_id as int) as funcionario_id
            , reports_to as gerente_id
            , cast(last_name as string) as sobrenome
            , cast(first_name as string) as nome
            , cast(first_name || ' ' || last_name as string) as nome_completo
            , cast(birth_date as date) as data_nascimento
            , cast(hire_date as date) as data_contratacao
            , cast(address as string) as endereco
            , cast(city as string) as cidade
            , cast(region as string) as regiao
            , cast(postal_code as string) as cep
            , cast(country as string) as pais
            , notes as notas
        from {{ source('erp', 'employees') }}
    )
select *
from source_employees