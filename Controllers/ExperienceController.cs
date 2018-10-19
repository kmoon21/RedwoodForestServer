using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace redwoodforest.Controllers
{
    [Route("api/experiences")]
    [ApiController]
    public class ExperienceController : ControllerBase
    {
        private ApiContext _context;
        public ExperienceController(ApiContext context)
        {
            _context = context;
        }
        // GET api/values
        [HttpGet]
        public ActionResult<IEnumerable<string>> Get()
        {
            if (_context.Experience.ToList().Count == 0)
            {
                return NotFound();
            }
            return Ok(_context.Experience
            .ToList());
        }
        [HttpGet("{id}")]
        public IActionResult GetById(int id)
        {
            var response = _context.Experience.Find(id);
            if (response == null)
            {
                return NotFound();
            }
            return Ok(_context.Experience.Find(id));
        }
        [HttpPost]
        public IActionResult Post([FromBody]Experience experience)
        {
            _context.Experience.Add(experience);
            _context.SaveChanges();
            return Ok(_context.Experience.ToList());
        }
        [HttpPut("{id}")]
        public IActionResult Update(int id, [FromBody]Experience experience)
        {
            if (experience == null)
            {
                return NotFound();
            }
            Experience e = _context.Experience.Find(id);
            if (experience.title != null)
            {
                e.title = experience.title;
            };
            if (experience.company != null)
            {
                e.company = experience.company;
            }
            if (experience.duration != null)
            {
                e.duration = experience.duration;
            }
            if (experience.location != null)
            {
                e.location = experience.location;
            }
            if (experience.description != null)
            {
                e.description = experience.description;
            }
            _context.Experience.Update(e);
            _context.SaveChanges();
            return Ok(_context.Experience.ToList());
        }
        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            Experience experience = _context.Experience.Find(id);
            if (experience == null)
            {
                return NotFound();
            }
            _context.Experience.Remove(experience);
            _context.SaveChanges();
            return Ok(experience);
        }
    }
}
