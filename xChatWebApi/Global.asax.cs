using System.Web.Http;
using SimpleInjector;
using SimpleInjector.Lifestyles;
using SimpleInjector.Integration.WebApi;
using xChatBusiness;
using xChatDAO;

namespace xChatWebApi
{
    /// <summary>
    /// 
    /// </summary>
    public class WebApiApplication : System.Web.HttpApplication
    {
        /// <summary>
        /// Configuraciones de Inicio.
        /// </summary>
        protected void Application_Start()
        {
            // -----------------------------------------------------
            // Configurar Injección de Dependencia (IoC).
            // -----------------------------------------------------
            var container = new Container();
            container.Options.DefaultScopedLifestyle = new AsyncScopedLifestyle();

            // Registro de Instancias y su alcance.
            container.Register<IServiceSkillAgentBL, ServiceSkillAgentBL>(Lifestyle.Singleton);
            container.Register<IServiceSkillAgentDAO, ServiceSkillAgentDAO>(Lifestyle.Singleton);
            container.Register<IServiceChatManagerBL, ServiceChatManagerBL>(Lifestyle.Singleton);
            container.Register<IServiceChatManagerDAO, ServiceChatManagerDAO>(Lifestyle.Singleton);
            container.Register<IServiceMasterEntityBL, ServiceMasterEntityBL>(Lifestyle.Scoped);
            container.Register<IServiceMasterEntityDAO, ServiceMasterEntityDAO>(Lifestyle.Scoped);
            container.Register<IServiceFaqBL, ServiceFaqBL>(Lifestyle.Scoped);
            container.Register<IServiceFaqDAO, ServiceFaqDAO>(Lifestyle.Scoped);

            container.Register<IServiceUserBL, ServiceUserBL>(Lifestyle.Singleton);
            container.Register<IServiceUserDAO, ServiceUserDAO>(Lifestyle.Singleton);

            container.Register<IServiceUserAccountGroupBL, ServiceUserAccountGroupBL>(Lifestyle.Singleton);
            container.Register<IServiceUserAccountGroupDAO, ServiceUserAccountGroupDAO>(Lifestyle.Singleton);

            // Es una extensión del método para integración con el paquete.
            container.RegisterWebApiControllers(GlobalConfiguration.Configuration);

            container.Verify();

            GlobalConfiguration.Configuration.DependencyResolver =
                new SimpleInjectorWebApiDependencyResolver(container);

            GlobalConfiguration.Configure(WebApiConfig.Register);
        }
    }
}
