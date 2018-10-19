using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace redwoodforest.Controllers
{
    [Route("api/profiles")]
    [ApiController]
    public class ProfileController : ControllerBase
    {
        private ApiContext _context;
        public ProfileController(ApiContext context)
        {
            _context = context;
        }
        // GET api/values
        [HttpGet]
        public ActionResult<IEnumerable<string>> Get()
        {
            if (_context.Profile.ToList().Count == 0)
            {
                return NotFound();
            }
            return Ok(_context.Profile
            .Include("gender")
            .Include("date")
            .Include("experience")
            .ToList());
        }
        [HttpGet("{id}")]
        public async Task<IActionResult> GetById(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }
            Profile item = await _context.Profile
            .Include("gender")
            .Include("date")
            .Include("experience")
            .SingleOrDefaultAsync(p => p.profile_id == id);
            if (item == null) {
                return NotFound();
            }
            return Ok(item);
        }
        [HttpPost]
        public IActionResult Register([FromBody]Profile profile)
        {
            profile.password = BCrypt.Net.BCrypt.HashPassword(profile.password);

            _context.Profile.Add(profile);
            _context.SaveChanges();
            return Ok(profile);
        }
        [HttpPut("{id}")]
        public IActionResult Update(int id, [FromBody]Profile profile)
        {
            Profile g = _context.Profile.Find(id);
            Console.WriteLine(g);
            if (profile.first_name != null)
            {
                g.first_name = profile.first_name;
            } ;
            if (profile.last_name != null)
            {
                g.last_name = profile.last_name;
            };
            if (profile.location != null)
            {
                g.location = profile.location;
            };
            if (profile.image != null)
            {
                g.image = profile.image;
            };
            if (profile.current_job != null)
            {
                g.current_job = profile.current_job;
            };
            _context.Profile.Update(g);
            _context.SaveChanges();
            return Ok(g);
        }
        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            Profile profile = _context.Profile.Find(id);
            if (profile == null)
            {
                return NotFound();
            }
            _context.Profile.Remove(profile);
            _context.SaveChanges();
            return Ok(profile);
        }
    }
}
