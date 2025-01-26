using System;
using System.ComponentModel.DataAnnotations;

namespace TrackerBuddy.Models
{
    public class Debt
    {
        public int Id { get; set; } // Unique identifier for the debt
        [Required]
        public int UserId { get; set; } // ID of the user associated with this debt
        [Required]
        public string Source { get; set; } // Source of the debt (e.g., bank, credit card)
        [Required]
        [Range(0, double.MaxValue, ErrorMessage = "Amount must be positive.")]
        public decimal Amount { get; set; } // Total amount of the debt
        [Range(0, double.MaxValue, ErrorMessage = "Paid amount must be positive.")]
        public decimal PaidAmount { get; set; } // Amount already paid
        [Required]
        public DateTime DueDate { get; set; } // Due date for the debt
        [Required]
        public string Status { get; set; } = "Pending"; // Status of the debt (e.g., Pending, Cleared)
        public string Description { get; set; } // Additional description or notes

        // Calculated property for remaining amount
        public decimal RemainingAmount => Amount - PaidAmount;
    }
}
