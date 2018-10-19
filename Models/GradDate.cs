using System;
using System.ComponentModel.DataAnnotations;

namespace redwoodforest
{
    public class GradDate
    {
        [Key]
        public int grad_date_id { get; set; }
        public DateTime date { get; set; }

        public GradDate(DateTime date) 
        {
            this.date = date;
        }
    }
}