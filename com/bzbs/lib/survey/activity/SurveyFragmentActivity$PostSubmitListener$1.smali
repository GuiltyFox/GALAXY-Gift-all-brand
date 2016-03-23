.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

.field final synthetic val$response_text:Ljava/lang/String;

.field final synthetic val$statusCode:I


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;ILjava/lang/String;)V
    .registers 4
    .param p1, "this$1"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    .prologue
    .line 3189
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    iput p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->val$statusCode:I

    iput-object p3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->val$response_text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 23

    .prologue
    .line 3191
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->val$statusCode:I

    move/from16 v17, v0

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_144

    .line 3192
    const-wide/16 v14, 0x0

    .line 3193
    .local v14, "points":J
    const/4 v7, 0x0

    .line 3195
    .local v7, "jsonBuzzebees":Lorg/json/JSONObject;
    :try_start_11
    new-instance v8, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3198
    .local v8, "jsonRoot":Lorg/json/JSONObject;
    const-string/jumbo v17, "buzzebees"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 3199
    const-string/jumbo v17, "points"

    move-object/from16 v0, v17

    invoke-static {v7, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2f} :catch_12e

    move-result-wide v14

    .line 3204
    .end local v8    # "jsonRoot":Lorg/json/JSONObject;
    :goto_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v18, v0

    new-instance v17, Lcom/google/gson/Gson;

    invoke-direct/range {v17 .. v17}, Lcom/google/gson/Gson;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v19, v0

    const-class v20, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    # setter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->postSubmitModel:Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;
    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$4302(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;)Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;

    .line 3206
    const-wide/16 v18, 0x0

    cmp-long v17, v14, v18

    if-lez v17, :cond_84

    .line 3207
    long-to-int v0, v14

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->gHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$4400(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/bzbs/lib/survey/util/AnimationPoint;->showToastPoints(ILandroid/os/Handler;Landroid/app/Activity;)V

    .line 3211
    :cond_84
    const-string/jumbo v13, ""

    .line 3213
    .local v13, "strAdsMessage":Ljava/lang/String;
    :try_start_87
    new-instance v8, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3214
    .restart local v8    # "jsonRoot":Lorg/json/JSONObject;
    const-string/jumbo v17, "AdsMessage"

    move-object/from16 v0, v17

    invoke-static {v8, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_9c} :catch_133

    move-result-object v13

    .line 3219
    .end local v8    # "jsonRoot":Lorg/json/JSONObject;
    :goto_9d
    const-string/jumbo v4, ""

    .line 3221
    .local v4, "PrivilegeMessage":Ljava/lang/String;
    :try_start_a0
    new-instance v8, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3222
    .restart local v8    # "jsonRoot":Lorg/json/JSONObject;
    const-string/jumbo v17, "PrivilegeMessage"

    move-object/from16 v0, v17

    invoke-static {v8, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_b5} :catch_139

    move-result-object v4

    .line 3227
    .end local v8    # "jsonRoot":Lorg/json/JSONObject;
    :goto_b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->setPoints(J)V

    .line 3228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->setStrAdsMessage(Ljava/lang/String;)V

    .line 3229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->setPrivilegeMessage(Ljava/lang/String;)V

    .line 3232
    if-eqz v7, :cond_11c

    .line 3233
    const/4 v9, 0x0

    .line 3235
    .local v9, "json_badges":Lorg/json/JSONArray;
    :try_start_ec
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v17, v0

    const-string/jumbo v18, "badges"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->setJson_badges(Lorg/json/JSONArray;)V

    .line 3236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v17, v0

    const-string/jumbo v18, "missions"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->setJson_mission(Lorg/json/JSONArray;)V
    :try_end_11c
    .catch Lorg/json/JSONException; {:try_start_ec .. :try_end_11c} :catch_13f

    .line 3243
    .end local v9    # "json_badges":Lorg/json/JSONArray;
    :cond_11c
    :goto_11c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # invokes: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->alertDialogEndSurvey(Z)V
    invoke-static/range {v17 .. v18}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$4500(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)V

    .line 3293
    .end local v4    # "PrivilegeMessage":Ljava/lang/String;
    .end local v7    # "jsonBuzzebees":Lorg/json/JSONObject;
    .end local v13    # "strAdsMessage":Ljava/lang/String;
    .end local v14    # "points":J
    :goto_12d
    return-void

    .line 3200
    .restart local v7    # "jsonBuzzebees":Lorg/json/JSONObject;
    .restart local v14    # "points":J
    :catch_12e
    move-exception v5

    .line 3201
    .local v5, "e":Ljava/lang/Exception;
    const-wide/16 v14, 0x0

    goto/16 :goto_30

    .line 3215
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v13    # "strAdsMessage":Ljava/lang/String;
    :catch_133
    move-exception v5

    .line 3216
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string/jumbo v13, ""

    goto/16 :goto_9d

    .line 3223
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "PrivilegeMessage":Ljava/lang/String;
    :catch_139
    move-exception v5

    .line 3224
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, ""

    goto/16 :goto_b6

    .line 3237
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v9    # "json_badges":Lorg/json/JSONArray;
    :catch_13f
    move-exception v5

    .line 3238
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_11c

    .line 3245
    .end local v4    # "PrivilegeMessage":Ljava/lang/String;
    .end local v5    # "e":Lorg/json/JSONException;
    .end local v7    # "jsonBuzzebees":Lorg/json/JSONObject;
    .end local v9    # "json_badges":Lorg/json/JSONArray;
    .end local v13    # "strAdsMessage":Ljava/lang/String;
    .end local v14    # "points":J
    :cond_144
    const-string/jumbo v12, ""

    .line 3248
    .local v12, "message":Ljava/lang/String;
    :try_start_147
    new-instance v11, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3249
    .local v11, "json_result":Lorg/json/JSONObject;
    const-string/jumbo v17, "error"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 3250
    .local v10, "json_error":Lorg/json/JSONObject;
    const-string/jumbo v17, "message"

    move-object/from16 v0, v17

    invoke-static {v10, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_165
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_165} :catch_268

    move-result-object v12

    .line 3255
    .end local v10    # "json_error":Lorg/json/JSONObject;
    .end local v11    # "json_result":Lorg/json/JSONObject;
    :goto_166
    const-string/jumbo v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_183

    .line 3256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v17, v0

    sget v18, Lcom/bzbs/lib/survey/R$string;->survey_submit_fail:I

    invoke-virtual/range {v17 .. v18}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 3259
    :cond_183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;
    invoke-static/range {v17 .. v17}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/Campaign;->ID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->mActivity:Landroid/app/Activity;
    invoke-static/range {v18 .. v18}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$2700(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/bzbs/lib/survey/LibUserLogin;->getCampaignTrueWallet(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_27d

    .line 3260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;
    invoke-static/range {v17 .. v17}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/Campaign;->campaignExtra:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtra;->campaignExtraAction:Lcom/bzbs/lib/survey/bean/CampaignExtraAction;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraAction;->and_link:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 3261
    .local v16, "url":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "{token}"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/bzbs/lib/survey/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "&contact_number="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->contact_number:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$3600(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 3262
    const-string/jumbo v17, "campaign.adbuzz"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "(url and_link)="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->finish()V

    .line 3264
    move-object/from16 v6, v16

    .line 3265
    .local v6, "finalUrl":Ljava/lang/String;
    new-instance v17, Landroid/os/Handler;

    invoke-direct/range {v17 .. v17}, Landroid/os/Handler;-><init>()V

    new-instance v18, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;Ljava/lang/String;)V

    const-wide/16 v20, 0x1f4

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_12d

    .line 3251
    .end local v6    # "finalUrl":Ljava/lang/String;
    .end local v16    # "url":Ljava/lang/String;
    :catch_268
    move-exception v5

    .line 3252
    .local v5, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v17, v0

    sget v18, Lcom/bzbs/lib/survey/R$string;->survey_submit_fail:I

    invoke-virtual/range {v17 .. v18}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_166

    .line 3290
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_27d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v12}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$700(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    goto/16 :goto_12d
.end method
