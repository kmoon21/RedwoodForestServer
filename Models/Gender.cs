using System;
using System.ComponentModel.DataAnnotations;

namespace redwoodforest
{
    public class Gender
    {
        [Key]
        public int gender_id { get; set; }
        public string gender { get; set; }
    }
}