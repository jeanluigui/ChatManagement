namespace xChatEntities
{
    public class ObjectRequest<TRequest>
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
        public TRequest SenderObject { get; set; }

    }
}
