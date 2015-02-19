using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CodeComb.Yuuko;
using CodeComb.Yuuko.Schema;

namespace DetailPortSample.Models
{
    public class SamplePorts : PortsContext
    {
        public SamplePorts()
        {
            EnterpriseSource = new List<Enterprise>();
            EnterpriseSource.Add(new Enterprise { ID = Guid.NewGuid(), Email = "1@4321.io", Name = "Code Comb", Tel = "+86.18888888888" });
            EnterpriseSource.Add(new Enterprise { ID = Guid.NewGuid(), Email = "blablabla@bla.bla", Name = "Blablabla", Tel = "+86.18688888888" });
        }

        // Data source
        public List<Enterprise> EnterpriseSource { get; set; }

        // Ports
        [DetailPort(DetailPortFunction.Delete, DetailPortFunction.Edit, DetailPortFunction.Insert)]
        [Binding("EnterpriseSource")]
        public Enterprise EnterprisePort { get; set; }

        [CollectionPort]
        [Binding("EnterpriseSource")]
        public List<Enterprise> EnterpriseCollectionPort { get; set; }
    }
}