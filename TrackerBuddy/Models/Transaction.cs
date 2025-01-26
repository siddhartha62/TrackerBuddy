namespace TrackerBuddy.Models
{
    public class Transaction
    {
        public int Id { get; set; }
        public int UserId { get; set; } // Link transaction to a user
        public decimal Debit { get; set; } // Cash out
        public decimal Credit { get; set; } // Cash in
        public DateTime Date { get; set; }
        public string Title { get; set; } = string.Empty; // Add Title property
        public string Description { get; set; } = string.Empty;
        public string Category { get; set; } = string.Empty;
        public string Type { get; set; } = string.Empty; // e.g., "Inflow", "Outflow", "Debt"
        public List<string> Tags { get; set; } = new();
        public string Notes { get; set; } = string.Empty;
    }
}
