<%@ attribute name="id" required="true" %>

<script type="text/javascript">
	$(function(){
		$("#${id}").datepicker({
			dateFormat : 'dd/mm/yy',
			dayNames: ['Domingo','Segunda','Ter�a','Quarta','Quinta','Sexta','S�bado'],
			dayNamesMin: ['D','S','T','Q','Q','S','S','D'],
			dayNamesShort: ['Dom','Seg','Ter','Qua','Qui','Sex','S�b','Dom'],
			monthNames: ['Janeiro','Fevereiro','Mar�o','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro'],
			monthNamesShort: ['Jan','Fev','Mar','Abr','Mai','Jun','Jul','Ago','Set','Out','Nov','Dez'],
			nextText: 'Pr�ximo',
			prevText: 'Anterior'
		});
	});
</script>
<input type="text" id="${id}" name="${id}"/>