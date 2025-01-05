namespace TrackerBuddy.Models
{
    public class Transaction
    {
        public int Id { get; set; }
        public int UserId { get; set; } // Link transaction to a user
        public decimal Debit { get; set; } // Cash out
        public decimal Credit { get; set; } // Cash in
        public DateTime Date { get; set; }
        public string Description { get; set; }

        public string Category { get; set; } // Category for outflows or inflows
        public string Type { get; set; } // e.g., "Inflow", "Outflow", "Debt"
        public string Tags { get; set; } // e.g., "Income", "Housing"
        public string Notes { get; set; }
    }
}
