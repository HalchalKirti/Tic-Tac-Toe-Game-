module winner_detector(input [1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9, output wire winner, output wire [1:0]who);
wire win1,win2,win3,win4,win5,win6,win7,win8;
wire [1:0] who1,who2,who3,who4,who5,who6,who7,who8;
winner_detect u1(pos1,pos2,pos3,win1,who1);// (1,2,3);
winner_detect u2(pos4,pos5,pos6,win2,who2);// (4,5,6);
winner_detect u3(pos7,pos8,pos9,win3,who3);// (7,8,9);
winner_detect u4(pos1,pos4,pos7,win4,who4);// (1,4,7);
winner_detect u5(pos2,pos5,pos8,win5,who5);// (2,5,8);
winner_detect u6(pos3,pos6,pos9,win6,who6);// (3,6,9);
winner_detect u7(pos1,pos5,pos9,win7,who7);// (1,5,9);
winner_detect u8(pos3,pos5,pos6,win8,who8);// (3,5,7);
assign winner = (((((((win1 | win2) | win3) | win4) | win5) | win6) | win7) | win8);
assign who = (((((((who1 | who2) | who3) | who4) | who5) | who6) | who7) | who8);
endmodule 