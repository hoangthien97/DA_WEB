using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(NoodStore.Startup))]
namespace NoodStore
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
