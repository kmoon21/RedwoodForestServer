using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace redwoodforest.Controllers
{
    [Route("api/graddate")]
    [ApiController]
    public class GradDateController : ControllerBase
    {
        private ApiContext _context;
        public GradDateController(ApiContext context)
        {
            _context = context;
        }
        // GET api/values
        [HttpGet]
        public IActionResult GetAction()
        {
            if (_context.GradDate.ToList().Count == 0)
            {
                return NotFound();
            }
            return Ok(_context.GradDate);
        }     
    }
}
