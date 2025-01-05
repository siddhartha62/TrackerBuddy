using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Components;
using TrackerBuddy.Models;
namespace TrackerBuddy.Components.Pages
{
    public partial class Register : ComponentBase
    {
        private string RegisterUsername = "";
        private string RegisterPassword = "";
        private string ConfirmPassword = "";
        private string RegisterEmail = "";
        private string PreferredCurrency = "";
        private string Message = "";
        private AppData data;

        protected override void OnInitialized()
        {
            data = UserService.LoadUsers();
        }

        private void RegisterPage()
        {
            if (string.IsNullOrWhiteSpace(RegisterUsername) || string.IsNullOrWhiteSpace(RegisterPassword) || string.IsNullOrWhiteSpace(PreferredCurrency))
            {
                Message = "All fields are required.";
                return;
            }

            if (RegisterPassword != ConfirmPassword)
            {
                Message = "Passwords do not match.";
                return;
            }

            if (data.Users.Any(u => u.Username == RegisterUsername))
            {
                Message = "Username already exists.";
                return;
            }

            var newUser = new User
            {
                Username = RegisterUsername,
                Password = UserService.HashPassword(RegisterPassword),
                Email = RegisterEmail
            };

            data.Users.Add(newUser);
            UserService.SaveUsers(data);

            Message = "Registration successful. Redirecting to login...";
            Task.Delay(2000).ContinueWith(_ => NavigationManager.NavigateTo("/"));
        }
        private void NavigateToLogin()
        {
            NavigationManager.NavigateTo("/");
        }
    }

}
