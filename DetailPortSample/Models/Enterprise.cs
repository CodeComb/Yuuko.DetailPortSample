using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CodeComb.Yuuko.Schema;

namespace DetailPortSample.Models
{
    public class Enterprise
    {
        [SingleBy]
        [NotEditable]
        public Guid ID { get; set; }

        public string Name { get; set; }

        public string Tel { get; set; }

        public string Email { get; set; }
    }
}