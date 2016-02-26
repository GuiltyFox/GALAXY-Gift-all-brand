.class Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;

.field private final synthetic val$response_code:I

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;

    iput p2, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;->val$response_code:I

    iput-object p3, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;->val$response_text:Ljava/lang/String;

    .line 2197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;)Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;
    .registers 2

    .prologue
    .line 2197
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 23

    .prologue
    .line 2200
    move-object/from16 v0, p0

    iget v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;->val$response_code:I

    move/from16 v19, v0

    const/16 v20, 0xc8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3d0

    .line 2201
    const-wide/16 v14, 0x0

    .line 2203
    .local v14, "points":J
    :try_start_10
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2204
    .local v9, "jsonRoot":Lorg/json/JSONObject;
    const-string v19, "buzzebees"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 2205
    .local v8, "jsonBuzzebees":Lorg/json/JSONObject;
    const-string v19, "points"

    move-object/from16 v0, v19

    invoke-static {v8, v0}, Lic/buzzebeeslib/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2c} :catch_e3

    move-result-wide v14

    .line 2210
    .end local v8    # "jsonBuzzebees":Lorg/json/JSONObject;
    .end local v9    # "jsonRoot":Lorg/json/JSONObject;
    :goto_2d
    const-wide/16 v20, 0x0

    cmp-long v19, v14, v20

    if-lez v19, :cond_51

    .line 2211
    long-to-int v0, v14

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v20, v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static/range {v20 .. v20}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v20

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->gHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$34(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Landroid/os/Handler;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v21, v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static/range {v21 .. v21}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lic/buzzebeeslib/util/AnimationPoint;->showToastPoints(ILandroid/os/Handler;Landroid/app/Activity;)V

    .line 2214
    :cond_51
    const-string v13, ""

    .line 2216
    .local v13, "strAdsMessage":Ljava/lang/String;
    :try_start_53
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2217
    .restart local v9    # "jsonRoot":Lorg/json/JSONObject;
    const-string v19, "AdsMessage"

    move-object/from16 v0, v19

    invoke-static {v9, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_67} :catch_e8

    move-result-object v13

    .line 2222
    .end local v9    # "jsonRoot":Lorg/json/JSONObject;
    :goto_68
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v19, v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static/range {v19 .. v19}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2223
    .local v5, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v4, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1$1;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;)V

    .line 2273
    .local v4, "btnYes":Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1$2;-><init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;)V

    .line 2279
    .local v3, "btnNo":Landroid/content/DialogInterface$OnClickListener;
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v19, "###,###,###"

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 2280
    .local v7, "formatter":Ljava/text/NumberFormat;
    move-wide/from16 v16, v14

    .line 2281
    .local v16, "points_final":J
    const-string v18, ""

    .line 2282
    .local v18, "strDialog":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v19, v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static/range {v19 .. v19}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v19

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static/range {v19 .. v19}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$8(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "6"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_ed

    .line 2283
    move-object/from16 v18, v13

    .line 2284
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

    .line 2308
    :goto_db
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 2309
    .local v2, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 2330
    .end local v2    # "alert":Landroid/app/AlertDialog;
    .end local v3    # "btnNo":Landroid/content/DialogInterface$OnClickListener;
    .end local v4    # "btnYes":Landroid/content/DialogInterface$OnClickListener;
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v7    # "formatter":Ljava/text/NumberFormat;
    .end local v13    # "strAdsMessage":Ljava/lang/String;
    .end local v14    # "points":J
    .end local v16    # "points_final":J
    .end local v18    # "strDialog":Ljava/lang/String;
    :goto_e2
    return-void

    .line 2206
    .restart local v14    # "points":J
    :catch_e3
    move-exception v6

    .line 2207
    .local v6, "e":Ljava/lang/Exception;
    const-wide/16 v14, 0x0

    goto/16 :goto_2d

    .line 2218
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v13    # "strAdsMessage":Ljava/lang/String;
    :catch_e8
    move-exception v6

    .line 2219
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v13, ""

    goto/16 :goto_68

    .line 2285
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v3    # "btnNo":Landroid/content/DialogInterface$OnClickListener;
    .restart local v4    # "btnYes":Landroid/content/DialogInterface$OnClickListener;
    .restart local v5    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v7    # "formatter":Ljava/text/NumberFormat;
    .restart local v16    # "points_final":J
    .restart local v18    # "strDialog":Ljava/lang/String;
    :cond_ed
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v19, v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static/range {v19 .. v19}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v19

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static/range {v19 .. v19}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$8(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "5"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_282

    .line 2286
    move-object/from16 v18, v13

    .line 2287
    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_261

    .line 2288
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v19, v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static/range {v19 .. v19}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v19

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static/range {v19 .. v19}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$8(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/bean/Campaign;

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

    if-eqz v19, :cond_1b4

    .line 2289
    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v20, v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static/range {v20 .. v20}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v20

    sget v21, Lic/buzzebeeslib/R$string;->survey_dialog_congrats1:I

    invoke-virtual/range {v20 .. v21}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

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

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v20, v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static/range {v20 .. v20}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v20

    sget v21, Lic/buzzebeeslib/R$string;->market_point:I

    invoke-virtual/range {v20 .. v21}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 2290
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

    goto/16 :goto_db

    .line 2292
    :cond_1b4
    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v20, v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static/range {v20 .. v20}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v20

    sget v21, Lic/buzzebeeslib/R$string;->survey_dialog_congrats1:I

    invoke-virtual/range {v20 .. v21}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

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

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v20, v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static/range {v20 .. v20}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v20

    sget v21, Lic/buzzebeeslib/R$string;->survey_dialog_congrats2:I

    invoke-virtual/range {v20 .. v21}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v20, v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static/range {v20 .. v20}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v20

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static/range {v20 .. v20}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$8(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/bean/Campaign;

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

    .line 2293
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

    goto/16 :goto_db

    .line 2296
    :cond_261
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

    goto/16 :goto_db

    .line 2299
    :cond_282
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v19, v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static/range {v19 .. v19}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v19

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static/range {v19 .. v19}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$8(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/bean/Campaign;

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

    if-eqz v19, :cond_323

    .line 2300
    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v20, v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static/range {v20 .. v20}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v20

    sget v21, Lic/buzzebeeslib/R$string;->survey_dialog_congrats1:I

    invoke-virtual/range {v20 .. v21}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

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

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v20, v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static/range {v20 .. v20}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v20

    sget v21, Lic/buzzebeeslib/R$string;->market_point:I

    invoke-virtual/range {v20 .. v21}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 2301
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

    goto/16 :goto_db

    .line 2303
    :cond_323
    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v20, v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static/range {v20 .. v20}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v20

    sget v21, Lic/buzzebeeslib/R$string;->survey_dialog_congrats1:I

    invoke-virtual/range {v20 .. v21}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

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

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v20, v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static/range {v20 .. v20}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v20

    sget v21, Lic/buzzebeeslib/R$string;->survey_dialog_congrats2:I

    invoke-virtual/range {v20 .. v21}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v20, v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static/range {v20 .. v20}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v20

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static/range {v20 .. v20}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$8(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)Lic/buzzebeeslib/bean/Campaign;

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

    .line 2304
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

    goto/16 :goto_db

    .line 2312
    .end local v3    # "btnNo":Landroid/content/DialogInterface$OnClickListener;
    .end local v4    # "btnYes":Landroid/content/DialogInterface$OnClickListener;
    .end local v5    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v7    # "formatter":Ljava/text/NumberFormat;
    .end local v13    # "strAdsMessage":Ljava/lang/String;
    .end local v14    # "points":J
    .end local v16    # "points_final":J
    .end local v18    # "strDialog":Ljava/lang/String;
    :cond_3d0
    const-string v12, ""

    .line 2315
    .local v12, "message":Ljava/lang/String;
    :try_start_3d2
    new-instance v11, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2316
    .local v11, "json_result":Lorg/json/JSONObject;
    const-string v19, "error"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 2317
    .local v10, "json_error":Lorg/json/JSONObject;
    const-string v19, "message"

    move-object/from16 v0, v19

    invoke-static {v10, v0}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3ee
    .catch Ljava/lang/Exception; {:try_start_3d2 .. :try_end_3ee} :catch_41a

    move-result-object v12

    .line 2322
    .end local v10    # "json_error":Lorg/json/JSONObject;
    .end local v11    # "json_result":Lorg/json/JSONObject;
    :goto_3ef
    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_409

    .line 2323
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v19, v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static/range {v19 .. v19}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v19

    sget v20, Lic/buzzebeeslib/R$string;->survey_submit_fail:I

    invoke-virtual/range {v19 .. v20}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2326
    :cond_409
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v19, v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static/range {v19 .. v19}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v19

    move-object/from16 v0, v19

    # invokes: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v12}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    goto/16 :goto_e2

    .line 2318
    :catch_41a
    move-exception v6

    .line 2319
    .restart local v6    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v19, v0

    # getter for: Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;
    invoke-static/range {v19 .. v19}, Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/SurveyFragmentActivity$PostSubmitListener;)Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    move-result-object v19

    sget v20, Lic/buzzebeeslib/R$string;->survey_submit_fail:I

    invoke-virtual/range {v19 .. v20}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_3ef
.end method
