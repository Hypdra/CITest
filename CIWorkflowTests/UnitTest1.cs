using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using CIWorkflow.Controllers;

namespace CIWorkflowTests
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestMethod1()
        {
            var controller = new ValuesController();
            Assert.AreEqual(controller.Get(1), "value");
        }
    }
}
