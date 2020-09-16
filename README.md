# Karga Arama Algoritması ve Performansını Arttırmaya Yönelik Çalışmalar (CROW SEARCH ALGORİTHM)  
Kargalar en akıllı kuşlar olarak kabul edilir. Vücut boyutlarına göre en büyük beyni içerirler. Kargalar yüzleri hatırlayabilir ve düşmanca yaklaştıklarında birbirlerini uyarabilir. Dahası, sofistike yollarla iletişim kurabilir ve birkaç ay sonrasına kadar yiyeceklerinin saklanma yerlerini hatırlayabilirler. Kargaların diğer kuşları izledikleri, diğer kuşların yiyeceklerini nerede sakladıklarını gözlemledikleri ve sahibi ayrıldıktan sonra çaldığı bilinmektedir. Eğer bir karga hırsızlık yapmışsa, gelecekteki bir kurban olmaktan kaçınmak için saklanma yerlerini taşımak gibi ekstra önlemler alacaktır. Bir hırsızın davranışını tahmin edebilmek için hırsız olma deneyimlerini kullanırlar. Saklamış oldukları yiyeceklerin çalınmasını önleyebilmek amacıyla en güvenli rotayı belirleyerek gizli yiyecek depolarının keşfedilmesini engellemeye çalışırlar. CSA, kargaların akıllı davranışlarına dayanarak geliştirilmiş popülasyon temelli bir meta-sezgisel algoritmadır. 
CSA ilkeleri aşağıdaki gibidir:

- Kargalar sürü şeklinde yaşar. 
- Kargalar yiyecekleri sakladıkları yerlerin pozisyonlarını ezberler. 
- Kargalar hırsızlık yapmak için birbirlerini takip ederler. 
- Kargalar önbelleklerini olasılıkla çalınması ihtimaline karşı korurlar. 

Yapılan çalışmada hazırlanmış olan tüm caseler 10 farklı problem üzerinde 25 kez çalıştırılmıştır.
- Popülasyon boyutu 50, problem boyutu 30'dur.
- CSA algoritmasında arama uzayını etkileyen iki parametre bulunmaktadır. Bunlar bir karganın
takip edildiğini anlaması için kullanılan farkındalık olasılığı ve iki karga arasındaki uçuş
uzaklığıdır. Bu parametreler algoritma başlangıcında belirlenip, iterasyon boyunca sabit
kalmaktadır. Yapılan çalışmada algoritmanın bu parametrelerinin değerleri sırayla 0.1 ve 2
alınmıştır

Karga arama algoritmasında konumu güncellenen kargaların, hesaplanan yeni uygunluk değerleri hafızalarındaki uygunluk değerleri ile karşılaştırılır. Yeni uygunluk değeri hafızadan daha iyi ise güncelleme yapılır. Bu nedenle çözüm adaylarının birbirine benzemesi diğer bir deyişle popülasyonun bir araya toplanması durumu oluşabilir dolayısıyla algoritma yerel minimum tuzaklarına takılabilir. Bu noktada çeşitlilik yapılması gerekmektedir. Ancak optimizasyon problemlerinin yerine getirmesi gereken çeşitlilik ve komşuluk aramasının dengeli bir şekilde ayarlanması gerekir. Özellikle bu noktaya dikkat edilmelidir. 
Yapılan çalışmada 24 adet case oluşturulmuştur. Oluşturulan caseler genel olarak baz algoritmaya karşı bir üstünlük sağlamıştır. Arama performanslarında iyileştirme olmuştur. Varılan diğer bir sonuç ise uygulanan yöntemlerin algoritmaya çeşitlilik kazandırdığıdır.

23 tane case'in 21 tanesi baz algoritmaya göre daha iyi sonuçlar vermiştir. Elde edilen en iyi sonuç case_7 ye aittir. Baz algoritma CSA'ya göre 1,154'lük bir başarı elde etmiştir.
