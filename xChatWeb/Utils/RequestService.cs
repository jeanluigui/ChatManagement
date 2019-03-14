using Newtonsoft.Json;
using System;
using System.IO;
using System.Net;
using xChatEntities;

namespace xChatWeb.Utils
{
    /// <summary>
    /// 
    /// </summary>
    public class RequestService
    {
        /// <summary>
        /// 
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="url"></param>
        /// <param name="metodo"></param>
        /// <param name="objectRequest"></param>
        /// <returns></returns>
        public ObjectResult Execute<T>(string url, string metodo, T objectRequest)
        {
            ObjectResult objectResult = new ObjectResult();
            objectResult.Id = 0;

            string result = string.Empty;

            try
            {
                string json = JsonConvert.SerializeObject(objectRequest);

                WebRequest request = WebRequest.Create(url);

                request.Method = metodo;
                request.PreAuthenticate = true;
                request.ContentType = "application/json;charset=utf-8";
                request.Timeout = 15000;

                using (var oStreamWriter = new StreamWriter(request.GetRequestStream()))
                {
                    oStreamWriter.Write(json);
                    oStreamWriter.Flush();
                }

                var oHttpResponse = (HttpWebResponse)request.GetResponse();

                using (var oStreamReader = new StreamReader(oHttpResponse.GetResponseStream()))
                {
                    result = oStreamReader.ReadToEnd();
                }

                objectResult = JsonConvert.DeserializeObject<ObjectResult>(result);
            }
            catch (TimeoutException te)
            {
                objectResult.Id = 2;
                objectResult.Message = $"tiempo expirado: {te.Message}";
            }
            catch (Exception ex)
            {
                objectResult.Id = 2;
                objectResult.Message = ex.Message;
            }

            return objectResult;
        }
    }
}