.class Lcom/samsung/privilege/activity/MainMenuFragment$GetVerifyListener$1;
.super Ljava/lang/Object;
.source "MainMenuFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainMenuFragment$GetVerifyListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetVerifyListener;

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainMenuFragment$GetVerifyListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetVerifyListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetVerifyListener;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetVerifyListener$1;->val$response_text:Ljava/lang/String;

    .line 2190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 22

    .prologue
    .line 2198
    :try_start_0
    new-instance v9, Lorg/json/JSONArray;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetVerifyListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2199
    .local v9, "jsonRoot":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_e
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v8, v0, :cond_17

    .line 2258
    .end local v8    # "i":I
    .end local v9    # "jsonRoot":Lorg/json/JSONArray;
    :goto_16
    return-void

    .line 2200
    .restart local v8    # "i":I
    .restart local v9    # "jsonRoot":Lorg/json/JSONArray;
    :cond_17
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 2201
    .local v10, "json_history":Lorg/json/JSONObject;
    new-instance v12, Lcom/samsung/privilege/bean/Purchasing;

    invoke-direct {v12, v10}, Lcom/samsung/privilege/bean/Purchasing;-><init>(Lorg/json/JSONObject;)V

    .line 2202
    .local v12, "purchasing":Lcom/samsung/privilege/bean/Purchasing;
    iget-boolean v0, v12, Lcom/samsung/privilege/bean/Purchasing;->IsInstalledApp:Z

    move/from16 v17, v0

    if-nez v17, :cond_af

    .line 2203
    const/4 v7, 0x0

    .line 2204
    .local v7, "hasApp":Z
    iget-object v0, v12, Lcom/samsung/privilege/bean/Purchasing;->InstallPackageName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c2

    iget-object v0, v12, Lcom/samsung/privilege/bean/Purchasing;->InstallPackageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_c2

    .line 2205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetVerifyListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetVerifyListener;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetVerifyListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v17 .. v17}, Lcom/samsung/privilege/activity/MainMenuFragment$GetVerifyListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$GetVerifyListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v17

    iget-object v0, v12, Lcom/samsung/privilege/bean/Purchasing;->InstallPackageName:Ljava/lang/String;

    move-object/from16 v18, v0

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->appInstalledOrNot(Ljava/lang/String;)Z
    invoke-static/range {v17 .. v18}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$14(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;)Z

    move-result v7

    .line 2210
    :goto_4b
    if-eqz v7, :cond_af

    .line 2212
    new-instance v11, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v11}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 2213
    .local v11, "params":Lcom/loopj/android/http/RequestParams;
    const-string v15, ""

    .line 2214
    .local v15, "url":Ljava/lang/String;
    iget-object v0, v12, Lcom/samsung/privilege/bean/Purchasing;->VerifyTypeAndroid:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "manual"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c4

    .line 2215
    new-instance v17, Ljava/lang/StringBuilder;

    sget-object v18, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "api/campaign/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v12, Lcom/samsung/privilege/bean/Purchasing;->ID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/verify?token="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetVerifyListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetVerifyListener;

    move-object/from16 v18, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetVerifyListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v18 .. v18}, Lcom/samsung/privilege/activity/MainMenuFragment$GetVerifyListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$GetVerifyListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2248
    :goto_99
    new-instance v17, Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetVerifyListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetVerifyListener;

    move-object/from16 v18, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetVerifyListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v18 .. v18}, Lcom/samsung/privilege/activity/MainMenuFragment$GetVerifyListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$GetVerifyListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v18

    const/16 v19, 0x1

    invoke-direct/range {v17 .. v19}, Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;Z)V

    move-object/from16 v0, v17

    invoke-static {v15, v11, v0}, Lcom/samsung/privilege/util/http/BuzzbeesRestClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 2252
    .end local v7    # "hasApp":Z
    .end local v11    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v15    # "url":Ljava/lang/String;
    :cond_af
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetVerifyListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetVerifyListener;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetVerifyListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v17 .. v17}, Lcom/samsung/privilege/activity/MainMenuFragment$GetVerifyListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$GetVerifyListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$17(Lcom/samsung/privilege/activity/MainMenuFragment;Z)V

    .line 2199
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_e

    .line 2207
    .restart local v7    # "hasApp":Z
    :cond_c2
    const/4 v7, 0x0

    goto :goto_4b

    .line 2217
    .restart local v11    # "params":Lcom/loopj/android/http/RequestParams;
    .restart local v15    # "url":Ljava/lang/String;
    :cond_c4
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "{\"campaign_id\":"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v12, Lcom/samsung/privilege/bean/Purchasing;->ID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ",\"token\":\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment$GetVerifyListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetVerifyListener;

    move-object/from16 v18, v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetVerifyListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static/range {v18 .. v18}, Lcom/samsung/privilege/activity/MainMenuFragment$GetVerifyListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$GetVerifyListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\"}"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2227
    .local v16, "valueJson":Ljava/lang/String;
    const-string v2, ""
    :try_end_fb
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_fb} :catch_190

    .line 2229
    .local v2, "base64":Ljava/lang/String;
    :try_start_fb
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    const-string v18, "UTF-8"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 2230
    .local v3, "data":[B
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v3, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_110
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_fb .. :try_end_110} :catch_1ad
    .catch Lorg/json/JSONException; {:try_start_fb .. :try_end_110} :catch_190

    move-result-object v2

    .line 2235
    .end local v3    # "data":[B
    :goto_111
    :try_start_111
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 2236
    .local v13, "token_5_digit_last":Ljava/lang/String;
    const/16 v17, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x5

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 2238
    .local v14, "token_cut_1_digit_and_5_digit_last":Ljava/lang/String;
    const-string v6, ""

    .line 2239
    .local v6, "encryptValue":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2241
    new-instance v17, Ljava/lang/StringBuilder;

    sget-object v18, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "api/main/log_verify"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2243
    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$0()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "verify url="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2245
    const-string v17, "encrypt"

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    const-string v19, " "

    const-string v20, ""

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18e
    .catch Lorg/json/JSONException; {:try_start_111 .. :try_end_18e} :catch_190

    goto/16 :goto_99

    .line 2255
    .end local v2    # "base64":Ljava/lang/String;
    .end local v6    # "encryptValue":Ljava/lang/String;
    .end local v7    # "hasApp":Z
    .end local v8    # "i":I
    .end local v9    # "jsonRoot":Lorg/json/JSONArray;
    .end local v10    # "json_history":Lorg/json/JSONObject;
    .end local v11    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v12    # "purchasing":Lcom/samsung/privilege/bean/Purchasing;
    .end local v13    # "token_5_digit_last":Ljava/lang/String;
    .end local v14    # "token_cut_1_digit_and_5_digit_last":Ljava/lang/String;
    .end local v15    # "url":Ljava/lang/String;
    .end local v16    # "valueJson":Ljava/lang/String;
    :catch_190
    move-exception v4

    .line 2256
    .local v4, "e":Lorg/json/JSONException;
    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$0()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "(JSONException|GetHistoryListener|onComplete|1): Error "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 2231
    .end local v4    # "e":Lorg/json/JSONException;
    .restart local v2    # "base64":Ljava/lang/String;
    .restart local v7    # "hasApp":Z
    .restart local v8    # "i":I
    .restart local v9    # "jsonRoot":Lorg/json/JSONArray;
    .restart local v10    # "json_history":Lorg/json/JSONObject;
    .restart local v11    # "params":Lcom/loopj/android/http/RequestParams;
    .restart local v12    # "purchasing":Lcom/samsung/privilege/bean/Purchasing;
    .restart local v15    # "url":Ljava/lang/String;
    .restart local v16    # "valueJson":Ljava/lang/String;
    :catch_1ad
    move-exception v5

    .line 2232
    .local v5, "e1":Ljava/io/UnsupportedEncodingException;
    :try_start_1ae
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_1b1
    .catch Lorg/json/JSONException; {:try_start_1ae .. :try_end_1b1} :catch_190

    goto/16 :goto_111
.end method
