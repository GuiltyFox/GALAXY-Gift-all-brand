.class Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;
.super Ljava/lang/Object;
.source "CampaignDetailAdBuzzActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

.field private final synthetic val$response_code:I

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    iput p2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->val$response_code:I

    iput-object p3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->val$response_text:Ljava/lang/String;

    .line 1854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;
    .registers 2

    .prologue
    .line 1854
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 23

    .prologue
    .line 1857
    move-object/from16 v0, p0

    iget v0, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->val$response_code:I

    move/from16 v19, v0

    const/16 v20, 0xc8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3ab

    .line 1858
    const-wide/16 v13, 0x0

    .line 1860
    .local v13, "points":J
    :try_start_10
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1861
    .local v9, "jsonRoot":Lorg/json/JSONObject;
    const-string v19, "buzzebees"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 1862
    .local v8, "jsonBuzzebees":Lorg/json/JSONObject;
    const-string v19, "points"

    move-object/from16 v0, v19

    invoke-static {v8, v0}, Lic/buzzebeeslib/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2c} :catch_be

    move-result-wide v13

    .line 1867
    .end local v8    # "jsonBuzzebees":Lorg/json/JSONObject;
    .end local v9    # "jsonRoot":Lorg/json/JSONObject;
    :goto_2d
    const-string v17, ""

    .line 1869
    .local v17, "strAdsMessage":Ljava/lang/String;
    :try_start_2f
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1870
    .restart local v9    # "jsonRoot":Lorg/json/JSONObject;
    const-string v19, "AdsMessage"

    move-object/from16 v0, v19

    invoke-static {v9, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_43} :catch_c3

    move-result-object v17

    .line 1875
    .end local v9    # "jsonRoot":Lorg/json/JSONObject;
    :goto_44
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-object/from16 v19, v0

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static/range {v19 .. v19}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1876
    .local v5, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v4, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1$1;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;)V

    .line 1915
    .local v4, "btnYes":Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1$2;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;)V

    .line 1921
    .local v3, "btnNo":Landroid/content/DialogInterface$OnClickListener;
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v19, "###,###,###"

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1922
    .local v7, "formatter":Ljava/text/NumberFormat;
    move-wide v15, v13

    .line 1923
    .local v15, "points_final":J
    const-string v18, ""

    .line 1924
    .local v18, "strDialog":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-object/from16 v19, v0

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static/range {v19 .. v19}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v19

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static/range {v19 .. v19}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$1(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "6"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c8

    .line 1925
    move-object/from16 v18, v17

    .line 1926
    sget v19, Lic/buzzebeeslib/R$string;->survey_dialog_congrats_title:I

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const-string v20, "Yes"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const-string v20, "No"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1951
    :goto_b6
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1952
    .local v2, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1973
    .end local v2    # "alert":Landroid/app/AlertDialog;
    .end local v3    # "btnNo":Landroid/content/DialogInterface$OnClickListener;
    .end local v4    # "btnYes":Landroid/content/DialogInterface$OnClickListener;
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v7    # "formatter":Ljava/text/NumberFormat;
    .end local v13    # "points":J
    .end local v15    # "points_final":J
    .end local v17    # "strAdsMessage":Ljava/lang/String;
    .end local v18    # "strDialog":Ljava/lang/String;
    :goto_bd
    return-void

    .line 1863
    .restart local v13    # "points":J
    :catch_be
    move-exception v6

    .line 1864
    .local v6, "e":Ljava/lang/Exception;
    const-wide/16 v13, 0x0

    goto/16 :goto_2d

    .line 1871
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v17    # "strAdsMessage":Ljava/lang/String;
    :catch_c3
    move-exception v6

    .line 1872
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v17, ""

    goto/16 :goto_44

    .line 1927
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v3    # "btnNo":Landroid/content/DialogInterface$OnClickListener;
    .restart local v4    # "btnYes":Landroid/content/DialogInterface$OnClickListener;
    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v7    # "formatter":Ljava/text/NumberFormat;
    .restart local v15    # "points_final":J
    .restart local v18    # "strDialog":Ljava/lang/String;
    :cond_c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-object/from16 v19, v0

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static/range {v19 .. v19}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v19

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static/range {v19 .. v19}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$1(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "5"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_25d

    .line 1928
    move-object/from16 v18, v17

    .line 1929
    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_23c

    .line 1930
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-object/from16 v19, v0

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static/range {v19 .. v19}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v19

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static/range {v19 .. v19}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$1(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAction:Lic/buzzebeeslib/bean/CampaignExtraAction;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtraAction;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "none"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_18f

    .line 1931
    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-object/from16 v20, v0

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static/range {v20 .. v20}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v20

    sget v21, Lic/buzzebeeslib/R$string;->survey_dialog_congrats1:I

    invoke-virtual/range {v20 .. v21}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lic/buzzebeeslib/util/BBUtil;->CTypeLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-object/from16 v20, v0

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static/range {v20 .. v20}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v20

    sget v21, Lic/buzzebeeslib/R$string;->market_point:I

    invoke-virtual/range {v20 .. v21}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1932
    sget v19, Lic/buzzebeeslib/R$string;->survey_dialog_congrats_title:I

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const-string v20, "OK"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_b6

    .line 1934
    :cond_18f
    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-object/from16 v20, v0

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static/range {v20 .. v20}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v20

    sget v21, Lic/buzzebeeslib/R$string;->survey_dialog_congrats1:I

    invoke-virtual/range {v20 .. v21}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lic/buzzebeeslib/util/BBUtil;->CTypeLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-object/from16 v20, v0

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static/range {v20 .. v20}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v20

    sget v21, Lic/buzzebeeslib/R$string;->survey_dialog_congrats2:I

    invoke-virtual/range {v20 .. v21}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-object/from16 v20, v0

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static/range {v20 .. v20}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v20

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static/range {v20 .. v20}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$1(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAction:Lic/buzzebeeslib/bean/CampaignExtraAction;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtraAction;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1935
    sget v19, Lic/buzzebeeslib/R$string;->survey_dialog_congrats_title:I

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const-string v20, "Yes"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const-string v20, "No"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_b6

    .line 1938
    :cond_23c
    sget v19, Lic/buzzebeeslib/R$string;->survey_dialog_congrats_title:I

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const-string v20, "OK"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_b6

    .line 1942
    :cond_25d
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-object/from16 v19, v0

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static/range {v19 .. v19}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v19

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static/range {v19 .. v19}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$1(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAction:Lic/buzzebeeslib/bean/CampaignExtraAction;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtraAction;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "none"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2fe

    .line 1943
    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-object/from16 v20, v0

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static/range {v20 .. v20}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v20

    sget v21, Lic/buzzebeeslib/R$string;->survey_dialog_congrats1:I

    invoke-virtual/range {v20 .. v21}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lic/buzzebeeslib/util/BBUtil;->CTypeLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-object/from16 v20, v0

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static/range {v20 .. v20}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v20

    sget v21, Lic/buzzebeeslib/R$string;->market_point:I

    invoke-virtual/range {v20 .. v21}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1944
    sget v19, Lic/buzzebeeslib/R$string;->survey_dialog_congrats_title:I

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const-string v20, "OK"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_b6

    .line 1946
    :cond_2fe
    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-object/from16 v20, v0

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static/range {v20 .. v20}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v20

    sget v21, Lic/buzzebeeslib/R$string;->survey_dialog_congrats1:I

    invoke-virtual/range {v20 .. v21}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lic/buzzebeeslib/util/BBUtil;->CTypeLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-object/from16 v20, v0

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static/range {v20 .. v20}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v20

    sget v21, Lic/buzzebeeslib/R$string;->survey_dialog_congrats2:I

    invoke-virtual/range {v20 .. v21}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-object/from16 v20, v0

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static/range {v20 .. v20}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v20

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static/range {v20 .. v20}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$1(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAction:Lic/buzzebeeslib/bean/CampaignExtraAction;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lic/buzzebeeslib/bean/CampaignExtraAction;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1947
    sget v19, Lic/buzzebeeslib/R$string;->survey_dialog_congrats_title:I

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const-string v20, "Yes"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const-string v20, "No"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_b6

    .line 1955
    .end local v3    # "btnNo":Landroid/content/DialogInterface$OnClickListener;
    .end local v4    # "btnYes":Landroid/content/DialogInterface$OnClickListener;
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v7    # "formatter":Ljava/text/NumberFormat;
    .end local v13    # "points":J
    .end local v15    # "points_final":J
    .end local v17    # "strAdsMessage":Ljava/lang/String;
    .end local v18    # "strDialog":Ljava/lang/String;
    :cond_3ab
    const-string v12, ""

    .line 1958
    .local v12, "message":Ljava/lang/String;
    :try_start_3ad
    new-instance v11, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1959
    .local v11, "json_result":Lorg/json/JSONObject;
    const-string v19, "error"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 1960
    .local v10, "json_error":Lorg/json/JSONObject;
    const-string v19, "message"

    move-object/from16 v0, v19

    invoke-static {v10, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3c9
    .catch Ljava/lang/Exception; {:try_start_3ad .. :try_end_3c9} :catch_402

    move-result-object v12

    .line 1965
    .end local v10    # "json_error":Lorg/json/JSONObject;
    .end local v11    # "json_result":Lorg/json/JSONObject;
    :goto_3ca
    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3e4

    .line 1966
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-object/from16 v19, v0

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static/range {v19 .. v19}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v19

    sget v20, Lic/buzzebeeslib/R$string;->survey_submit_fail:I

    invoke-virtual/range {v19 .. v20}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1969
    :cond_3e4
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-object/from16 v19, v0

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static/range {v19 .. v19}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v19

    move-object/from16 v0, v19

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v12}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;Ljava/lang/String;)V

    .line 1970
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-object/from16 v19, v0

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static/range {v19 .. v19}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->finish()V

    goto/16 :goto_bd

    .line 1961
    :catch_402
    move-exception v6

    .line 1962
    .restart local v6    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;

    move-object/from16 v19, v0

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static/range {v19 .. v19}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v19

    sget v20, Lic/buzzebeeslib/R$string;->survey_submit_fail:I

    invoke-virtual/range {v19 .. v20}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_3ca
.end method
