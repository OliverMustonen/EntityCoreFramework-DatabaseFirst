using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SqlClientApp.Models
{
    internal class UserModel
    {
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string AddressLine { get; set; }
        public string ZipCode { get; set; }
        public string City { get; set; }

        public string FullName => $"{FirstName} {LastName}";
        public string FullAddress => $"{AddressLine}, {ZipCode} {City}";
    }
}
