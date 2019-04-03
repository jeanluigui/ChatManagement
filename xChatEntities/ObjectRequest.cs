namespace xChatEntities
{
    public class ObjectRequest
    {
        /// <summary>
        /// Código de seguridad
        /// </summary>
        public string TokenAccess { get; set; }

        /// <summary>
        /// Soporta cualquier valor adicional.
        /// </summary>
        public string Tag { get; set; }

        /// <summary>
        /// Entidad Genérica
        /// </summary>
        public object SenderObject { get; set; }

    }
}
