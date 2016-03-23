.class Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;
.super Lcom/bzbs/lib/survey/util/http/HttpRQListener;
.source "ResumeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/lib/survey/util/ResumeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetResumeListener"
.end annotation


# instance fields
.field private gActivity:Landroid/app/Activity;

.field private gAppContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .registers 3
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/bzbs/lib/survey/util/http/HttpRQListener;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;->gAppContext:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;->gActivity:Landroid/app/Activity;

    .line 112
    return-void
.end method

.method static synthetic access$100(Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;->gAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;->gActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 13
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 116
    # getter for: Lcom/bzbs/lib/survey/util/ResumeUtil;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/bzbs/lib/survey/util/ResumeUtil;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "(GetResumeListener|onComplete)response={"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "}:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bzbs/lib/survey/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/16 v6, 0xc8

    if-ne p1, v6, :cond_e6

    .line 121
    :try_start_2a
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 122
    .local v3, "jsonRoot":Lorg/json/JSONObject;
    const-string/jumbo v6, "token"

    invoke-static {v3, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 123
    .local v5, "token":Ljava/lang/String;
    iget-object v6, p0, Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;->gAppContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/bzbs/lib/survey/LibUserLogin;->SetTokenBuzzeBees(Landroid/content/Context;Ljava/lang/String;)Z

    .line 124
    # getter for: Lcom/bzbs/lib/survey/util/ResumeUtil;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/bzbs/lib/survey/util/ResumeUtil;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "resume_token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_56} :catch_e7

    .line 130
    .end local v3    # "jsonRoot":Lorg/json/JSONObject;
    .end local v5    # "token":Ljava/lang/String;
    :goto_56
    :try_start_56
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 131
    .restart local v3    # "jsonRoot":Lorg/json/JSONObject;
    const-string/jumbo v6, "version"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 132
    .local v4, "json_version":Lorg/json/JSONObject;
    const-string/jumbo v6, "allow_use"

    invoke-static {v4, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 133
    .local v0, "allow_use":Z
    const-string/jumbo v6, "has_new_version"

    invoke-static {v4, v6}, Lcom/bzbs/lib/survey/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 134
    .local v2, "has_new_version":Z
    iget-object v6, p0, Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;->gAppContext:Landroid/content/Context;

    const-string/jumbo v7, "is_enabled_july_2013_breaking_changes"

    invoke-static {v4, v7}, Lcom/bzbs/lib/survey/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static {v6, v7}, Lcom/bzbs/lib/survey/LibUserLogin;->Set_july_2013_breaking_changes(Landroid/content/Context;Z)Z

    .line 135
    iget-object v6, p0, Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;->gAppContext:Landroid/content/Context;

    const-string/jumbo v7, "logic_facebook_photo_url"

    invoke-static {v4, v7}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bzbs/lib/survey/LibUserLogin;->Set_logic_facebook_photo_url(Landroid/content/Context;Ljava/lang/String;)Z

    .line 137
    # getter for: Lcom/bzbs/lib/survey/util/ResumeUtil;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/bzbs/lib/survey/util/ResumeUtil;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "allow_use="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    # getter for: Lcom/bzbs/lib/survey/util/ResumeUtil;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/bzbs/lib/survey/util/ResumeUtil;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "has_new_version="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v6, p0, Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;->gActivity:Landroid/app/Activity;

    if-nez v6, :cond_109

    .line 140
    # getter for: Lcom/bzbs/lib/survey/util/ResumeUtil;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/bzbs/lib/survey/util/ResumeUtil;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "gActivity == null"

    invoke-static {v6, v7}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :goto_d8
    iget-object v6, p0, Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;->gActivity:Landroid/app/Activity;

    if-eqz v6, :cond_e6

    .line 146
    iget-object v6, p0, Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;->gActivity:Landroid/app/Activity;

    new-instance v7, Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener$1;

    invoke-direct {v7, p0, v0, v2}, Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener$1;-><init>(Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;ZZ)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_e6} :catch_114

    .line 173
    .end local v0    # "allow_use":Z
    .end local v2    # "has_new_version":Z
    .end local v3    # "jsonRoot":Lorg/json/JSONObject;
    .end local v4    # "json_version":Lorg/json/JSONObject;
    :cond_e6
    :goto_e6
    return-void

    .line 125
    :catch_e7
    move-exception v1

    .line 126
    .local v1, "ex":Lorg/json/JSONException;
    # getter for: Lcom/bzbs/lib/survey/util/ResumeUtil;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/bzbs/lib/survey/util/ResumeUtil;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "(JSONException|GetResumeListener):"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bzbs/lib/survey/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_56

    .line 142
    .end local v1    # "ex":Lorg/json/JSONException;
    .restart local v0    # "allow_use":Z
    .restart local v2    # "has_new_version":Z
    .restart local v3    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v4    # "json_version":Lorg/json/JSONObject;
    :cond_109
    :try_start_109
    # getter for: Lcom/bzbs/lib/survey/util/ResumeUtil;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/bzbs/lib/survey/util/ResumeUtil;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "gActivity != null"

    invoke-static {v6, v7}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_113} :catch_114

    goto :goto_d8

    .line 163
    .end local v0    # "allow_use":Z
    .end local v2    # "has_new_version":Z
    .end local v3    # "jsonRoot":Lorg/json/JSONObject;
    .end local v4    # "json_version":Lorg/json/JSONObject;
    :catch_114
    move-exception v1

    .line 164
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;->gActivity:Landroid/app/Activity;

    if-eqz v6, :cond_e6

    .line 165
    iget-object v6, p0, Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;->gActivity:Landroid/app/Activity;

    new-instance v7, Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener$2;

    invoke-direct {v7, p0}, Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener$2;-><init>(Lcom/bzbs/lib/survey/util/ResumeUtil$GetResumeListener;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_e6
.end method

.method public onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V
    .registers 6
    .param p1, "e"    # Ljava/io/FileNotFoundException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 177
    invoke-super {p0, p1, p2}, Lcom/bzbs/lib/survey/util/http/HttpRQListener;->onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V

    .line 178
    # getter for: Lcom/bzbs/lib/survey/util/ResumeUtil;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/bzbs/lib/survey/util/ResumeUtil;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(onFileNotFoundException|GetResumeListener):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public onIOException(Ljava/io/IOException;Ljava/lang/Object;)V
    .registers 6
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 183
    invoke-super {p0, p1, p2}, Lcom/bzbs/lib/survey/util/http/HttpRQListener;->onIOException(Ljava/io/IOException;Ljava/lang/Object;)V

    .line 184
    # getter for: Lcom/bzbs/lib/survey/util/ResumeUtil;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/bzbs/lib/survey/util/ResumeUtil;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(onIOException|GetResumeListener):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V
    .registers 6
    .param p1, "e"    # Ljava/net/MalformedURLException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 189
    invoke-super {p0, p1, p2}, Lcom/bzbs/lib/survey/util/http/HttpRQListener;->onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V

    .line 190
    # getter for: Lcom/bzbs/lib/survey/util/ResumeUtil;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/bzbs/lib/survey/util/ResumeUtil;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(onMalformedURLException|GetResumeListener):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method
