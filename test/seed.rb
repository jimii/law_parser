Dir[File.expand_path('app/**/*.rb', File.dirname(__FILE__))].each do |f|
  module_name = /\/([^\/\.]+?)\.rb$/.match(f)[1].capitalize.to_sym
  autoload(module_name, f)
end

def seed_civil_articles
  articles = []
  articles << Article.new(title: 'Art. 38.', body: 'Osoba prawna działa przez swoje organy w sposób przewidziany w ustawie i w opartym na niej statucie.')
  articles << Article.new(
      title: 'Art. 39.',
      paragraphs: [
          Paragraph.new(title: '§ 1.', body: 'Kto jako organ osoby prawnej zawarł umowę w jej imieniu nie będąc jej organem albo przekraczając zakres umocowania takiego organu, obowiązany jest do zwrotu tego, co otrzymał od drugiej strony w wykonaniu umowy, oraz do naprawienia szkody, którą druga strona poniosła przez to, że zawarła umowę nie wiedząc o braku umocowania.'),
          Paragraph.new(title: '§ 2.', body: 'Przepis powyższy stosuje się odpowiednio w wypadku, gdy umowa została zawarta w imieniu osoby prawnej, która nie istnieje.')
      ]
  )
  articles << Article.new(
      title: 'Art. 40.',
      paragraphs: [
          Paragraph.new(title: '§ 1.', body: 'Skarb Państwa nie ponosi odpowiedzialności za zobowiązania państwowych osób prawnych, chyba że przepis odrębny stanowi inaczej. Państwowe osoby prawne nie ponoszą odpowiedzialności za zobowiązania Skarbu Państwa.'),
          Paragraph.new(title: '§ 2.', body: 'W razie nieodpłatnego przejęcia, na podstawie obowiązujących ustaw, określonego składnika mienia od państwowej osoby prawnej na rzecz Skarbu Państwa, ten ostatni odpowiada solidarnie z osobą prawną za zobowiązania powstałe w okresie, gdy składnik stanowił własność danej osoby prawnej, do wysokości wartości tego składnika ustalonej według stanu z chwili przejęcia, a według cen z chwili zapłaty.'),
          Paragraph.new(title: '§ 3.', body: 'Przepisy § 1 i 2 stosuje się odpowiednio do odpowiedzialności jednostek samorządu terytorialnego i samorządowych osób prawnych.')
      ]
  )
  articles << Article.new(title: 'Art. 41.', body: 'Jeżeli ustawa lub oparty na niej statut nie stanowi inaczej, siedzibą osoby prawnej jest miejscowość, w której ma siedzibę jej organ zarządzający.')
  articles << Article.new(
      title: 'Art. 42.',
      paragraphs: [
          Paragraph.new(title: '§ 1.', body: 'Jeżeli osoba prawna nie może prowadzić swoich spraw z braku powołanych do tego organów, sąd ustanawia dla niej kuratora.'),
          Paragraph.new(title: '§ 2.', body: 'Kurator powinien postarać się niezwłocznie o powołanie organów osoby prawnej, a w razie potrzeby o jej likwidację.')
      ]
  )
  articles << Article.new(title: 'Art. 43.', body: 'Przepisy o ochronie dóbr osobistych osób fizycznych stosuje się odpowiednio do osób prawnych.')
  articles
end

