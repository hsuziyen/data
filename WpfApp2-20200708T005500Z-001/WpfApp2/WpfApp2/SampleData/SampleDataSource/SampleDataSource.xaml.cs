//      *********    請勿修改此檔案     *********
//      此檔案是由設計工具重新產生的。
//      修改此檔案可能會導致錯誤發生。
namespace Expression.Blend.SampleData.SampleDataSource
{
    using System; 
    using System.ComponentModel;

// 為大幅降低範例資料在實際執行應用程式中的磁碟使用量，您可以設定
// DISABLE_SAMPLE_DATA 條件式編譯常數，並在執行階段停用範例資料。
#if DISABLE_SAMPLE_DATA
    internal class SampleDataSource { }
#else

    public class SampleDataSource : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged(string propertyName)
        {
            if (this.PropertyChanged != null)
            {
                this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
            }
        }

        public SampleDataSource()
        {
            try
            {
                Uri resourceUri = new Uri("/WpfApp2;component/SampleData/SampleDataSource/SampleDataSource.xaml", UriKind.RelativeOrAbsolute);
                System.Windows.Application.LoadComponent(this, resourceUri);
            }
            catch
            {
            }
        }

        private ItemCollection _Collection = new ItemCollection();

        public ItemCollection Collection
        {
            get
            {
                return this._Collection;
            }
        }
    }

    public class Item : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged(string propertyName)
        {
            if (this.PropertyChanged != null)
            {
                this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
            }
        }

        private string _name = string.Empty;

        public string name
        {
            get
            {
                return this._name;
            }

            set
            {
                if (this._name != value)
                {
                    this._name = value;
                    this.OnPropertyChanged("name");
                }
            }
        }

        private bool _gender = false;

        public bool gender
        {
            get
            {
                return this._gender;
            }

            set
            {
                if (this._gender != value)
                {
                    this._gender = value;
                    this.OnPropertyChanged("gender");
                }
            }
        }

        private double _age = 0;

        public double age
        {
            get
            {
                return this._age;
            }

            set
            {
                if (this._age != value)
                {
                    this._age = value;
                    this.OnPropertyChanged("age");
                }
            }
        }

        private System.Windows.Media.ImageSource _pic = null;

        public System.Windows.Media.ImageSource pic
        {
            get
            {
                return this._pic;
            }

            set
            {
                if (this._pic != value)
                {
                    this._pic = value;
                    this.OnPropertyChanged("pic");
                }
            }
        }
    }

    public class ItemCollection : System.Collections.ObjectModel.ObservableCollection<Item>
    { 
    }
#endif
}
