using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using TravelBlog.ViewModels;
using TravelBlog.Models;
using Microsoft.AspNetCore.Identity;

// For more information on enabling MVC for empty projects, visit http://go.microsoft.com/fwlink/?LinkID=397860

namespace TravelBlog.Controllers
{
    public class AjaxController : Controller
    {
        private TravelBlogContext db = new TravelBlogContext();
        private readonly TravelBlogContext _db;
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly SignInManager<ApplicationUser> _signInManager;

        public AjaxController(UserManager<ApplicationUser> userManager, SignInManager<ApplicationUser> signInManager, TravelBlogContext db)
        {
            _userManager = userManager;
            _signInManager = signInManager;
            _db = db;
        }
        // GET: /<controller>/
        [Route("/Ajax/Index")]
        public IActionResult Index()
        {
            return View();
        }


        [Route("/Ajax/SayHi")]
        public IActionResult SayHi()
        {
            return Content("HIHIHIHIHIHIHIHIHIHIHIHIHI", "text/plain");
        }

        //Registration 
        [Route("/Ajax/Registration")]
        public IActionResult Registration()
        {
            return View();
        }

        [Route("/Ajax/Register")]
        [HttpPost]
        public async Task<IActionResult> Register(string Email, string Password)
        {
            ApplicationUser user = new ApplicationUser { Email = Email, UserName = Email };
            IdentityResult result = await _userManager.CreateAsync(user, Password);
            if (result.Succeeded)
            {
                return Json(user);
            }
            else
            {
                return View();
            }
        }
        //end registration

        //Log In
        [Route("/Ajax/LoginForm")]
        public IActionResult LogInForm()
        {
            return View();
        }
        [Route("/Ajax/Login")]
        [HttpPost]
        public async Task<IActionResult> Login(string Email, string Password)
        {
            //LoginViewModel model = new LoginViewModel { Email = Email, Password = Password };
            Microsoft.AspNetCore.Identity.SignInResult result = await _signInManager.PasswordSignInAsync(Email, Password, isPersistent: true, lockoutOnFailure: false);
            if (result.Succeeded)
            { 
                return Json(result);
            }
            else
            {
                return View();
            }
        }
        //end of log in
        
    }
}
