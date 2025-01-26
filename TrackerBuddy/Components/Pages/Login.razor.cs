using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TrackerBuddy.Models;
using Microsoft.AspNetCore.Components;

namespace TrackerBuddy.Components.Pages
{
    public partial class Login : ComponentBase
    {
        private string LoginUsername = "";
        private string LoginPassword = "";
        private string Message = "";
        private AppData data;

        // private List<User> Users = new();

        protected override void OnInitialized()
        {
            data = UserService.LoadUsers();
        }

        private void LoginPage()
        {
            var user = data.Users.FirstOrDefault(u => u.Username == LoginUsername);

            if (user != null && UserService.ValidatePassword(LoginPassword, user.Password))
            {
                UserService.SetCurrentUser(user); // Set the logged-in user
                // Redirect to dashboard if login is successful
                NavigationManager.NavigateTo("/dashboard");
            }
            else
            {
                Message = "Invalid username or password.";
            }
        }
    }
}
