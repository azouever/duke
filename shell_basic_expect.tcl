#!/usr/bin/expect
spawn ./shell_basic.xkx
expect {
      "variable" {
         send "notes\r";
         exp_continue
        } 
       "next" {
         send "docx\r";
         exp_continue
      }
}