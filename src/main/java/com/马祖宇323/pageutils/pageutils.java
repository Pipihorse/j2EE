package com.马祖宇323.pageutils;


/**
 * @Author 皮皮马
 * @create 2020-5-9 18:56
 */
public class pageutils {
    public static page createpage(int everypage, int totalcount, int currentpage){
        everypage=getEverypage(everypage);
        totalcount=getTotalcount(totalcount);
        int totalpage=getTotalpage(everypage,totalcount);
        int beginIndex=getbeginIndex(everypage,currentpage);
        boolean hasPrePageint=gethasPrePageint(currentpage);
        boolean hasNextPage=gethasNextPage(currentpage,totalpage);
        return  new page(everypage,totalcount,totalpage,currentpage,beginIndex,hasPrePageint,hasNextPage);

    }

    public static int getEverypage(int everypage){
        if(everypage==0){
            everypage=5;
        }
        return everypage;
    }
    public static int getTotalcount(int totalcount){
        return totalcount;
    }
    public static int getTotalpage(int everypage,int totalcount){
        if(everypage%totalcount==0) {
            return totalcount/everypage;
        }
        else {
            return totalcount/everypage + 1;
        }
    }
    public static int getbeginIndex(int everypage,int currentpage){
        return (everypage-1)*currentpage;
    }
    public static boolean gethasPrePageint (int currentpage){
        if (currentpage==0) {
            return false;
        }else {
            return true;
        }
    }
    public static boolean gethasNextPage(int currentpage,int totalpage){
        if (currentpage==totalpage){
            return false;
        }else {
            return true;
        }
    }
}
