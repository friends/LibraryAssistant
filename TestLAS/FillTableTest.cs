using NUnit.Framework;
using System;
using DT;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;

namespace TestLAS
{
    
    
    /// <summary>
    ///这是 FillTableTest 的测试类，旨在
    ///包含所有 FillTableTest 单元测试
    ///</summary>
    [TestFixture()]
    public class FillTableTest
    {


        private TestContext testContextInstance;

        /// <summary>
        ///获取或设置测试上下文，上下文提供
        ///有关当前测试运行及其功能的信息。
        ///</summary>
        public TestContext TestContext
        {
            get
            {
                return testContextInstance;
            }
            set
            {
                testContextInstance = value;
            }
        }

        


        /// <summary>
        ///FillTable 构造函数 的测试
        ///</summary>
        [Test()]
        public void FillTableConstructorTest()
        {
            FillTable fillTable = new FillTable(5,5);
            Assert.IsTrue(fillTable.RowNum==5,"Table's rowNum is wrong!");
            Assert.IsTrue(fillTable.ColNum == 5, "Table's colNum is wrong!");
        }

        /// <summary>
        ///creatDataArray 的测试
        ///</summary>
        [Test()]
        public void creatDataArrayTest()
        {
            FillTable fillTable = new FillTable(10, 7);
            DataClassesDataContext db = new DataClassesDataContext("Data Source=FIREFLY-PC;Initial Catalog=LASDB;Integrated Security=True");
            List<Duty> dutys = db.Duty.ToList();
            fillTable.creatDataArray(db.Duty.ToList());
            foreach (Duty duty in dutys)
            {
                Assert.IsTrue(fillTable.DataArray[duty.time][duty.day - 1].Any(d=> d==duty.Assistants.name));
            }
        }

        /// <summary>
        ///fillDataArrayToTable 的测试
        ///</summary>
        [Test()]
        public void fillDataArrayToTableTest()
        {
            DataClassesDataContext db = new DataClassesDataContext("Data Source=FIREFLY-PC;Initial Catalog=LASDB;Integrated Security=True");
            FillTable ft = new FillTable(10, 7);
            Table table = new Table();
            ft.creatDataArray(db.Duty.ToList());
            ft.fillDataArrayToTable(table, NoValueDisplay.NoValueString);
            Assert.IsNotNull(table);
        }
    }
}
