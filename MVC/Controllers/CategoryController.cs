using DAL.Models;
using Microsoft.AspNetCore.Mvc;
using MVC.Helpers;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;

namespace MVC.Controllers
{
    public class CategoryController : Controller
    {
        Api _api = new Api();
        public async Task<IActionResult> Index(int id)      //CategoryId'si id ile eşleşen fotoğrafları getirir.
        {
            List<Photos> _photos = new List<Photos>();
            List<Categories> categories = new List<Categories>();
            HttpClient client = _api.Initial();
            HttpResponseMessage res = await client.GetAsync("api/category/"+id.ToString());
            HttpResponseMessage res2 = await client.GetAsync("api/category");
            if (res.IsSuccessStatusCode)
            {
                var result = res.Content.ReadAsStringAsync().Result;
                _photos = JsonConvert.DeserializeObject<List<Photos>>(result);
                var result2 = res2.Content.ReadAsStringAsync().Result;
                categories = JsonConvert.DeserializeObject<List<Categories>>(result2);
                foreach (var item in categories)
                {
                    if (item.Id == id)
                    {
                        ViewBag.Category = item.Name;   //Kategori Adı.
                        break;
                    }
                } 
            }
            else if(res.StatusCode == System.Net.HttpStatusCode.NotFound)
            {
                return RedirectToAction("Error", "Home");
            }
            return View(_photos);
        }
    }
}
