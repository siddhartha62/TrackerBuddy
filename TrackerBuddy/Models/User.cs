using System;
using System.ComponentModel.DataAnnotations;

namespace TrackerBuddy.Models
{
    public class User
    {
        [Required]
        public int Id { get; set; } // Unique identifier for the user

        [Required]
        [StringLength(100)]
        public string Username { get; set; } // Username of the user

        [Required]
        [StringLength(255)]
        public string Password { get; set; } // Hashed password

        [Required]
        [EmailAddress]
        [StringLength(100)]
        public string Email { get; set; } // Email address

        [Phone]
        public string Phone { get; set; } // Contact number (optional)

        [StringLength(255)]
        public string Address { get; set; } // Address (optional)

        public DateTime CreatedOn { get; set; } = DateTime.Now; // Date the user was added
    }
}
