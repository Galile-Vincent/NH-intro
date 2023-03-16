//
//  Read.swift
//  NH208
//
//  Created by Vincent Chiang on 2023/1/5.
//

import SwiftUI
import Foundation
struct Person: Codable {
  var name_c: String //name
  var name_E: String //name
  var id: Int //number
  var birth:String
  var description_c: String //Chinese intro
  var imageName_1: String
    
}

struct ReadView: View {
    //I
    var people: [Person] = [
        
        Person(name_c: "何孟娟", name_E: "班級導師", id: -1,birth: "", description_c: "\nWe dont get a chance to do that many things, and every one should be really excellent.", imageName_1: "t1"),
        Person(name_c: "林瓊甄", name_E: "資訊老師", id: 0,birth: "Tracey", description_c: "\n*現任：臺北市立內湖高級中學 資訊教師\n*經歷：擔任學校資訊組長、註冊組長、系統師、技部高瞻計畫內湖高中課程研發教師團隊、 擔任學校特色班資訊班(第3屆、第7屆、第11屆)資訊教師培育人才\n*最高學歷：國立高雄師範大學資訊教育所碩士\n*教學理念：教學教人，不曾停歇。非常幸運地，可以從事這個生命影響生命的工作，教學工作帶給我的成就感莫過於學生多年後回憶，我課堂上的一句讚美成為他往後學習的動力!", imageName_1: "t2"),
        Person(name_c: "丁建凱", name_E: "Kevin", id: 1,birth: "2005/09/06", description_c: "\n我17歲，單身，住台北市，是加拿大公民，目前無業，學歷：Stanford University Computer Science，資歷：前Google首席程式設計師，因為愛好環保，所以每天搭大眾運輸工具上下學。", imageName_1: "01"),
        
        Person(name_c: "江竑燁", name_E: "Vincent", id: 2,birth: "2006/05/23", description_c: "\nI am a person who loves programming and has won many awards in various competitions. I have participated in FRC and hope to participate in WWDC23 this year. I am proficient in various programming languages, with a special focus on JAVA. I also enjoy music and play the cello and piano in my spare time. My ultimate goal is to become a software engineer, especially at APPLE. I have achieved the gold star ranking on hackerrank and have completed 15 questions on leetcode. I have extensive experience in leading teams as the president of the robotics club./n  I believe that through hard work and determination, one can achieve high goals. In addition to programming, I am also passionate about music and enjoy listening to various genres in my free time. Music brings endless joy and emotion to my life and is a great way for me to relax. Overall, I am a curious and ambitious person who is always looking to challenge myself and improve my skills. I hope to continue learning and developing as a software engineer, striving to be the best that I can be.", imageName_1: "02"),
        
        Person(name_c: "何宇翔", name_E: "Andy", id: 3,birth: "2005/10/01", description_c: "\n幽默、樂觀、開朗", imageName_1: "03"),
        
        Person(name_c: "李承翰", name_E: "johan", id: 4,birth: "2006/01/11", description_c: "\n1.對軟體與硬體有興趣\n2.喜歡運動\n3.對有興趣的學習有很大的熱忱\n4.喜歡玩遊戲\n5.喜歡認識新朋友\n6.參加過FRC、3D列印龍舟、python比賽、機器人循跡、資通訊大賽\n\n1.Interested in software and hardware\n2.Like sport \n3.  Have a great enthusiasm for learning something of I interest\n4.Like play game\n5.Enjoy making new friends\n6.Participated in FRC,3D Printing Dragon Boat,Python Competition,Robot Tracking,and Information and Communications Technology Competition\n", imageName_1: "04"),
        
        Person(name_c: "邱子桀", name_E: "Jay", id: 5,birth: "2006/5/28", description_c: "\n我是邱子桀，你們可以叫我邱子桀，我的興趣是打遊戲、聽音樂，不喜歡動腦但是我喜歡數學，好像不是喜歡數學，只是因為我只有數學不那麼爛，如果神可以滿足我一個不過分的願望，我希望我每次上課睡覺都沒人看到", imageName_1: "05"),
        
        Person(name_c: "胡宸瑋", name_E: "latte", id: 6,birth: "2005/12/12", description_c: "\n大家好我是內中學生會學動長胡宸瑋", imageName_1: "06"),
        
        Person(name_c: "張昭明", name_E: "Roger", id: 7,birth: "2006/5/28", description_c: "\n對軟體與硬體有興趣.喜歡運動.對有興趣的學習有很大的熱忱.喜歡玩遊戲.喜歡認識新朋友.參加過FRC、3D列印龍舟、python比賽、機器人循跡、資通訊大賽", imageName_1: "07"),
        
        Person(name_c: "張喆崴", name_E: "Louis", id: 8,birth: "2006/06/05", description_c: "\n我是一個很樂觀的人，做任何事都全力以赴，即便失敗了也不會氣餒，從中檢討失敗的原因，不再犯一樣的錯誤。俗話說：「世界上每個人都在追求快樂，而一個人快樂與否，取決於你對各事物抱持的態度和看法。」我深信不疑，所以我都保持一顆正向的心，去看待每一件事物。很榮幸在高一下擔任班長，雖然常常要集合、處理班級事務，但我很高興能為班上服務，增加我的領導能力。在課餘時，我喜歡到機場或航道看飛機，對我來說，看到一架飛機降落，象徵成功的機會來了，要好好把握；看到一架飛機起飛，象徵我的夢想被帶到天空中，只要再多努力，一定能實現。「機會永遠留給準備好的人。」而我時常透過聽音樂緩解情緒、減輕壓力，對我來說，聽音樂能讓我身心靈放鬆，達到舒緩的效果。💗🇰🇷🇰🇷🇰🇷💗", imageName_1: "08"),
        
        Person(name_c: "莊道程", name_E: "饅頭MANTOU", id: 9,birth: "2005/09/28", description_c: "\n我來自台灣U call me饅頭娃娃~", imageName_1: "09"),
        
        Person(name_c: "連建勳", name_E: "Tim", id: 10,birth: "1927/05/17", description_c: "\n我叫連建勳\n在高雄出生\n我會彈鋼琴\n我國小讀敦化國小音樂班\n國中也讀音樂班\n高中讀內湖高中\n高一是118班\n我的個性開朗\n喜歡交友\n我會打桌球\n可以來找我打桌球\n我喜歡聽音樂\n我每天都會聽音樂\n各種風格的音樂都會聽", imageName_1: "10"),
        
        Person(name_c: "郭哲宇", name_E: "Louie", id: 11,birth: "2005/09/26", description_c: "\n我是郭哲宇，興趣是打電動跟打電動跟打電動", imageName_1: "11"),
        
        Person(name_c: "陳俊霖", name_E: "JUN", id: 12,birth: "2006/02/27", description_c: "\n大家好，我是陳俊霖，我喜歡聽音樂，也喜歡看劇，是一位雙魚座的男生，從小在基隆長大，家門前便是火車站，每天都可以聽到火車親吻鐵軌的聲音，不知不覺中，那種聲音我已經習慣而無法察覺，基隆也被大家叫雨都，每天都在下雨，傘已經成為每天的必帶之物。目前是桌遊社社長，也擔任過8班的總務和副班長，將要成為班長，希望接下來的每個時光都能充實且完美，每次考試都能持續精進。", imageName_1: "12"),
        
        Person(name_c: "陳培允", name_E: "Patrick", id: 13,birth: "2006/02/27", description_c: "\n對軟體與硬體有興趣.喜歡運動.對有興趣的學習有很大的熱忱.喜歡玩遊戲.喜歡認識新朋友.參加過FRC、3D列印龍舟、python比賽、機器人循跡、資通訊大賽", imageName_1: "13"),
        
        Person(name_c: "曾維晨", name_E: "wcT", id: 14,birth: "2005/10/13", description_c: "\n我是曾維晨，我的興趣是打電動、打籃球，然后上地理課喜歡睡覺。", imageName_1: "14"),
        
        Person(name_c: "温喆皓", name_E: "Nelson", id: 15,birth: "2006/01/03", description_c: "\n我叫温喆皓，可以叫我喆皓，摩羯座生日1/3，平常喜歡打球騎車、聽音樂自嗨，嚮往大自然生活，露營爬山看海，坐不住的孩子，減肥減的很痛苦，願天下所有努力減肥的人，不被無良的朋友嘲笑，這條路上有你我，一起加油💪", imageName_1: "15"),
        
        Person(name_c: "詹育綸", name_E: "Austin&月亮", id: 16,birth: "2006/08/06", description_c: "\n蛙洗詹育綸，是個台北人，生日是8/6\n個性很隨意(看情況\n平常喜歡聽音樂，但沒有特別喜歡的歌手，只要是好聽\n的歌都好~\n除此之外我也是個喜歡睡覺和吃美食的人。", imageName_1: "16"),
        
        Person(name_c: "趙威翔", name_E: "帥哥", id: 17,birth: "2006/04/08", description_c: "\n我叫趙威翔 喜歡打球運動 不太擅長讀書 個性樂觀開朗 ", imageName_1: "17"),
        
        Person(name_c: "劉丞閔", name_E: "Eric", id: 18,birth: "2005/10/11", description_c: "\n我是劉丞閔，我平時喜歡打羽球，逛街，看美劇，睡覺", imageName_1: "18"),
        
        Person(name_c: "蔡王竤", name_E: "Jimmy", id: 19,birth: "2006/06/07", description_c: "\n大家好，我是蔡王竤。幼稚園大班曾到新加坡去讀書，到國小五年級結束後才回到台灣。我平常喜歡到處去看風景或是球賽，並將在現場每一個重要的瞬間紀錄下來。我也很喜歡打羽球，是成長過程中最早接觸到的球類運動，如果場地允許的話，我也很樂意和朋友打羽球。", imageName_1: "19"),
        
        Person(name_c: "蔡適禧", name_E: "tsai4c", id: 20,birth: "2005/9/28", description_c: "\n大家好，我是蔡適禧，興趣是打電動、聽音樂、看小說和散文。最愛的散文作家是張曼娟，最喜歡的歌手是milet，最喜歡的dj是Zedd。", imageName_1: "20"),
        
        Person(name_c: "盧偉嘉", name_E: "Nick", id: 21,birth: "2005/11/12", description_c: "\n大家好，我是盧偉嘉，天蠍座，出生於94年11月12號，要當一年的兵。我是個熱愛打球的孩子，上學期間，結束一天繁忙且勞累的課程，我會想盡辦法抽空在籃球場上揮灑汗水、釋放壓力，我也熱愛跟同學齊聚享受美食，例如拉麵、火鍋、吃到飽等。", imageName_1: "21"),
        
        Person(name_c: "簡上豪", name_E: "Uphao", id: 22,birth: "2006/05/14", description_c: "\n我個人認為這個意大利面就應該拌42號混凝土，因為這個螺絲釘的長度，它很容易會直接影響到挖掘機的扭矩，你知道吧?你往里砸的時候，一瞬間它就會產生大量的高能蛋白，俗稱UFO，會嚴重影響經濟的發展，甚至對這個太平洋以及充電器都會造成一定的核污染", imageName_1: "22"),
        
        Person(name_c: "簡新城", name_E: "Ben", id: 23,birth: "2005/09/28", description_c: "\n我是個在假日平時不怎麼出門，平日跟假日過的剛好相反的人，在假日反而沒事做就在打code，目前在玩貓咪大戰爭及其模組、FGO(我是在寶底才抽到腳色的非酋)、元氣騎士(平時沒網路)、純白和弦(浠其實蠻香的)。FGO、貓站、元氣盡乎全破。\n我生處次文化，能回答有關各種次元的問題[異次元、元宇宙、動漫次元(二次元)]，沒有特別的Vtuber喜好，但絕不是DD，而是守護世界和平的一員，此外，雖說動漫界老婆老公無數，每隔幾月就多了一兩個伴侶也算正常，但實際上也沒錢買周邊(沒錢)。\n程式能力還不錯(是個在資訊剛要做期末報告時，打130行程式還不滿足的辣個男人，目標是打完200行，且讓它成為讓喜歡亂輸入的人也會變乖的終極程式)，在班上因該算有排名，老師剛出作業寫完就Po在Gmail，意義不好在此說明；而我也是個十足的工具人，不管或大或小的問題各種人都會問我，譬如做我左邊的那個媽寶。", imageName_1: "23"),
        
        Person(name_c: "闕筵庭", name_E: "Tim", id: 24,birth: "2005/11/28", description_c: "\n我是闕筵庭，是闕不是關，現在是資研社社長，我超級偏科，數理很好，英文超爛，希望我的英文可以上來，目標頂大GOGOGO。", imageName_1: "24"),
        
        Person(name_c: "王瑋潞", name_E: "圍爐", id: 25,birth: "2006/05/15", description_c: "\n五一五，五二十，五三十五。我的興趣跟專長是睡覺，需要十二小時睡眠。是吃巧克力不吃巧克力口味餅乾的怪人。他們說我笑點很奇怪，但是真的很好笑啊！哈哈哈哈哈哈瘋子。", imageName_1: "25"),
        
        Person(name_c: "周品妤", name_E: "Doris", id: 26,birth: "2006/05/07", description_c: "\nみなさんこんにちは！我是周品妤，是個隨和脾氣好，但怕生且沒自信的人。星座是金牛座，卻一點也不固執。興趣是仿畫動漫人物、和摺紙（蝴蝶）。擅長的科目是數學和物理。之所以在資訊班是想要增進資訊能力，期許能將所學的知識應用到未來的工作履歷上。雖然偶爾班上會惹出些令老師頭疼的蠢事，但相較於其他班，我更喜歡待在活力充沛的8班。很開心能與大家共同度過3年的高中生活。ig:pinyu_yu", imageName_1: "26"),
        
        
        Person(name_c: "林庭羽", name_E: "Tina", id: 28,birth: "2006/01/18", description_c: "\n大家好，我是林庭羽，我是魔羯座，出生於2006/01/18，我的興趣是追劇、追星、看小說，我最喜歡的女明星是趙麗穎，男明星是楊洋，男團是TNT，我很固執、懶惰，也很消極、也欠缺幽默感，要求很多，缺點很多，但在危急時表現甚佳。不善外交，小心而保守。雖然速度比別人差一點，但因不斷的努力而能達到最後目標。", imageName_1: "28"),
        
        Person(name_c: "崔寶心", name_E: "Venessa", id: 29,birth: "2005/10/20", description_c: "\n我是一個外表冷靜樂觀，實則ㄎㄧㄤ到谷底的人，有時候會作一些傻事，跟我聊天的人的說我很好聊，只要你願意跟我聊下去，我可以讓話題源源不斷，有些朋友說我情商很高，雖然平常憨憨的，但是真正在處理事情也是很靠譜的。是個十足的吃貨，身上基本上都會有食物（除非沒錢了），想找我聊天隨時歡迎，但有時候會當起網路神隱少女，聊一聊就人間蒸發請見諒。ig：nhqf_bao", imageName_1: "29"),
        
        Person(name_c: "許百秀", name_E: "Special ", id: 30,birth: "2005/10/05", description_c: "\n我是許百秀\n也可叫我Special\n我性格很real\n生活過的很chill\n最後希望我的自然won’t  fail", imageName_1: "30"),
        
        Person(name_c: "楊家萱", name_E: "楊芋片", id: 31,birth: "2005/10/29", description_c: "\n圈圈圓圓圈圈\n萱萱圓圓萱萱\n到底是圈圈圓圓圈圈\n還是萱萱圈圈萱萱\n啊~原來是二次函數大師的楊家萱。", imageName_1: "31"),
        
        Person(name_c: "萬芊妤", name_E: "Cian🐟", id: 32,birth: "2005/12/13", description_c: "\n我是善變且愛好自由的射手座♐，怕狗但喜歡貓咪，不喝牛奶也不喝奶茶，比起肉我更喜歡蔬菜，壞習慣是做事情喜歡拖和嚴重的選擇障礙，最喜歡的程式語言是python！", imageName_1: "32"),
        
        Person(name_c: "蒲芊伃", name_E: "Pu、西希蒲、蒲萄糖、抹布", id: 34,birth: "2006/04/12", description_c: "\n我是蒲芊伃，\n看到蟲尖叫，\n每天都很笑，\n簡直像起笑，\n感覺就像沒吃藥，\n看到英文就亂掉，\n很怕英文被fail，\n希望班排不要掉，\n害怕重補修還要來學校。", imageName_1: "34")
    ]
    private let adaptiveColumns = [
           GridItem(.adaptive(minimum: 170))
       ]
    init(){
        UINavigationBar.appearance().tintColor = .black
        UINavigationBar.appearance().barTintColor = .white
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.black]
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.black]
    }
    var body: some View {
        NavigationView {
            ScrollView{
                LazyVGrid(columns:adaptiveColumns,spacing: 20){
                    ForEach(people, id: \.id) { person in
                        NavigationLink(destination: DetailView(person: person)) {
                            VStack(alignment: .leading,spacing: 15.0){
                                Image(person.imageName_1)
                                    .resizable()
                                    .frame(width: 180,height: 180)
                                cardText(person: person).padding(.horizontal, 8)
                            }
                            .background(Color(red:245/255,green: 238/225,blue: 248/255))
                            .clipShape(RoundedRectangle(cornerRadius: 24.0))
                            .shadow(radius: 5)
                        }.padding(EdgeInsets(top: 10, leading: 5, bottom: 0, trailing: 5))
                    }
                }
                .navigationBarTitle("Members")
            }.background(Color(red: 173/255, green: 198/255, blue: 220/255))
        }
    }
}
struct cardText: View{
    var person: Person
    var body: some View{
        VStack(alignment:.leading){
            Text(person.name_c)
                .font(.headline)
                .foregroundColor(.black)
            HStack(spacing:4.0){
                Text(person.name_E)
            }
            .foregroundColor(.gray)
            .padding(.bottom,16)
        }
    }
}
    


struct DetailView: View {
    var person: Person //call the Person Array
    var body: some View {
        ScrollView {
            // photo
            Image(person.imageName_1)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
                .cornerRadius(10)
                .clipped()
                .shadow(radius: 7)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
                .offset(y: 30)
                .padding(EdgeInsets(top: 15, leading: 0, bottom: 70, trailing: 0))
            
            VStack(alignment: .leading) {
                Text(person.name_c)
                    .font(.title)
                
                HStack {
                    Text(person.name_E)
                    Spacer()
                    Text(person.birth)
                }
                .font(.subheadline)
                .foregroundColor(.gray)

                
                Divider()
                
                Text("About \(person.name_E)")
                    .font(.title2)
                Text(person.description_c)
            }.foregroundColor(Color.black)
            .padding()
        }.background(Color(red: 173/255, green: 198/255, blue: 220/255))
        .navigationTitle(person.name_c)
        .navigationBarTitleDisplayMode(.inline)
    }
}


struct Read_Previews: PreviewProvider {
    static var previews: some View {
        ReadView()
    }
}


