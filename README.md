Romsis Book Discovery

Kullanılan kütüphaneler

-auto-route : Navigasyon için kullandığım paket. Bütün projelerimde bunu kullanırım nested paths ve guard gibi özellikleri var (bu projede sadece home route u belirttim)

-dio : Http in premium hali gibi. http ye göre çok daha fazla özelliği var.

-get_it : Dependency inj için. Kodu dğzenli tutuyor. Lazy singleton ve lazy factory olayları var.

-equatable : Blocların elitliğini kontrol ediyor , ekran boluna yenilenmiyor

-freezed : Constructor oluşturma , immutable yapma (direk final) gibi modeller üzerinde özellikleri var. Code gen olduğu için ise yazmaya gerek yok (büyük yğkten kurtarıyor)

-json-seri :Modellerde fromjson ve tojson fonksyionlarını yazıyor (Code gen yine bizi büyük bir yükten kurtarıyor)

-stream_transform : Bloc tarafında debounce işlemi için kullanıldı.