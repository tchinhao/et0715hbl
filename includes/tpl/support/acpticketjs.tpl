<script type="text/javascript">
var num_tickets = %NUM_TICKETS%;
var deleted = 0;
$(document).ready(function() {
	$(".ticket-delete").click(function() {
		var id = this.id.toString().split("-")[2];
		$("#ticket-" + id).slideUp(function() {
					$("#ticket-" + id).remove();
					var post = { "function": "deleteTicket", "ticket": id };
					post[csrfMagicName] = csrfMagicToken;
					$.post("<AJAX>", post);
					deleted = deleted + 1;
					if(deleted >= num_tickets) {
						$("#nun-tickets").slideDown();
					}
		});
	});
});
</script>
