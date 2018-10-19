using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace redwoodforest
{
    public class Profile
    {
        [Key]
        public int profile_id { get; set; }
         public string image { get; set; }
        public string first_name { get; set; }
        public string last_name { get; set; }
        public string email { get; set; }
        public string password { get; set; }
        public string location { get; set; }
        public int gender_id { get; set; }
 
        [ForeignKey("gender_id")]
        public Gender gender {get; set; }

        public int grad_date_id { get; set; }

        [ForeignKey("grad_date_id")]
        public GradDate date { get; set; }

        public int experience_id { get; set; }
        [ForeignKey("experience_id")]
        
        public Experience experience { get; set; }

        public string current_job { get; set; }
        public string education { get; set; }
        public string skills { get; set; }
        public string projects { get; set; }
    }
}