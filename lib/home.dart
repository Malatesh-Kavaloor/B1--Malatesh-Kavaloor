import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key:key);

  List<String> imagesList=[
    "https://media.istockphoto.com/id/1437816897/photo/business-woman-manager-or-human-resources-portrait-for-career-success-company-we-are-hiring.webp?b=1&s=170667a&w=0&k=20&c=YQ_j83pg9fB-HWOd1Qur3_kBmG_ot_hZty8pvoFkr6A=",
    "https://media.istockphoto.com/id/1419924285/photo/concept-of-new-ideas-and-innovation.jpg?s=612x612&w=0&k=20&c=7BOwaAIzoSEdxLvkoXkcxibxAiL_NoYj_gdjxRiECU0=",
    "https://media.istockphoto.com/id/1301374985/vector/customer-acquisition-concept-hand-with-a-magnet-attracts-new-consumers.jpg?s=612x612&w=0&k=20&c=xdyADgHmWFVN9HZ_BNn_JafWqQOO8TVkEomWQYZQsu4=",
    "https://media.istockphoto.com/id/902922438/photo/standing-out-from-the-crowd-with-smiling-sphere.jpg?s=612x612&w=0&k=20&c=QRk57yqoFN8zDhy57oGrQ9zCghvDrt085llVSZjt7Vc=",
    "https://media.istockphoto.com/id/479550252/photo/boat-in-bangladesh-river.jpg?s=612x612&w=0&k=20&c=cWVbNbJn9iPnaXPXtPnlUtcgcDtXVWQVafi4A1T9LYA=",
    "https://media.istockphoto.com/id/654238540/photo/pencil-light-bulb.jpg?s=612x612&w=0&k=20&c=urZl-wzyAxp3lObhE2VWnZrCYVXH6kPO73UrUz5hmKo=",
    "https://media.istockphoto.com/id/1169662144/photo/frozen-light-sky-blue-leaves-pattern.jpg?s=612x612&w=0&k=20&c=4xPGpfTr4Ck0SUw_Eu6O7HUP98MEqL0fswlqL4-eLQU=",
    "https://media.istockphoto.com/id/506910700/photo/i-can-do-it.jpg?s=612x612&w=0&k=20&c=4r5UQKSwjtVyLai0R0B38RJXX2SFr0TpK4JFSWnVCfQ=",
    "https://media.istockphoto.com/id/840443226/photo/coffee-for-morning.jpg?s=612x612&w=0&k=20&c=SXc152jhObpptJfJaS7yULMIkfcYZTOtG20q17RHoBA=",
    "https://media.istockphoto.com/id/1325525862/photo/clock-dispersing-in-hand.jpg?s=612x612&w=0&k=20&c=k9C_h2ESz0DOi7hRFk2C_zNm5z9B3fSImXbqss09F9s=",
    "https://media.istockphoto.com/id/1148751496/photo/black-colour-pencil-with-outline-to-end-point-on-white-paper-background-creativity.jpg?s=612x612&w=0&k=20&c=5dB4USt0Wr__BhCCljk2OfgPr_Ir_rJfUe7r32QgCII=",
    "https://media.istockphoto.com/id/639144254/photo/time-for-change-concept-of-new-life.jpg?s=612x612&w=0&k=20&c=wfwJRtjhO1PA1gdBDWVj5441nULndojPhDwIXhwj8h4=",
    "https://media.istockphoto.com/id/667315360/photo/helping-hikers.jpg?s=612x612&w=0&k=20&c=RSTdI5q9lxzBFabigOLR7tX-7RkiSsRxjc5mTGKosnc=",
    "https://media.istockphoto.com/id/1043441246/photo/freedom-concept.jpg?s=612x612&w=0&k=20&c=yk9Tg2uQe2E89R9cDey2tyGYDrmBOn6splhs251_cC0=",
    "https://media.istockphoto.com/id/1138429183/photo/detail-of-glass-explosion.jpg?s=612x612&w=0&k=20&c=a_Xr4AF0tLl_pJYhE9VRb-408LgdgWX3PC1bRG3Sy68=",
    "https://media.istockphoto.com/id/594938432/photo/surrealistic-door-to-freedom.jpg?s=612x612&w=0&k=20&c=4uRkZPLW-bBXdILlqY-5QtUP_YxfQJFaJqK8jKXm2Ew=",
    "https://media.istockphoto.com/id/171582907/photo/birth-of-new-lives.jpg?s=612x612&w=0&k=20&c=EpmH6SpiN0xecKqr0p9Pu2d4XMnhxzamylDR33avi4M=",
    "https://slp-statics.astockcdn.net/static_assets/staging/23fall/home/curated-collections/card-5.jpg?width=580&format=webp",
    "https://slp-statics.astockcdn.net/static_assets/staging/23fall/home/curated-collections/card-3.jpg?width=580&format=webp",
    "https://t3.ftcdn.net/jpg/06/29/90/82/240_F_629908238_qqx93q8G1UbCvg3gvGQzdKrBuvwkWk8Y.jpg",
    "https://t4.ftcdn.net/jpg/06/31/39/53/240_F_631395330_KXB9NM4VPnaM8D2iZf32jLzYtJ7MKPGM.jpg",
    "https://t4.ftcdn.net/jpg/06/25/30/23/240_F_625302348_3glf0mUo1BXKcwf7DxyxjKRG03qpTO6a.jpg",
    "https://t4.ftcdn.net/jpg/06/33/76/11/240_F_633761115_0ZY10b4jezNlLCuiwm7cghuMHYKH59fc.jpg",
    "https://t3.ftcdn.net/jpg/06/33/93/18/240_F_633931860_o5xi3svJJx2TpdvXdXG5wh9MK1dTxlvN.jpg",
    "https://t4.ftcdn.net/jpg/06/17/36/55/240_F_617365576_cqGcj9LnFrDDI6WnzCezG8ePnH29LOmX.jpg",
    "https://t4.ftcdn.net/jpg/06/13/91/43/240_F_613914317_9b4KR4hMfxzvb9N0w3lgFJw1qO4tLCNj.jpg",
    "https://t3.ftcdn.net/jpg/06/32/92/60/240_F_632926071_Vrfq9N2oGIdf4r9tghw2I4dXrbmrLOsW.jpg",
    "https://t3.ftcdn.net/jpg/06/21/79/86/240_F_621798686_UBj4sGOj3e1UGB97bFc1TgteHh7lJQcn.jpg",
    "https://t3.ftcdn.net/jpg/06/10/63/80/240_F_610638097_iq02DEAShXtBEc5u6jhwdfvs2MOvReQY.jpg",
    "https://t3.ftcdn.net/jpg/06/21/72/08/240_F_621720802_bGFoTYUYNOtxDCchQIyW5txvk9PXxxkZ.jpg",
    "https://t4.ftcdn.net/jpg/06/19/47/97/240_F_619479775_vONbOooTic90NxI61tKzRkT31cRlbYMD.jpg",
    "https://t4.ftcdn.net/jpg/06/32/02/33/240_F_632023340_EQj0A2RhXmokWFJ5I6XP0F3S8pvk7aS3.jpg",
    "https://t3.ftcdn.net/jpg/06/05/13/46/240_F_605134622_3ODUbzp0n7JAmZpsVOMOqp0SzWJkBDXz.jpg",
    "https://t4.ftcdn.net/jpg/06/21/82/17/240_F_621821713_1Dll5fUo9A8K63WQxlfl8U1JDCvbBxpL.jpg",
    "https://t3.ftcdn.net/jpg/06/12/65/86/240_F_612658648_MsPo9BMRPphFerwuiYOdP9A1nNN0TNHv.jpg",
    "https://t4.ftcdn.net/jpg/06/30/30/41/240_F_630304115_hSlDk0eDO3s1l1qqIoS5WUPjA9HZ5NU4.jpg",
    "https://t4.ftcdn.net/jpg/06/29/98/57/240_F_629985702_s07JxVCzAw7sKz9nqUp5SgsvQllPXnQy.jpg",
    "https://t4.ftcdn.net/jpg/06/19/47/95/240_F_619479572_bHPhf6sAbjIk6MQrH3sGt1UKpXUTCtQg.jpg",
    "https://t3.ftcdn.net/jpg/06/27/37/14/240_F_627371465_EnhQddtWSgRLL5jNU0lmmvXXbfzVIhBS.jpg",
    "https://t4.ftcdn.net/jpg/06/12/67/73/240_F_612677304_hCVbgbkhKiFczD27Ph4YS5leFCElAkZ3.jpg",
    "https://t3.ftcdn.net/jpg/06/17/28/64/240_F_617286450_mGuMiShLGDhWVneHJosVY5iYcf4Ok8G0.jpg",
    "https://t4.ftcdn.net/jpg/06/19/47/97/240_F_619479775_vONbOooTic90NxI61tKzRkT31cRlbYMD.jpg",
    "https://t4.ftcdn.net/jpg/06/02/89/43/240_F_602894324_sHDbrX6TcdjoylnPxVkFEuP1MWd2R8D0.jpg",
    "https://t3.ftcdn.net/jpg/06/03/10/82/240_F_603108248_GMI3aby64CbwGESbIxNVUNL4y41glVw6.jpg",
    "https://t3.ftcdn.net/jpg/06/20/79/56/240_F_620795672_sBb8sKJIx4aNIeGPvklcKOopdEfR0meJ.jpg",
    "https://t3.ftcdn.net/jpg/06/31/23/00/240_F_631230056_dUit9WRXE08eipEqLpg7DvmBBtpW6Svl.jpg",
    "https://t3.ftcdn.net/jpg/06/21/87/32/240_F_621873270_KBjRWKYqCBe1QmvxBPM40aX2pi9Ih4IM.jpg",
    "https://t4.ftcdn.net/jpg/06/30/70/71/240_F_630707190_L2TBi8aMInGV23JCwDrDo5RcJCEEVy3U.jpg",
    "https://t3.ftcdn.net/jpg/06/09/04/22/240_F_609042292_hZ0pqIPdfRan9skJ3rjBILuz2WiRxwE9.jpg",
    "https://t4.ftcdn.net/jpg/06/32/02/33/240_F_632023340_EQj0A2RhXmokWFJ5I6XP0F3S8pvk7aS3.jpg",
    "https://t4.ftcdn.net/jpg/06/15/75/61/240_F_615756156_OfVGjCTUvSaLDpSlzNdGImcdsqSCxGoA.jpg",
    "https://t4.ftcdn.net/jpg/06/19/91/99/240_F_619919945_UOfJ844Zk75RqCaNPT4RvAYmi347i4HJ.jpg",
    "https://t3.ftcdn.net/jpg/06/27/14/72/240_F_627147274_os1Cd1ZvIQQ2sTMIk7wtOAgZPTrj4J3X.jpg",
    "https://t3.ftcdn.net/jpg/06/31/05/10/240_F_631051072_OFhygPvDYrz876ek2D4y4zglaVUv75qY.jpg",
    "https://t3.ftcdn.net/jpg/06/19/19/24/240_F_619192424_VzjrNeHB9zY5hH4Ky8J6Qd6iRptr8A6T.jpg",
    "https://t3.ftcdn.net/jpg/06/07/51/48/240_F_607514892_zlO2ioTcJLzUSkZakpRZou4O8byJtNmY.jpg",
    "https://t3.ftcdn.net/jpg/06/12/66/20/240_F_612662035_ka7PXScSRsZ7yZNE8LHdXaklY3k1GoYv.jpg",
    "https://t3.ftcdn.net/jpg/06/27/68/24/240_F_627682425_jWFcnHIppsCs7R2uSdPBkLDT1UsBBnAE.jpg",
    "https://t4.ftcdn.net/jpg/06/20/14/43/240_F_620144399_BrLmEdm6RWu7CYfYvGDGuAVlLriVlw4h.jpg",
    "https://t3.ftcdn.net/jpg/03/10/62/12/360_F_310621281_foEqKBGtGlNWFQRePgdF5BpLOFyTsnzO.jpg",
    "https://t3.ftcdn.net/jpg/00/38/59/44/360_F_38594431_y0XRoIsqk7hj1VLv8WzNFuccl2OTmpia.jpg",
    "https://t3.ftcdn.net/jpg/01/13/18/60/360_F_113186099_1eMxM1TR8jVomSnqplYjmlL9bdnWL2eD.jpg",
    "https://t3.ftcdn.net/jpg/06/22/01/32/360_F_622013228_SBTJ6nr5VCR3c6ekPtyuZokCjORtnqKN.jpg",
    "https://t3.ftcdn.net/jpg/06/23/34/80/360_F_623348089_5IDWTneSdGNOF3oDQGx3l6reGWpxuQJv.webp",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              itemCount: imagesList.length,
              gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8),
              itemBuilder: (context, index){
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(imagesList[index]),
                          fit: BoxFit.cover)
                  ),
                );
              }),
        ),
      ),
    );
  }
}
