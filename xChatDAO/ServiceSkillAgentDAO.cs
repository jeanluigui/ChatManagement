using System.Data;
using xChatEntities;
using xss.ConnectionManager;

namespace xChatDAO
{
    /// <summary>
    /// Clase DAO que gestiona la información con la DB.
    /// </summary>
    public class ServiceSkillAgentDAO : IServiceSkillAgentDAO
    {
        /// <summary>
        /// Devuelve lista de agentes con sus habilidades por Modulo y Lenguaje.
        /// </summary>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        public ObjectResultList<SkillAgent> GetListSkillByAgent(ObjectRequest<SkillAgentFilter> objectRequest)
        {
            ObjectResultList<SkillAgent> listUserConnect = new ObjectResultList<SkillAgent>();

            ListParameters parameters = new ListParameters();
            parameters.Add("@p_perspectiveid", objectRequest.SenderObject.PerspectiveId);
            parameters.Add("@p_agentid", objectRequest.SenderObject.AgentId);
            parameters.Add("@p_moduleid", objectRequest.SenderObject.ModuleId);
            parameters.Add("@p_languageid", objectRequest.SenderObject.LanguageId);
            parameters.Add("@p_skillLevelModule", objectRequest.SenderObject.SkillLevelModule);
            parameters.Add("@p_skillLevelLanguage", objectRequest.SenderObject.SkillLevelLanguage);

            CommandParameter queryCommand = new CommandParameter("chat.ChatReportSkill_GetByPerspective_pa", parameters);
            DataTable dtresult = DbManager.Instance.ExecuteTable(queryCommand);

            listUserConnect = new ObjectResultList<SkillAgent>(dtresult);

            return listUserConnect;
        }

        /// <summary>
        /// Método para crear una  habilidad de Agebnte por Módulo.
        /// </summary>
        /// <param name="objectRequest"></param>
        public void CreateSkillModule(ObjectRequest<SkillAgentModule> objectRequest)
        {
            ListParameters parameters = new ListParameters();
            parameters.Add("@p_agentid", objectRequest.SenderObject.AgentId);
            parameters.Add("@p_moduleid", objectRequest.SenderObject.ModuleId);
            parameters.Add("@p_skilllevel", objectRequest.SenderObject.SkillLevel);
            parameters.Add("@p_prioritylevel", objectRequest.SenderObject.PriorityLevel);
            parameters.Add("@p_createdby", objectRequest.SenderObject.CreateBy);

            CommandParameter queryCommand = new CommandParameter("chat.AgentSkillModule_Insert_pa", parameters);

            DbManager.Instance.ExecuteCommand(queryCommand);
        }

        /// <summary>
        /// Método para crear una  habilidad de Agebnte por Lenguaje.
        /// </summary>
        /// <param name="objectRequest"></param>
        public void CreateSkillLanguage(ObjectRequest<SkillAgentLanguage> objectRequest)
        {
            ListParameters parameters = new ListParameters();
            parameters.Add("@p_agentid", objectRequest.SenderObject.AgentId);
            parameters.Add("@p_languageid", objectRequest.SenderObject.LanguageId);
            parameters.Add("@p_skilllevel", objectRequest.SenderObject.SkillLevel);
            parameters.Add("@p_prioritylevel", objectRequest.SenderObject.PriorityLevel);
            parameters.Add("@p_createdby", objectRequest.SenderObject.CreateBy);

            CommandParameter queryCommand = new CommandParameter("chat.AgentSkillLanguage_Insert_pa", parameters);

            DbManager.Instance.ExecuteCommand(queryCommand);
        }

        /// <summary>
        /// Método para actualizar una habilidad por Módulo.
        /// </summary>
        /// <param name="objectRequest"></param>
        public void UpdateSkillModule(ObjectRequest<SkillAgentModule> objectRequest)
        {
            ListParameters parameters = new ListParameters();
            parameters.Add("@p_agentid", objectRequest.SenderObject.AgentId);
            parameters.Add("@p_moduleid", objectRequest.SenderObject.ModuleId);
            parameters.Add("@p_skilllevel", objectRequest.SenderObject.SkillLevel);
            parameters.Add("@p_prioritylevel", objectRequest.SenderObject.PriorityLevel);
            parameters.Add("@p_createdby", objectRequest.SenderObject.CreateBy);

            CommandParameter queryCommand = new CommandParameter("chat.AgentSkillModule_Update_pa", parameters);

            DbManager.Instance.ExecuteCommand(queryCommand);
        }

        /// <summary>
        /// Método para actualizar una Habilidad por Módulo.
        /// </summary>
        /// <param name="objectRequest"></param>
        public void UpdateSkillLanguage(ObjectRequest<SkillAgentLanguage> objectRequest)
        {
            ListParameters parameters = new ListParameters();
            parameters.Add("@p_agentid", objectRequest.SenderObject.AgentId);
            parameters.Add("@p_languageid", objectRequest.SenderObject.LanguageId);
            parameters.Add("@p_skilllevel", objectRequest.SenderObject.SkillLevel);
            parameters.Add("@p_prioritylevel", objectRequest.SenderObject.PriorityLevel);
            parameters.Add("@p_createdby", objectRequest.SenderObject.CreateBy);

            CommandParameter queryCommand = new CommandParameter("chat.AgentSkillLanguage_Update_pa", parameters);

            DbManager.Instance.ExecuteCommand(queryCommand);
        }

        /// <summary>
        /// Método para activar/desactivar habilidad por Modulo.
        /// </summary>
        /// <param name="objectRequest"></param>
        public void ChangeStateSkillModule(ObjectRequest<SkillAgentModule> objectRequest)
        {
            ListParameters parameters = new ListParameters();
            parameters.Add("@p_agentid", objectRequest.SenderObject.AgentId);
            parameters.Add("@p_moduleid", objectRequest.SenderObject.ModuleId);
            parameters.Add("@p_statusid", objectRequest.SenderObject.StatusId);
            parameters.Add("@p_createdby", objectRequest.SenderObject.CreateBy);

            CommandParameter queryCommand = new CommandParameter("chat.AgentSkill_ChangeStatusModule_pa", parameters);

            DbManager.Instance.ExecuteCommand(queryCommand);
        }

        /// <summary>
        /// Método para activar/desactivar habilidad por Lenguaje.
        /// </summary>
        /// <param name="objectRequest"></param>
        public void ChangeStateSkillLanguage(ObjectRequest<SkillAgentLanguage> objectRequest)
        {
            ListParameters parameters = new ListParameters();
            parameters.Add("@p_agentid", objectRequest.SenderObject.AgentId);
            parameters.Add("@p_languageid", objectRequest.SenderObject.LanguageId);
            parameters.Add("@p_statusid", objectRequest.SenderObject.StatusId);
            parameters.Add("@p_createdby", objectRequest.SenderObject.CreateBy);

            CommandParameter queryCommand = new CommandParameter("chat.AgentSkill_ChangeStatusLanguage_pa", parameters);

            DbManager.Instance.ExecuteCommand(queryCommand);
        }
    }
}
