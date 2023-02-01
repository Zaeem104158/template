class EmailTicketId {
  final int ticketId;
  final String email;
  final String? ticketTitle;

  EmailTicketId({
    required this.ticketId,
    required this.email,
    this.ticketTitle,
  });
}
