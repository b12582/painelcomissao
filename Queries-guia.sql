/* Queries guia (exemplo com um mês específico de um representante específico) */

/* Nível 0 -> Resumo */
select	a.drilldown0 chave,
	(
		a.drilldown0 ||
		decode(	nvl(a.percentualcomissao,0),
			0,null,
			' (comissão média ' || trim(to_char(a.percentualcomissao,'990.00')) || '%): '
			)
	) descricao,
	a.valor,
	a.hintdd0
from	SF_REPRESENTANTE_COMISSAO_TOT a
where	a.codigorepresentante	= 'R00191'
and	a.anoapuracao		= '2025'
and	a.mesapuracao		= '06';



/* Drilldown nível -1 */
select	a.codigotipo,
	a.drilldown0,
	a.drilldown1 chave,
	(
		a.drilldown1 ||
		decode(	nvl(avg(a.percentualcomissao),0),
			0,null,
			' (comissão média ' || trim(to_char(avg(a.percentualcomissao),'990.00')) || '%): '
			)
	) descricao,
	sum(a.valorcomissao) valor,
	a.hintdd1
from	SF_REPRESENTANTE_COMISSAO a
where	a.codigorepresentante	= 'R00191'
and	a.anoapuracao		= '2025'
and	a.mesapuracao		= '06'
group by	a.codigotipo,
	a.drilldown0,
	a.drilldown1,
	a.hintdd1
order by	1, 3;



/* Drilldown nível -2 */
select	a.codigotipo,
	a.drilldown0,
	a.drilldown1,
	a.drilldown2 chave,
	(
		a.drilldown2 ||
		decode(	nvl(avg(a.percentualcomissao),0),
			0,null,
			' (comissão média ' || trim(to_char(avg(a.percentualcomissao),'990.00')) || '%): '
			)
	) descricao,
	sum(a.valorcomissao) valor,
	a.hintdd2
from	SF_REPRESENTANTE_COMISSAO a
where	a.codigorepresentante	= 'R00191'
and	a.anoapuracao		= '2025'
and	a.mesapuracao		= '06'
group by	a.codigotipo,
	a.drilldown0,
	a.drilldown1,
	a.drilldown2,
	a.hintdd2
order by	1, 3, 4;



/* Drilldown nível -3 */
select	a.codigotipo,
	a.drilldown0,
	a.drilldown1,
	a.drilldown2,
	a.drilldown3 chave,
	(
		a.drilldown3 ||
		decode(	nvl(avg(a.percentualcomissao),0),
			0,null,
			' (comissão média ' || trim(to_char(avg(a.percentualcomissao),'990.00')) || '%): '
			)
	) descricao,
	sum(a.valorcomissao) valor,
	a.hintdd3
from	SF_REPRESENTANTE_COMISSAO a
where	a.codigorepresentante	= 'R00191'
and	a.anoapuracao		= '2025'
and	a.mesapuracao		= '06'
group by	a.codigotipo,
	a.drilldown0,
	a.drilldown1,
	a.drilldown2,
	a.drilldown3,
	a.hintdd3
order by	1, 3, 4, 5;



/* Drilldown nível -4 */
select	a.codigotipo,
	a.drilldown0,
	a.drilldown1,
	a.drilldown2,
	a.drilldown3,
	a.drilldown4 chave,
	(
		a.drilldown4 ||
		decode(	nvl(avg(a.percentualcomissao),0),
			0,null,
			' (comissão média ' || trim(to_char(avg(a.percentualcomissao),'990.00')) || '%): '
			)
	) descricao,
	sum(a.valorcomissao) valor,
	a.hintdd4
from	SF_REPRESENTANTE_COMISSAO a
where	a.codigorepresentante	= 'R00191'
and	a.anoapuracao		= '2025'
and	a.mesapuracao		= '06'
group by	a.codigotipo,
	a.drilldown0,
	a.drilldown1,
	a.drilldown2,
	a.drilldown3,
	a.drilldown4,
	a.hintdd4
order by	1, 3, 4, 5, 6;



/* Drilldown nível -5 */
select	a.codigotipo,
	a.drilldown0,
	a.drilldown1,
	a.drilldown2,
	a.drilldown3,
	a.drilldown4,
	a.drilldown5 chave,
	(
		a.drilldown5 ||
		decode(	nvl(avg(a.percentualcomissao),0),
			0,null,
			' (comissão média ' || trim(to_char(avg(a.percentualcomissao),'990.00')) || '%): '
			)
	) descricao,
	sum(a.valorcomissao) valor,
	a.hintdd5
from	SF_REPRESENTANTE_COMISSAO a
where	a.codigorepresentante	= 'R00191'
and	a.anoapuracao		= '2025'
and	a.mesapuracao		= '06'
group by	a.codigotipo,
	a.drilldown0,
	a.drilldown1,
	a.drilldown2,
	a.drilldown3,
	a.drilldown4,
	a.drilldown5,
	a.hintdd5
order by	1, 3, 4, 5, 6, 7;