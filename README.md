# Bankamatik Otomasyonu

Bankamatik Otomasyonu, C# Windows Forms kullanılarak geliştirilmiş kapsamlı bir bankacılık uygulamasıdır. Bu uygulama, temel bankacılık işlemlerini simüle eder ve hem müşteri hem de yetkili kullanıcı işlemlerini destekler.

## Özellikler

### Müşteri İşlemleri
- 🔐 **Güvenli Giriş**: TC No/Kullanıcı Adı ve şifre ile giriş
- 💰 **Para Yatırma**: Hesaba para yatırma işlemi
- 💸 **Para Çekme**: Hesaptan para çekme işlemi
- 💳 **Havale**: Diğer hesaplara para transferi
- 📊 **Bakiye Sorgulama**: Güncel hesap bakiyesi görüntüleme
- 📋 **Hesap Hareketleri**: İşlem geçmişi görüntüleme
- 🔑 **Şifre Değiştirme**: Hesap şifresi güncelleme
- ❓ **Şifremi Unuttum**: Şifre sıfırlama özelliği

### Yetkili İşlemleri
- 👤 **Müşteri Ekleme**: Yeni müşteri kaydı oluşturma
- 🔍 **Müşteri Arama**: ID veya TC No ile müşteri sorgulama
- 📝 **Müşteri Güncelleme**: Müşteri bilgilerini düzenleme
- 🗑️ **Müşteri Silme**: Müşteri kaydını silme
- 📊 **Müşteri Listeleme**: Tüm müşterileri görüntüleme ve filtreleme

## Sistem Gereksinimleri

- **İşletim Sistemi**: Windows 7 veya üzeri
- **.NET Framework**: 4.8 veya üzeri
- **Veritabanı**: Microsoft SQL Server (SQL Server Express desteklenir)
- **Bellek**: Minimum 2 GB RAM
- **Disk Alanı**: Minimum 100 MB boş alan

## Kurulum

### 1. Projeyi İndirme
```bash
git clone https://github.com/KeremOgzhn/BankamatikOto.git
cd BankamatikOto
```

### 2. Veritabanı Kurulumu

1. **SQL Server'ı** bilgisayarınıza kurun (SQL Server Express ücretsizdir)
2. SQL Server Management Studio'yu açın
3. `bankamatikOto/veri tabanı/bankamatik.sql` dosyasını çalıştırın
4. Bu işlem aşağıdakileri yapacaktır:
   - `Bankamatik` veritabanını oluşturur
   - `musteriler` (müşteriler) tablosunu oluşturur
   - `hareketler` (işlemler) tablosunu oluşturur
   - Örnek veri ekler

### 3. Projeyi Derleme ve Çalıştırma

1. **Visual Studio** ile `bankamatikOto/bankamatikOto.sln` dosyasını açın
2. Solution'ı derleyin (Build > Build Solution)
3. Uygulamayı çalıştırın (F5 veya Debug > Start Debugging)

## Kullanım

### İlk Giriş

Uygulama varsayılan olarak aşağıdaki örnek kullanıcılarla gelir:

| TC No | Şifre | Ad Soyad | Bakiye |
|-------|-------|----------|---------|
| 123 | 1020 | Orhan Veli KANIK | 2.205,00 TL |
| 126 | 126 | Ahmet Kaya | 50.100,00 TL |
| 129 | 129 | Tarık Akan | 3.500,00 TL |
| 130 | 130 | Cüneyt Arkın | 3.900,00 TL |
| 131 | 131 | Orhan Baba | 5.250,00 TL |

### Temel İşlemler

1. **Giriş Yapma**:
   - TC No veya Kullanıcı Adı girin
   - Şifrenizi girin
   - "Giriş Yap" butonuna tıklayın

2. **Para İşlemleri**:
   - Ana menüden istediğiniz işlemi seçin
   - Gerekli bilgileri doldurun
   - İşlemi onaylayın

3. **Yetkili İşlemleri**:
   - Yetkili girişi yapın
   - Müşteri yönetimi işlemlerini gerçekleştirin

## Veritabanı Yapısı

### Musteriler Tablosu
- `ID`: Birincil anahtar (otomatik artan)
- `tcNo`: TC Kimlik Numarası
- `adSoyad`: Ad ve Soyad
- `adres`: Adres bilgisi
- `telefon`: Telefon numarası
- `sifre`: Hesap şifresi
- `bakiye`: Hesap bakiyesi
- `durum`: Hesap durumu (1: Aktif, 0: Pasif)

### Hareketler Tablosu
- `ID`: Birincil anahtar (otomatik artan)
- `musteriID`: Müşteri ID'si (Foreign Key)
- `islem`: İşlem açıklaması
- `tarih`: İşlem tarihi

## Katkıda Bulunma

1. Bu repository'yi fork edin
2. Yeni bir feature branch oluşturun (`git checkout -b feature/yeni-ozellik`)
3. Değişikliklerinizi commit edin (`git commit -am 'Yeni özellik eklendi'`)
4. Branch'inizi push edin (`git push origin feature/yeni-ozellik`)
5. Pull Request oluşturun

## Geliştirici

**Sadık ŞAHİN** - Bilgisayar Mühendisi

## Lisans

Bu proje eğitim amaçlı geliştirilmiştir.

## Ekran Görüntüleri

*Not: Ekran görüntüleri ileride eklenecektir*

## Bilinen Sorunlar

- Uygulama şu anda sadece yerel SQL Server bağlantısını desteklemektedir
- Veritabanı bağlantı dizesi kodda sabit olarak tanımlanmıştır

## Gelecek Güncellemeler

- [ ] Veritabanı bağlantı ayarları için configuration dosyası
- [ ] Daha gelişmiş güvenlik özellikleri
- [ ] Rapor ve analiz özelliikleri
- [ ] Modern UI tasarımı
- [ ] Multi-language desteği

## İletişim

Sorularınız için GitHub Issues bölümünü kullanabilirsiniz.