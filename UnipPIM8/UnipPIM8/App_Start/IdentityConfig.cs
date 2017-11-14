using System;
using System.Security.Claims;
using System.Threading.Tasks;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin;
using Microsoft.Owin.Security;

namespace UnipPIM8
{
    public class EmailService : IIdentityMessageService
    {
        public Task SendAsync(IdentityMessage message)
        {
            // Conecte o seu serviço de email aqui para enviar um email.
            return Task.FromResult(0);
        }
    }


    // Configure o gerenciador de usuários do aplicativo usado nesse aplicativo. O UserManager está definido no ASP.NET Identity e é usado pelo aplicativo.
}
