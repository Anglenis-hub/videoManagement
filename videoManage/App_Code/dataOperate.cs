using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;
using System.Configuration;

/// <summary>
/// dataOperate 的摘要说明
/// </summary>
public class dataOperate
{
    public dataOperate()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }

    //创建数据库连接
    public static SqlConnection createCon()
    {
        string strCon = ConfigurationManager.ConnectionStrings["Test"].ConnectionString;
        SqlConnection con = new SqlConnection(strCon);
        return con;
    }

    //通用数据更新、插入、删除操作
    public static bool execSQL(string sql)
    {

        SqlConnection con = createCon();         //创建数据库连接
        SqlCommand com = new SqlCommand(sql, con);       //创建SQLCommand对象
        try
        {
            con.Open();         //打开数据库连接
            com.ExecuteNonQuery();       //执行SQL语句
        }
        catch (Exception e)
        {
            return false;       //返回布尔值 False
        }
        finally
        {
            con.Close();      //关闭数据库连接
        }
        return true;           //返回布尔值 True
    }

    //查询数据并返回DataSet
    public static DataSet getDataset(string sql)
    {
        SqlConnection con = createCon();         //创建数据库连接
        DataSet ds = new DataSet();        //创建DataSet对象
        SqlDataAdapter sda = new SqlDataAdapter(sql, con);      //创建DataAdapter对象
        sda.Fill(ds);        //填充DataSet数据集        
        return ds;        //返回DataSet对象
    }

    //判断数据是否存在
    public static int seleSQL(string sql)
    {
        SqlConnection con = createCon();         //创建数据库连接
        SqlCommand com = new SqlCommand(sql, con);        //创建SqlCommand对象
        try
        {
            con.Open();         //打开数据库连接
            return Convert.ToInt32(com.ExecuteScalar());             //返回执行ExecuteScalar方法返回的值
        }
        catch (Exception e)
        {
            return 0;            //返回0
        }
        finally
        {
            con.Close();            //关闭数据库连接
        }
    }

    public static SqlDataReader getRow(string sql)
    {
        SqlConnection con = createCon();
        con.Open();
        SqlCommand com = new SqlCommand(sql, con);
        return com.ExecuteReader();
    }

    public static bool execTransaction(string[] sql)
    {
        SqlConnection con = createCon();        //创建数据库连接
        SqlTransaction sTransaction = null;        //创建SqlTransaction对象
        try
        {
            con.Open();            //打开数据库连接
            SqlCommand com = con.CreateCommand();            //创建SqlCommand对象
            sTransaction = con.BeginTransaction();            //设置开始事务
            com.Transaction = sTransaction;            //设置需要执行事务
            foreach (string sqlT in sql)
            {
                com.CommandText = sqlT;                //设置SQL语句
                if (com.ExecuteNonQuery() <= 0)                //判断是否执行成功
                {
                    sTransaction.Rollback();                    //设置事务回滚
                    return false;                    //返回布尔值False
                }
            }
            sTransaction.Commit();            //提交事务
            return true;            //返回布尔值True
        }
        catch (Exception ex)
        {
            sTransaction.Rollback();            //设置事务回滚
            return false;            //返回布尔值False
        }
        finally
        {
            con.Close();            //关闭数据库连接
        }
    }

}