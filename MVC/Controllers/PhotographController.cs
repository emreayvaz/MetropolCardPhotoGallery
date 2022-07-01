using DAL.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using MVC.Helpers;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using System.Text;

namespace MVC.Controllers
{
    public class PhotographController : Controller
    {
        Api _api = new Api();
        public async Task<IActionResult> Index(int id)      //Id'si eşleşen fotoğrafı getirir.
        {
            Photos _photo = new Photos();
            List<Categories> categories = new List<Categories>();
            HttpClient client = _api.Initial();
            HttpResponseMessage res = await client.GetAsync("api/photograph/" + id.ToString());
            HttpResponseMessage res2 = await client.GetAsync("api/category");
            if (res.IsSuccessStatusCode)
            {
                var result2 = res2.Content.ReadAsStringAsync().Result;
                categories = JsonConvert.DeserializeObject<List<Categories>>(result2);
                var result = res.Content.ReadAsStringAsync().Result;
                _photo = JsonConvert.DeserializeObject<Photos>(result);
            }
            foreach (var item in categories)
            {
                if (item.Id==_photo.CategoryId)
                {
                    ViewBag.Category = item.Name;
                    break;
                }
            }
            return View(_photo);
        }

        [HttpGet]
        public async Task<IActionResult> UploadPhoto()
        {
            List<SelectListItem> categoriesSelectList = new List<SelectListItem>();
            List<Categories> categories = new List<Categories>();
            HttpClient client = _api.Initial();
            HttpResponseMessage res = await client.GetAsync("api/category");
            if (res.IsSuccessStatusCode)
            {
                var result = res.Content.ReadAsStringAsync().Result;
                categories = JsonConvert.DeserializeObject<List<Categories>>(result);
            }
            foreach (var item in categories)
            {
                categoriesSelectList.Add(new SelectListItem { Text = item.Name, Value = item.Id.ToString()});
            }
            ViewBag.Categories = categoriesSelectList;
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> UploadPhoto(Photos photo)
        {
            HttpClient client = _api.Initial();
            var _photo = JsonConvert.SerializeObject(photo);
            var requestContent = new StringContent(_photo, Encoding.UTF8, "application/json");
            var response = await client.PostAsync("api/photograph", requestContent);
            //response.EnsureSuccessStatusCode();
            var content = await response.Content.ReadAsStringAsync();
            if (response.EnsureSuccessStatusCode().StatusCode==System.Net.HttpStatusCode.OK)
            {
                return RedirectToAction("Index", "Home");
            }
            else
            {
                return RedirectToAction("Error","Home");
            }     
        }
    }
}
