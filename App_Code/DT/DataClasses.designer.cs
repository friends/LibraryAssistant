﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由工具生成。
//     运行时版本:4.0.30319.1
//
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------

namespace DT
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="LASDB")]
	public partial class DataClassesDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region 可扩展性方法定义
    partial void OnCreated();
    partial void InsertNews(News instance);
    partial void UpdateNews(News instance);
    partial void DeleteNews(News instance);
    partial void InsertDuty(Duty instance);
    partial void UpdateDuty(Duty instance);
    partial void DeleteDuty(Duty instance);
    partial void InsertAssistants(Assistants instance);
    partial void UpdateAssistants(Assistants instance);
    partial void DeleteAssistants(Assistants instance);
    #endregion
		
		public DataClassesDataContext() : 
				base(global::System.Configuration.ConfigurationManager.ConnectionStrings["LASDBConnectionString1"].ConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public DataClassesDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataClassesDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataClassesDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public DataClassesDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<News> News
		{
			get
			{
				return this.GetTable<News>();
			}
		}
		
		public System.Data.Linq.Table<Duty> Duty
		{
			get
			{
				return this.GetTable<Duty>();
			}
		}
		
		public System.Data.Linq.Table<Assistants> Assistants
		{
			get
			{
				return this.GetTable<Assistants>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.News")]
	public partial class News : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _newsId;
		
		private string _content;
		
		private string _title;
		
		private System.DateTime _publishTime;
		
		private int _type;
		
    #region 可扩展性方法定义
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnnewsIdChanging(int value);
    partial void OnnewsIdChanged();
    partial void OncontentChanging(string value);
    partial void OncontentChanged();
    partial void OntitleChanging(string value);
    partial void OntitleChanged();
    partial void OnpublishTimeChanging(System.DateTime value);
    partial void OnpublishTimeChanged();
    partial void OntypeChanging(int value);
    partial void OntypeChanged();
    #endregion
		
		public News()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_newsId", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int newsId
		{
			get
			{
				return this._newsId;
			}
			set
			{
				if ((this._newsId != value))
				{
					this.OnnewsIdChanging(value);
					this.SendPropertyChanging();
					this._newsId = value;
					this.SendPropertyChanged("newsId");
					this.OnnewsIdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_content", DbType="Text", UpdateCheck=UpdateCheck.Never)]
		public string content
		{
			get
			{
				return this._content;
			}
			set
			{
				if ((this._content != value))
				{
					this.OncontentChanging(value);
					this.SendPropertyChanging();
					this._content = value;
					this.SendPropertyChanged("content");
					this.OncontentChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_title", DbType="VarChar(100) NOT NULL", CanBeNull=false)]
		public string title
		{
			get
			{
				return this._title;
			}
			set
			{
				if ((this._title != value))
				{
					this.OntitleChanging(value);
					this.SendPropertyChanging();
					this._title = value;
					this.SendPropertyChanged("title");
					this.OntitleChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_publishTime", DbType="DateTime NOT NULL")]
		public System.DateTime publishTime
		{
			get
			{
				return this._publishTime;
			}
			set
			{
				if ((this._publishTime != value))
				{
					this.OnpublishTimeChanging(value);
					this.SendPropertyChanging();
					this._publishTime = value;
					this.SendPropertyChanged("publishTime");
					this.OnpublishTimeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_type", DbType="Int NOT NULL")]
		public int type
		{
			get
			{
				return this._type;
			}
			set
			{
				if ((this._type != value))
				{
					this.OntypeChanging(value);
					this.SendPropertyChanging();
					this._type = value;
					this.SendPropertyChanged("type");
					this.OntypeChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Duty")]
	public partial class Duty : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private string _assistantID;
		
		private int _day;
		
		private int _time;
		
		private EntityRef<Assistants> _Assistants;
		
    #region 可扩展性方法定义
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnassistantIDChanging(string value);
    partial void OnassistantIDChanged();
    partial void OndayChanging(int value);
    partial void OndayChanged();
    partial void OntimeChanging(int value);
    partial void OntimeChanged();
    #endregion
		
		public Duty()
		{
			this._Assistants = default(EntityRef<Assistants>);
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_assistantID", DbType="VarChar(16) NOT NULL", CanBeNull=false, IsPrimaryKey=true)]
		public string assistantID
		{
			get
			{
				return this._assistantID;
			}
			set
			{
				if ((this._assistantID != value))
				{
					if (this._Assistants.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnassistantIDChanging(value);
					this.SendPropertyChanging();
					this._assistantID = value;
					this.SendPropertyChanged("assistantID");
					this.OnassistantIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_day", DbType="Int NOT NULL", IsPrimaryKey=true)]
		public int day
		{
			get
			{
				return this._day;
			}
			set
			{
				if ((this._day != value))
				{
					this.OndayChanging(value);
					this.SendPropertyChanging();
					this._day = value;
					this.SendPropertyChanged("day");
					this.OndayChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_time", DbType="Int NOT NULL", IsPrimaryKey=true)]
		public int time
		{
			get
			{
				return this._time;
			}
			set
			{
				if ((this._time != value))
				{
					this.OntimeChanging(value);
					this.SendPropertyChanging();
					this._time = value;
					this.SendPropertyChanged("time");
					this.OntimeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Assistants_Duty", Storage="_Assistants", ThisKey="assistantID", OtherKey="ID", IsForeignKey=true)]
		public Assistants Assistants
		{
			get
			{
				return this._Assistants.Entity;
			}
			set
			{
				Assistants previousValue = this._Assistants.Entity;
				if (((previousValue != value) 
							|| (this._Assistants.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._Assistants.Entity = null;
						previousValue.Duty.Remove(this);
					}
					this._Assistants.Entity = value;
					if ((value != null))
					{
						value.Duty.Add(this);
						this._assistantID = value.ID;
					}
					else
					{
						this._assistantID = default(string);
					}
					this.SendPropertyChanged("Assistants");
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Assistants")]
	public partial class Assistants : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private string _ID;
		
		private string _password;
		
		private string _name;
		
		private EntitySet<Duty> _Duty;
		
    #region 可扩展性方法定义
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIDChanging(string value);
    partial void OnIDChanged();
    partial void OnpasswordChanging(string value);
    partial void OnpasswordChanged();
    partial void OnnameChanging(string value);
    partial void OnnameChanged();
    #endregion
		
		public Assistants()
		{
			this._Duty = new EntitySet<Duty>(new Action<Duty>(this.attach_Duty), new Action<Duty>(this.detach_Duty));
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ID", DbType="VarChar(16) NOT NULL", CanBeNull=false, IsPrimaryKey=true)]
		public string ID
		{
			get
			{
				return this._ID;
			}
			set
			{
				if ((this._ID != value))
				{
					this.OnIDChanging(value);
					this.SendPropertyChanging();
					this._ID = value;
					this.SendPropertyChanged("ID");
					this.OnIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_password", DbType="VarChar(20) NOT NULL", CanBeNull=false)]
		public string password
		{
			get
			{
				return this._password;
			}
			set
			{
				if ((this._password != value))
				{
					this.OnpasswordChanging(value);
					this.SendPropertyChanging();
					this._password = value;
					this.SendPropertyChanged("password");
					this.OnpasswordChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_name", DbType="NChar(10) NOT NULL", CanBeNull=false)]
		public string name
		{
			get
			{
				return this._name;
			}
			set
			{
				if ((this._name != value))
				{
					this.OnnameChanging(value);
					this.SendPropertyChanging();
					this._name = value;
					this.SendPropertyChanged("name");
					this.OnnameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Assistants_Duty", Storage="_Duty", ThisKey="ID", OtherKey="assistantID")]
		public EntitySet<Duty> Duty
		{
			get
			{
				return this._Duty;
			}
			set
			{
				this._Duty.Assign(value);
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_Duty(Duty entity)
		{
			this.SendPropertyChanging();
			entity.Assistants = this;
		}
		
		private void detach_Duty(Duty entity)
		{
			this.SendPropertyChanging();
			entity.Assistants = null;
		}
	}
}
#pragma warning restore 1591
