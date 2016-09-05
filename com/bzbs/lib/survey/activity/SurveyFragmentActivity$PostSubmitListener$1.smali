.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 3189
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    iput p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->a:I

    iput-object p3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    .line 3191
    iget v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_bb

    .line 3193
    const/4 v0, 0x0

    .line 3195
    :try_start_9
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3198
    const-string/jumbo v2, "buzzebees"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 3199
    const-string/jumbo v1, "points"

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1d} :catch_a7

    move-result-wide v2

    move-object v1, v0

    .line 3204
    :goto_1f
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    iget-object v6, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v7, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->b:Ljava/lang/String;

    const-class v8, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;

    invoke-virtual {v0, v7, v8}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;

    invoke-static {v6, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;)Lcom/bzbs/lib/survey/models/SurveyPostSubmitModel;

    .line 3206
    cmp-long v0, v2, v4

    if-lez v0, :cond_49

    .line 3207
    long-to-int v0, v2

    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    iget-object v4, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->L(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    iget-object v5, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0, v4, v5}, Lcom/bzbs/lib/survey/util/AnimationPoint;->a(ILandroid/os/Handler;Landroid/app/Activity;)V

    .line 3211
    :cond_49
    const-string/jumbo v0, ""

    .line 3213
    :try_start_4c
    new-instance v0, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->b:Ljava/lang/String;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3214
    const-string/jumbo v4, "AdsMessage"

    invoke-static {v0, v4}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_59} :catch_ac

    move-result-object v0

    .line 3219
    :goto_5a
    const-string/jumbo v4, ""

    .line 3221
    :try_start_5d
    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->b:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3222
    const-string/jumbo v5, "PrivilegeMessage"

    invoke-static {v4, v5}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_6a} :catch_b1

    move-result-object v4

    .line 3227
    :goto_6b
    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    iget-object v5, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v5, v2, v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(J)V

    .line 3228
    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    iget-object v2, v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v2, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->b(Ljava/lang/String;)V

    .line 3229
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v0, v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->c(Ljava/lang/String;)V

    .line 3232
    if-eqz v1, :cond_9e

    .line 3235
    :try_start_82
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v2, "badges"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lorg/json/JSONArray;)V

    .line 3236
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const-string/jumbo v2, "missions"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->b(Lorg/json/JSONArray;)V
    :try_end_9e
    .catch Lorg/json/JSONException; {:try_start_82 .. :try_end_9e} :catch_b6

    .line 3243
    :cond_9e
    :goto_9e
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->b(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Z)V

    .line 3293
    :goto_a6
    return-void

    .line 3200
    :catch_a7
    move-exception v1

    move-object v1, v0

    move-wide v2, v4

    .line 3201
    goto/16 :goto_1f

    .line 3215
    :catch_ac
    move-exception v0

    .line 3216
    const-string/jumbo v0, ""

    goto :goto_5a

    .line 3223
    :catch_b1
    move-exception v4

    .line 3224
    const-string/jumbo v4, ""

    goto :goto_6b

    .line 3237
    :catch_b6
    move-exception v0

    .line 3238
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_9e

    .line 3245
    :cond_bb
    const-string/jumbo v0, ""

    .line 3248
    :try_start_be
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3249
    const-string/jumbo v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 3250
    const-string/jumbo v1, "message"

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_d2} :catch_175

    move-result-object v0

    .line 3255
    :goto_d3
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e6

    .line 3256
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v1, Lcom/bzbs/lib/survey/R$string;->survey_submit_fail:I

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3259
    :cond_e6
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/lib/survey/bean/Campaign;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    iget-object v2, v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->w(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/lib/survey/LibUserLogin;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_182

    .line 3260
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/Campaign;->aq:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtra;->c:Lcom/bzbs/lib/survey/bean/CampaignExtraAction;

    iget-object v0, v0, Lcom/bzbs/lib/survey/bean/CampaignExtraAction;->d:Ljava/lang/String;

    .line 3261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{token}"

    iget-object v3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    iget-object v3, v3, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v3}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/lib/survey/LibUserLogin;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&contact_number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->M(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3262
    const-string/jumbo v1, "campaign.adbuzz"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(url and_link)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3263
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->finish()V

    .line 3265
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;

    invoke-direct {v2, p0, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1$1;-><init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;Ljava/lang/String;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_a6

    .line 3251
    :catch_175
    move-exception v0

    .line 3252
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v1, Lcom/bzbs/lib/survey/R$string;->survey_submit_fail:I

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d3

    .line 3290
    :cond_182
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener$1;->c:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;

    iget-object v1, v1, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$PostSubmitListener;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-static {v1, v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->a(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    goto/16 :goto_a6
.end method
