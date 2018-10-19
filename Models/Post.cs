using System;
using System.ComponentModel.DataAnnotations;

namespace redwoodforest
{
    public class Post
    {
        [Key]
        public int post_id { get; set; }
        public int profile_id { get; set; }
        public string post { get; set; }
    }
}