import 'package:test/test.dart';

import '../lib/json_parsing.dart';

void main() {
  test("parses topstories.json", () {
    const jsonString =
        "[21107730,21108665,21111251,21108021,21104023,21110425,21101918,21110985,21106611,21103780,21111329,21107684,21095386,21110318,21109801,21109629,21111907,21110838,21110356,21104552,21106170,21108357,21110605,21103683,21107681,21109670,21107747,21104341,21104229,21104698,21109731,21112176,21112160,21109609,21105625,21107072,21111011,21112058,21104037,21096952,21111903,21110156,21104912,21107091,21107310,21110882,21103745,21111259,21103853,21100274,21088425,21111905,21108242,21105895,21106202,21105800,21106662,21107532,21096666,21104926,21109757,21108331,21106456,21095766,21094231,21109993,21109412,21105528,21110952,21099996,21110164,21103279,21087901,21111147,21107038,21104762,21100970,21103768,21107231,21106628,21099344,21106649,21095272,21107424,21088583,21103805,21104414,21105388,21101478,21104176,21108510,21110455,21107628,21111032,21092136,21108679,21092363,21108243,21106146,21106607,21109546,21110937,21103505,21104302,21087660,21110699,21105576,21099110,21107706,21106581,21103109,21093512,21103001,21107687,21093129,21105879,21099921,21110292,21096062,21104540,21090685,21096679,21101065,21096941,21102257,21107107,21103345,21100734,21099734,21100210,21102256,21085171,21105740,21089079,21097139,21081756,21093727,21109232,21086866,21100588,21082535,21104033,21100971,21098942,21108014,21102642,21101351,21095821,21103229,21082845,21102408,21100404,21082757,21090288,21094814,21095155,21093003,21100048,21096864,21095159,21095438,21095747,21080132,21085931,21099778,21080606,21103027,21103659,21095448,21100377,21094040,21092698,21099918,21102560,21102621,21108261,21099771,21100128,21093907,21109275,21106415,21096653,21100202,21087383,21102109,21099205,21110023,21096154,21097963,21084873,21082181,21103647,21102245,21095164,21085828,21093729,21103040,21086331,21099658,21106421,21103179,21079908,21093636,21086345,21106983,21090933,21087821,21086031,21096521,21099871,21109039,21086035,21108527,21097723,21102403,21091611,21085912,21108937,21109642,21096887,21079968,21085603,21101715,21091221,21080135,21091576,21103796,21099824,21085749,21086666,21080512,21085651,21082890,21095554,21078070,21081098,21104158,21079944,21108396,21093784,21101027,21089808,21098728,21091729,21106520,21089927,21091597,21097706,21089825,21081060,21084748,21085495,21078068,21080346,21095863,21085940,21085214,21103432,21088046,21091193,21085388,21095270,21104945,21079706,21100117,21095199,21097417,21091180,21103129,21094894,21098979,21093347,21082625,21099170,21092528,21107056,21086927,21082523,21095222,21103706,21100196,21099724,21091616,21085736,21084832,21079841,21086117,21086461,21097110,21085720,21092596,21083620,21080305,21085989,21096912,21104315,21085323,21100233,21087941,21102013,21096902,21082994,21098125,21102432,21085946,21083850,21083173,21079643,21092855,21078183,21103544,21092365,21080271,21103418,21079844,21106964,21099468,21107355,21085588,21080212,21107979,21080090,21091219,21103058,21105839,21088690,21100321,21081917,21083092,21110040,21102658,21084209,21077546,21092770,21095430,21079242,21089204,21080832,21089707,21077943,21087980,21097035,21083709,21084317,21101178,21089075,21095179,21084060,21095700,21100994,21097204,21082123,21097553,21106346,21098622,21088921,21077275,21099858,21080308,21098035,21106471,21097942,21106455,21099669,21085751,21094666,21099333,21079896,21080361,21081811,21079831,21103008,21099045,21084254,21099009,21077195,21106093,21078921,21088648,21095775,21085519,21102166,21080719,21092063,21105862,21103644,21083017,21098038,21082324,21097834,21086013,21097787,21103086,21101677,21105945,21083800,21086664,21100843,21096357,21089894,21086736,21085546,21109099,21105107,21079745,21105066,21099530,21104954,21085727,21084423,21091240,21099810,21100973,21082185,21081570,21091907,21106963,21090837,21085648,21104056,21085361,21084867,21098658,21098140,21103872,21084224,21099695,21078577,21089330,21082423,21082263,21100901,21077634,21081300,21085969,21099609,21087091,21106357,21085934,21096432,21097808,21086899,21086749,21098631,21086483,21098282,21085927,21078319,21085631,21085492,21086006,21098070,21099313,21082359,21101344,21101288,21101219,21095483,21081444,21082698,21095309,21091974,21080977,21084136,21093966,21097027,21080204,21100265,21080588,21096762,21081307,21097060,21095476,21097923,21096478,21099637,21088846,21097792,21080007,21099234,21092973,21094640,21099175,21094547,21093822,21091725,21089000,21091457,21078937,21078758,21077354,21095431,21094647,21080513,21094343,21089863,21094086,21083272,21093723,21092890]";

    expect(parseTopStories(jsonString).first, 21107730);
  });

  test("parses item.json", () {
    const jsonString =
        '{"by":"lelf","descendants":34,"id":21107730,"kids":[21112031,21112313,21112126,21111996,21111544,21112251,21112226,21111871,21112171,21111662],"score":123,"time":1569772520,"title":"Which companies are using Erlang, and why?","type":"story","url":"https://www.erlang-solutions.com/blog/which-companies-are-using-erlang-and-why-mytopdogstatus.html"}';

    expect(parseArticle(jsonString).by, 'lelf');
  });
}