def seed_construction_articles
  articles = []
  articles << Article.new(title: 'Art. 5[1].', body: '(uchylony).')
  articles << Article.new(title: 'Art. 5[2].', body: '(uchylony).')
  articles << Article.new(
      title: 'Art. 5a.',
      paragraphs: [
          Paragraph.new(title: '1.', body: 'W przypadku budowy obiektu liniowego, którego przebieg został ustalony w miejscowym planie zagospodarowania przestrzennego, a także wykonywania innych robót budowlanych dotyczących obiektu liniowego, gdy liczba stron w postępowaniu przekracza 20, stosuje się przepis art. 49 Kodeksu postępowania administracyjnego.'),
          Paragraph.new(title: '2.', body: 'Przepisu ust. 1 nie stosuje się do inwestora oraz właścicieli, użytkowników wieczystych i zarządców nieruchomości, jeżeli na tych nieruchomościach są lub będą wykonywane roboty budowlane.')
      ]
  )
  articles << Article.new(title: 'Art. 6.', body: 'Dla działek budowlanych lub terenów, na których jest przewidziana budowa obiektów budowlanych lub funkcjonalnie powiązanych zespołów obiektów budowlanych, należy zaprojektować odpowiednie zagospodarowanie, zgodnie z wymaganiami art. 5 ust. 1–2b, zrealizować je przed oddaniem tych obiektów (zespołów) do użytkowania oraz zapewnić utrzymanie tego zagospodarowania we właściwym stanie techniczno-użytkowym przez okres istnienia obiektów (zespołów) budowlanych.')
  articles << Article.new(
      title: 'Art. 7.',
      paragraphs: [
          Paragraph.new(title: '1.', body: 'Do przepisów techniczno-budowlanych zalicza się:',
            lines: [
                Line.new(title: '1)', body: 'warunki techniczne, jakim powinny odpowiadać obiekty budowlane i ich usytuowanie, uwzględniające wymagania, o których mowa w art. 5 ust. 1–2b;'),
                Line.new(title: '2)', body: 'warunki techniczne użytkowania obiektów budowlanych.')
            ]
          ),
          Paragraph.new(title: '2.', body: 'Warunki, o których mowa w ust. 1 pkt 1, określą, w drodze rozporządzenia:',
            lines: [
                Line.new(title: '1)', body: 'minister właściwy do spraw budownictwa, lokalnego planowania i zagospodarowania przestrzennego oraz mieszkalnictwa dla budynków oraz związanych z nimi urządzeń;'),
                Line.new(title: '2)', body: 'właściwi ministrowie, w porozumieniu z ministrem właściwym do spraw budownictwa, lokalnego planowania i zagospodarowania przestrzennego oraz mieszkalnictwa, dla obiektów budowlanych niewymienionych w pkt 1.')
            ]
          ),
          Paragraph.new(title: '3.', body: 'Warunki, o których mowa w ust. 1 pkt 2, mogą określić, w drodze rozporządzenia:',
            lines: [
                Line.new(title: '1)', body: 'minister właściwy do spraw budownictwa, lokalnego planowania i zagospodarowania przestrzennego oraz mieszkalnictwa – dla budynków mieszkalnych;'),
                Line.new(title: '2)', body: 'właściwi ministrowie, w porozumieniu z ministrem właściwym do spraw budownictwa, lokalnego planowania i zagospodarowania przestrzennego oraz mieszkalnictwa – dla innych obiektów budowlanych.')
            ]
          )
      ]
  )
  articles << Article.new(title: 'Art. 8.', body: 'Rada Ministrów może określić, w drodze rozporządzenia, dodatkowe warunki techniczne, jakim powinny odpowiadać budynki służące bezpieczeństwu lub obronności państwa, albo których przepisów, wydanych na podstawie art. 7 ust. 2 pkt 1, nie stosuje się do tych budynków, biorąc pod uwagę funkcję tych budynków oraz potrzebę zapewnienia bezpieczeństwa lub obronności państwa.')
  articles << Article.new(
      title: 'Art. 9.',
      paragraphs: [
          Paragraph.new(title: '1.', body: 'W przypadkach szczególnie uzasadnionych dopuszcza się odstępstwo od przepisów techniczno-budowlanych, o których mowa w art. 7. Odstępstwo nie może powodować zagrożenia życia ludzi lub bezpieczeństwa mienia, a w stosunku do obiektów, o których mowa w art. 5 ust. 1 pkt 4 – ograniczenia dostępności dla osób niepełnosprawnych oraz nie powinno powodować pogorszenia warunków zdrowotno-sanitarnych i użytkowych, a także stanu środowiska, po spełnieniu określonych warunków zamiennych.'),
          Paragraph.new(title: '2.', body: 'Właściwy organ, po uzyskaniu upoważnienia ministra, który ustanowił przepisy techniczno-budowlane, w drodze postanowienia, udziela bądź odmawia zgody na odstępstwo.'),
          Paragraph.new(title: '3.', body: 'Wniosek do ministra, o którym mowa w ust. 2, w sprawie upoważnienia do udzielenia zgody na odstępstwo właściwy organ składa przed wydaniem decyzji o pozwoleniu na budowę. Wniosek powinien zawierać:',
            lines: [
                Line.new(title: '1)', body: 'charakterystykę obiektu oraz, w miarę potrzeby, projekt zagospodarowania działki lub terenu, a jeżeli odstępstwo mogłoby mieć wpływ na środowisko lub nieruchomości sąsiednie – również projekty zagospodarowania tych nieruchomości, z uwzględnieniem istniejącej i projektowanej zabudowy;'),
                Line.new(title: '2)', body: 'szczegółowe uzasadnienie konieczności wprowadzenia odstępstwa;'),
                Line.new(title: '3)', body: 'propozycje rozwiązań zamiennych;'),
                Line.new(title: '4)', body: 'pozytywną opinię wojewódzkiego konserwatora zabytków w odniesieniu do obiektów budowlanych wpisanych do rejestru zabytków oraz innych obiektów budowlanych usytuowanych na obszarach objętych ochroną konserwatorską;'),
                Line.new(title: '5)', body: 'w zależności od potrzeb – pozytywną opinię innych zainteresowanych organów.')
            ]
          ),
          Paragraph.new(title: '4.', body: 'Minister, o którym mowa w ust. 2, może uzależnić upoważnienie do wyrażenia zgody na odstępstwo od spełnienia dodatkowych warunków.')
      ]
  )

end