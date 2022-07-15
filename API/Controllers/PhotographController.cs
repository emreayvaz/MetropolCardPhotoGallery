using DAL.Models;
using Gallery.BLL.Repositories;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Linq;

namespace API.Controllers
{
    [ApiController]
    [Route("api/[controller]/")]
    public class PhotographController : ControllerBase
    {
        GenericRepository<Photos> photoRepository = new GenericRepository<Photos>(new MetropolDenemeContext());

        [HttpGet]
        public List<Photos> Get()   //Fotoğrafların hepsi gelir.
        {
            return photoRepository.GetAll().ToList();
        }
        [HttpGet("{id}")]
        public Photos GetPhoto(int id)  //Id değeri eşleşen fotoğraf gelir.
        {
            Photos photo = photoRepository.GetById(id);
            photo.ViewNumber += 1;
            photoRepository.Edit(photo);
            return photoRepository.GetById(id);
        }
        [HttpGet]
        [Route("GetByCategory")]
        public IActionResult GetByCategory([FromQuery] int id)    //Kategoriye göre fotoğraflar gelir.
        {
            var photos = photoRepository.GetAll().Where(c => c.CategoryId == id).ToArray();
            if (photos.Count() != 0)
            {
                return Ok(photos);
            }
            else
            {
                return NotFound();
            }

        }
        [HttpPost]
        public void UploadPhoto(Photos photo)
        {
            photo.Status = true;
            photo.ViewNumber = 0;
            photoRepository.Insert(photo);
        }
    }
}
