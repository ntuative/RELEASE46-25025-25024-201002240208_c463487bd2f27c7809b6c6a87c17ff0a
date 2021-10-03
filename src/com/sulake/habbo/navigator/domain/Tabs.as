package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_587:int = 6;
      
      public static const const_204:int = 5;
      
      public static const const_674:int = 2;
      
      public static const const_289:int = 9;
      
      public static const const_321:int = 4;
      
      public static const const_243:int = 2;
      
      public static const const_709:int = 4;
      
      public static const const_212:int = 8;
      
      public static const const_575:int = 7;
      
      public static const const_267:int = 3;
      
      public static const const_291:int = 1;
      
      public static const const_203:int = 5;
      
      public static const const_394:int = 12;
      
      public static const const_334:int = 1;
      
      public static const const_691:int = 11;
      
      public static const const_564:int = 3;
      
      public static const const_1510:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_370:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_370 = new Array();
         var_370.push(new Tab(_navigator,const_291,const_394,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_417));
         var_370.push(new Tab(_navigator,const_243,const_334,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_417));
         var_370.push(new Tab(_navigator,const_321,const_691,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_880));
         var_370.push(new Tab(_navigator,const_267,const_204,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_417));
         var_370.push(new Tab(_navigator,const_203,const_212,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_635));
         setSelectedTab(const_291);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_370)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_370)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_370)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_321;
      }
      
      public function get tabs() : Array
      {
         return var_370;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
