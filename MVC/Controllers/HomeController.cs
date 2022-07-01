using DAL.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using MVC.Helpers;
using MVC.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace MVC.Controllers
{
    public class HomeController : Controller
    {
        List<Photos> _photos = new List<Photos>();
        Api _api = new Api();
        public async Task<IActionResult> Index()        //Tüm fotoğrafları getirir.
        {
            HttpClient client = _api.Initial();
            HttpResponseMessage res = await client.GetAsync("api/photograph");
            if (res.IsSuccessStatusCode)
            {
                var result = res.Content.ReadAsStringAsync().Result;
                _photos = JsonConvert.DeserializeObject<List<Photos>>(result);
            }
            return View(_photos.OrderByDescending(p => p.ViewNumber).ToList());
        }

        public IActionResult Error()
        {
            return View();
        }
    }
}
