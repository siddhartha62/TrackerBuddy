using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Text.Json;
using TrackerBuddy.Models;


public class UserService
{
    private static readonly string DesktopPath = Environment.GetFolderPath(Environment.SpecialFolder.Desktop);
    private static readonly string FolderPath = Path.Combine(DesktopPath, "LocalDB");
    private static readonly string FilePath = Path.Combine(FolderPath, "users.json");


    // Load user data from the JSON file
    public AppData LoadUsers()
    {
        if (!File.Exists(FilePath))
            return new AppData();

        try
        {
            var json = File.ReadAllText(FilePath);
            return JsonSerializer.Deserialize<AppData>(json) ?? new AppData();
        }
        catch (JsonException ex)
        {
            Console.WriteLine($"Error deserializing JSON: {ex.Message}");
            return new AppData();
        }
    }

    // Save user data to the JSON file
    public void SaveUsers(AppData data)
    {
        if (!Directory.Exists(FolderPath))
        {
            Directory.CreateDirectory(FolderPath);
        }

        var json = JsonSerializer.Serialize(data, new JsonSerializerOptions { WriteIndented = true });
        File.WriteAllText(FilePath, json);
    }

    // Hash a password using SHA256
    public string HashPassword(string password)
    {
        using var sha256 = SHA256.Create();
        var bytes = Encoding.UTF8.GetBytes(password);
        var hash = sha256.ComputeHash(bytes);
        return Convert.ToBase64String(hash);
    }

    // Validate a password by comparing the hashed input with the stored hash
    public bool ValidatePassword(string inputPassword, string storedPassword)
    {
        var hashedInputPassword = HashPassword(inputPassword);
        return hashedInputPassword == storedPassword;
    }

    // Calculate the main balance for a user
    public decimal CalculateBalance(int userId, AppData data)
    {
        var userTransactions = data.Transactions.Where(t => t.UserId == userId).ToList();
        decimal totalCredit = userTransactions.Sum(t => t.Credit);
        decimal totalDebit = userTransactions.Sum(t => t.Debit);
        return totalCredit - totalDebit;
    }

    // Calculate debt clearing and remaining amounts for a user
    public (decimal Cleared, decimal Remaining) CalculateDebt(int userId, AppData data)
    {
        var userDebts = data.Debts.Where(d => d.UserId == userId).ToList();
        decimal totalDebt = userDebts.Sum(d => d.Amount);
        decimal totalPaid = userDebts.Sum(d => d.PaidAmount);
        return (totalPaid, totalDebt - totalPaid);
    }

    // Check if a username is already in use
    public bool IsUsernameTaken(string username, AppData data)
    {
        return data.Users.Any(u => u.Username.Equals(username, StringComparison.OrdinalIgnoreCase));
    }

    // Create a new user
    public void CreateUser(string username, string password, string email, AppData data)
    {
        if (IsUsernameTaken(username, data))
        {
            throw new InvalidOperationException("Username already exists.");
        }

        var newUser = new User
        {
            Username = username,
            Password = HashPassword(password),
            Email = email
        };

        data.Users.Add(newUser);
        SaveUsers(data);
    }

    // Update user information
    public void UpdateUser(User updatedUser, AppData data)
    {
        var user = data.Users.FirstOrDefault(u => u.Id == updatedUser.Id);
        if (user != null)
        {
            user.Username = updatedUser.Username;
            user.Email = updatedUser.Email;
            SaveUsers(data);
        }
    }

    // Delete a user by ID
    public void DeleteUser(int userId, AppData data)
    {
        var user = data.Users.FirstOrDefault(u => u.Id == userId);
        if (user != null)
        {
            data.Users.Remove(user);
            SaveUsers(data);
        }
    }
}
