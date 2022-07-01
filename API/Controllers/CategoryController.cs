using DAL.Models;
using Gallery.BLL.Repositories;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Linq;

namespace API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CategoryController : ControllerBase
    {
        GenericRepository<Categories> categoryRepository = new GenericRepository<Categories>(new MetropolDenemeContext());
        GenericRepository<Photos> photoRepository = new GenericRepository<Photos>(new MetropolDenemeContext());

        [HttpGet]
        public List<Categories> GetCategories()             //Kategorileri getirir.
        {
            return categoryRepository.GetAll().ToList();
        }
        [HttpGet("{id}")]
        public IActionResult GetByCategory(int id)    //Kategoriye göre fotoğraflar gelir.
        {
            var photos= photoRepository.GetAll().Where(c => c.CategoryId == id).ToArray();
            if (photos.Count()!=0)
            {
                return Ok(photos);
            }
            else
            {
                return NotFound();
            }
            
        }
    }
}
