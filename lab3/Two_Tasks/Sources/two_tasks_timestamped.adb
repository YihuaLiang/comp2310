-- Complete this procedure according to the lab sheet
with Ada.Text_IO;  use Ada.Text_IO;
with Ada.Calendar; use Ada.Calendar;

procedure Two_Tasks_Timestamped is

   task First_One;
   task Second_One;


   Delay_Per_Iteration : constant Duration := 1.0;
   Start_Up_Time : constant Time := Clock;

   task body First_One is
      Time_task_1 : constant Time := Clock;
   begin
      Put ("Hello task_first ");
      New_Line;
      Put (Day_Number'Image  ( Day (Time_task_1) ) &"." );
      Put (Month_Number'Image ( Month (Time_task_1) ) & "." );
      Put (Year_Number'Image  ( Year (Time_task_1) ) & " at");
      Put (Day_Duration'Image ( Seconds (Time_task_1) ) & " seconds");
      New_Line;
      Put_Line ("and goodbye world from task 1");
      New_Line;
      delay until Start_Up_Time + 1 * Delay_Per_Iteration;
   end First_One;

   task body Second_One is
      Time_task_2 : constant Time := Clock;
   begin
      Put ("Hello task_second ");
      New_Line;
      Put (Day_Number'Image  ( Day (Time_task_2) ) &"." );
      Put (Month_Number'Image ( Month (Time_task_2) ) & "." );
      Put (Year_Number'Image  ( Year (Time_task_2) ) & " at");
      Put (Day_Duration'Image ( Seconds (Time_task_2) ) & " seconds");
      New_Line;
      Put_Line ("and goodbye world from task 2");
      New_Line;
      delay until Start_Up_Time + 2 * Delay_Per_Iteration;
   end Second_One;

begin
   declare
      Time_procedure : constant Time := Clock;
   begin
      Put ("Hello two_tasks ");
      New_Line;
      Put (Day_Number'Image  ( Day (Time_procedure) ) &".");
      Put (Month_Number'Image ( Month (Time_procedure) ) & ".");
      Put (Year_Number'Image  ( Year (Time_procedure) ) & " at");
      Put (Day_Duration'Image ( Seconds (Time_procedure) ) & " seconds");
      New_Line;
      Put_Line ("and goodbye world from Two_Tasks");
      New_Line;
      delay until Start_Up_Time + 3 * Delay_Per_Iteration;
   end;
end Two_Tasks_Timestamped;
