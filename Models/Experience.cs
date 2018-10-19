using System;
using System.ComponentModel.DataAnnotations;

namespace redwoodforest
{
    public class Experience
    {
        [Key]
        public int experience_id { get; set; }
        public string title { get; set; }
        public string company { get; set; }
        public DateTime duration { get; set; }
        public string location { get; set; }
        public string description { get; set; }
    }
}