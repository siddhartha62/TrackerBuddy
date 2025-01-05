using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TrackerBuddy.Models;
using Microsoft.AspNetCore.Components;

namespace TrackerBuddy.Components.Pages
{
    public partial class Dashboard : ComponentBase
    {

        private AppData Data = new AppData();
        private decimal NetTotal;
        private decimal TotalDebt;
        private decimal RemainingDebt;
        private List<Debt> PendingDebts;
        private List<Transaction> FilteredTransactions = new List<Transaction>();
        private DateTime StartDate = DateTime.Today.AddMonths(-1); // Default to last month
        private DateTime EndDate = DateTime.Today; // Default to today

        private string UserName = "Guest"; // Default name
        private decimal TotalOutflows;
        private decimal TotalInflows; // Property to store the total inflows
        private decimal NetBalance;
        private AppData data = new AppData(); // Ensure data is initialized
        private Transaction newTransaction = new Transaction();
        private int TotalTransactions; // Total number of transactions
        private decimal HighestTransaction; // Highest transaction amount
        private decimal LowestTransaction; // Lowest transaction amount
        private decimal AverageTransaction; // Average transaction amount
        protected override void OnInitialized()
        {




            data = UserService.LoadUsers(); // Load data into data

            var user = UserService.LoadUsers(); // Fetch user data



            Data = UserService.LoadUsers();
            TotalTransactions = Data.Transactions.Count;
            NetTotal = Data.Transactions.Sum(t => t.Credit) - Data.Transactions.Sum(t => t.Debit);
            TotalDebt = Data.Debts.Sum(d => d.Amount);
            RemainingDebt = Data.Debts.Sum(d => d.RemainingAmount);
            PendingDebts = Data.Debts.Where(d => d.Status == "Pending").ToList();


            if (user != null && user.Users.Count > 0)
            {
                // Replace with actual logic to fetch the current user's name
                UserName = user.Users.FirstOrDefault()?.Username ?? "Guest";
            }

            // Calculate Total Outflows
            if (data.Transactions != null && data.Transactions.Count > 0)
            {
                TotalOutflows = data.Transactions
                    .Where(t => t.Debit > 0 && t.Date.Date <= DateTime.Today) // Only Debit transactions up to today
                    .Sum(t => t.Debit); // Sum of all Debit transactions
            }

            // Calculate Total Inflows
            if (data.Transactions != null && data.Transactions.Count > 0)
            {
                TotalInflows = data.Transactions
                    .Where(t => t.Credit > 0) // Only Credit transactions
                    .Sum(t => t.Credit); // Sum of Credit amounts
            }

            // Calculate Net Balance
            if (data.Transactions != null && data.Transactions.Count > 0)
            {
                NetBalance = data.Transactions.Sum(t => t.Credit) - data.Transactions.Sum(t => t.Debit);
            }

            if (data.Transactions != null && data.Transactions.Count > 0)
            {
                // Calculate Transaction Overview
                TotalTransactions = data.Transactions.Count;

                HighestTransaction = data.Transactions
                    .Max(t => t.Credit > 0 ? t.Credit : t.Debit); // Max of Credit or Debit

                LowestTransaction = data.Transactions
                    .Min(t => t.Credit > 0 ? t.Credit : t.Debit); // Min of Credit or Debit

                AverageTransaction = data.Transactions
                    .Select(t => t.Credit > 0 ? t.Credit : t.Debit) // Select Credit or Debit
                    .Average(); // Calculate average
            }

            ApplyDateFilter(); // Initial filtering

        }

        private void HandleTransactionSubmit()
        {
            if (data.Transactions == null)
            {
                data.Transactions = new List<Transaction>(); // Ensure Transactions list is initialized
            }

            // Assign new transaction properties
            newTransaction.Id = data.Transactions.Count + 1;
            newTransaction.Date = DateTime.Now;

            // Add new transaction to the list
            data.Transactions.Add(newTransaction);

            // Save updated data
            UserService.SaveUsers(data);

            // Reset form
            newTransaction = new Transaction();

            ApplyDateFilter(); // Initial filtering
        }

        private void ApplyDateFilter()
        {
            // Filter transactions based on the selected date range
            FilteredTransactions = data.Transactions
                .Where(t => t.Date.Date >= StartDate.Date && t.Date.Date <= EndDate.Date)
                .ToList();

            // Update stats
            TotalInflows = FilteredTransactions.Where(t => t.Credit > 0).Sum(t => t.Credit);
            TotalOutflows = FilteredTransactions.Where(t => t.Debit > 0).Sum(t => t.Debit);
            NetBalance = TotalInflows - TotalOutflows;
        }

        private void Logout()
        {
            NavigationManager.NavigateTo("/");  // Redirect to login page
        }
    }
}