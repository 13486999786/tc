import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_tc/pages/search_page.dart';

class FindPage extends StatefulWidget 
{
  FindPage({Key key}) : super(key: key);

  _FindPageState createState() => _FindPageState();
}

class _FindPageState extends State<FindPage> 
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: CustomAppBar(),
      ),
      body: Container(
    
        child: ListView
        (
          padding: EdgeInsets.only(bottom: 10),
            children: <Widget>
            [
              Banner(),
              Routes(),
              Frees(),
              Jion(),
              Container(padding: EdgeInsets.fromLTRB(12, 0, 12, 0),child: Text('为您推荐',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),alignment: Alignment.centerLeft, height: 60),
              HomeItem(),
              HomeItem(),
              HomeItem(),
              HomeItem(),
              HomeItem(),
            ],
        ),
      ),
    );
  }
}


//导航条
class CustomAppBar extends PreferredSize 
{
  @override
  Widget build(BuildContext context) 
  {
    return Container
        (
          color: Colors.white,
          padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>
                [
                  Text('天成时KE',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Row(
                    children: <Widget>[
                      Icon(Icons.query_builder,size: 20,color: Color(0xff494C5C),),
                       Text('咨询',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold))
                    ],
                  )
                 
                ],
              ),
              Container
              (
                padding: EdgeInsets.fromLTRB(0, 7, 0, 10),
                height: 50,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchPage()));
                    
                  },//进入搜索
                  child:  Container
                (
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                     color: Color(0XffF7F7F7)
                  ),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                   child: Row(
                     children: <Widget>[
                       Icon(Icons.search,color: Color(0xffD1D3DD),size: 18,),
                       Padding(
                         child:  Text('搜索课程',style: TextStyle(color: Color(0xffD1D3DD),fontSize: 14),),
                         padding: EdgeInsets.only(left: 6),
                       )
                      
                     ],
                   ),
                ),
                )
              )
            ],
          ),
      );
  }
}

//轮播图
class Banner extends StatelessWidget 
{
  const Banner({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return Container
    (
      height: 160,
      child: Swiper(
        autoplay: true,
        itemCount: 3,
        pagination:SwiperPagination(
          
        ),
        
        itemBuilder: (context,index)
        {
          return Image.network('https://img.zcool.cn/community/019e7c57961a350000018c1bd249ef.jpg@1280w_1l_2o_100sh.jpg',fit: BoxFit.fill);
        },
      ),
      // color: Colors.yellow,
    );
  }
}

//三个入口
class Routes extends StatelessWidget 
{
  const Routes({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return Container
    (
      color: Colors.white,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>
        [
        
          _routeItem(context,'images/schcoolicon.png','创新学院'),
          _routeItem(context,'images/learnicon.png','研习社'),
          _routeItem(context,'images/allicon.png','全部'),

        ],
      ),
    );
  }


  Widget _routeItem(BuildContext context,String imgurl,String title)
  {
    return InkWell(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>
        [
          Image.asset(imgurl,width: 30,height: 30,fit: BoxFit.contain),
          Container(
            padding: EdgeInsets.only(top: 3),
            child:  Text(title,style: TextStyle(fontSize: 12,color: Color(0xff494C5C)))
          )
         
        ],
      ),
    );
  }
}

class Frees extends StatelessWidget 
{
  const Frees({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return Container
    (
      margin: EdgeInsets.only(top: 8),
      padding: EdgeInsets.fromLTRB(12, 0, 12, 20),
      color: Colors.white,
      child: Column(
        children: <Widget>
        [
          Container(child: Text('免费专区',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),alignment: Alignment.centerLeft, height: 60),
          Container( decoration: BoxDecoration(color: Color(0xffEAF0FE)),height: 140,width: 1000
            ,child: 
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network('https://img.zcool.cn/community/019e7c57961a350000018c1bd249ef.jpg@1280w_1l_2o_100sh.jpg',fit: BoxFit.fill,)
              )
          ),
          Container(child: Text('今日知识点',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),alignment: Alignment.centerLeft, height: 60),
          Container
          (
            height: 160,
            // color: Colors.red,
            child: ListView
          (
            
            children: <Widget>
            [
                _freeItem(),
                _freeItem(),
                _freeItem(),
            ],
            scrollDirection: Axis.horizontal,
          ),)
        ],
      ),
    );
  }


  Widget _freeItem()
  {
    return  Container
    (
      margin: EdgeInsets.only(right: 8),
      child: ClipRRect
    (
      borderRadius: BorderRadius.circular(10),
      child: Container
    (
      decoration: BoxDecoration
      (
        // color: Colors.red,
        border: Border.all(width: 1,color: Color(0xfff2f2f2)),
      ),
      width: 145,
      // 
      child: Column
      (
        children: <Widget>
        [
          Expanded(
              child:  Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567575046&di=54ae953d7fe4db148e5b871b22bcd7bc&imgtype=jpg&er=1&src=http%3A%2F%2Fimg.mukewang.com%2F5481656e000147ef06000338-590-330.jpg',width: 145),
          ),
           
            Expanded(
              child:  Container
              (
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column
                (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>
                  [
                    Text('新东方【领导力】',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                    Container
                    (
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(top: 5),
                      child:  Text('互联网畅互联网畅互联网畅',overflow: TextOverflow.ellipsis),
                    )
                  ],
                )
              )
            )
           

        ],
      ),
    )
    )
    );
    
    
    
    
    
    
    
    
    
     
  }

}

class Jion extends StatelessWidget 
{
  const Jion({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container
    (
      margin: EdgeInsets.only(top: 10),
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(12, 0, 12, 20),
      child: Column
      (
        children: <Widget>
        [
            Container(child: Text('文理学院招生',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),alignment: Alignment.centerLeft, height: 60),
            InkWell
             (
             child: Container
             (
              //  color: Colors.yellow,
               height: 150,
               child: ClipRRect(
                 borderRadius: BorderRadius.circular(6),
                 child:  Image.asset('images/test1.png')
               ) 
             ),
             )
           
        ],
      ),
    );
  }
}


class HomeItem extends StatelessWidget 
{
  const HomeItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return Container
    (
      margin: EdgeInsets.only(top: 8),
      padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
      height: 150,
      // color: Colors.red,
      child: Container
      (
        child: Stack(
          // alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[

            Positioned
            (
              bottom: 0,
              right: 0,
              left: 0,
              top: 10,
              child: Container(
              padding: EdgeInsets.only(left: 130),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.white
              ),
              // height: 140,
              // width: MediaQuery.of(context).size.width-24,
              child: Column
              (
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>
                [
                  Text('互联网营销的流量池思维',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                  Text('互联网营销的流量池思维互联网营销的流量池思维互联网营销的流量池思维',maxLines: 1,overflow: TextOverflow.ellipsis ,style: TextStyle(fontSize: 12)),
                  Row(
                    children: <Widget>[
                      Icon(Icons.play_circle_outline,color: Color(0xff00E0BE),size: 15,),
                      Text(' 12万人次',style: TextStyle(color: Color(0XFFA2A6B8),fontSize: 12),),
                      Text(' 4.8分',style: TextStyle(color: Colors.red,fontSize: 12))
                    ],
                  ),
                  Text('互联网营销的流量池思维'),
                ],
              ),
              
            ),
            ),
            

            Positioned(
              top: 0,
              left: 15,
              child: Container(
              child: Image.asset('images/test.png',fit: BoxFit.fill),
              height: 140,
              width: 100,
              // color: Colors.red,
            )
            ),
            
            


          ],
        ),

      ),
    );
  }
}