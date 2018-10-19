using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace redwoodforest.Controllers
{
    [Route("api/posts")]
    [ApiController]
    public class PostController : ControllerBase
    {
        private ApiContext _context;
        public PostController(ApiContext context)
        {
            _context = context;
        }
        // GET api/values
        [HttpGet]
        public IActionResult GetAction()
        {
            if (_context.Post.ToList().Count == 0)
            {
                return NotFound();
            }
            return Ok(_context.Post);
        }
        [HttpGet("{id}")]
        public IActionResult GetById(int? id)
        {
            var response = _context.Post.Find(id);
            if (id == null)
            {
                return NotFound();
            }
            return Ok(_context.Post.Find(id));
        }
        [HttpPost]
        public IActionResult Post([FromBody]Post post)
        {
            _context.Post.Add(post);
            _context.SaveChanges();
            return Ok(_context.Post.ToList());
        }
        [HttpPut("{id}")]
        public IActionResult Update(int id, [FromBody]Post post)
        {
            if (post == null)
            {
                return NotFound();
            }
            Post p = _context.Post.Find(id);
            p.post = post.post;
            _context.Post.Update(p);
            _context.SaveChanges();
            return Ok(p);
        }
        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            Post post = _context.Post.Find(id);
            _context.Post.Remove(post);
            _context.SaveChanges();
            return Ok(post);
        }
    }
}
