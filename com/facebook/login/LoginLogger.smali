.class Lcom/facebook/login/LoginLogger;
.super Ljava/lang/Object;
.source "LoginLogger.java"


# static fields
.field static final EVENT_EXTRAS_DEFAULT_AUDIENCE:Ljava/lang/String; = "default_audience"

.field static final EVENT_EXTRAS_FACEBOOK_VERSION:Ljava/lang/String; = "facebookVersion"

.field static final EVENT_EXTRAS_IS_REAUTHORIZE:Ljava/lang/String; = "isReauthorize"

.field static final EVENT_EXTRAS_LOGIN_BEHAVIOR:Ljava/lang/String; = "login_behavior"

.field static final EVENT_EXTRAS_MISSING_INTERNET_PERMISSION:Ljava/lang/String; = "no_internet_permission"

.field static final EVENT_EXTRAS_NEW_PERMISSIONS:Ljava/lang/String; = "new_permissions"

.field static final EVENT_EXTRAS_NOT_TRIED:Ljava/lang/String; = "not_tried"

.field static final EVENT_EXTRAS_PERMISSIONS:Ljava/lang/String; = "permissions"

.field static final EVENT_EXTRAS_REQUEST_CODE:Ljava/lang/String; = "request_code"

.field static final EVENT_EXTRAS_TRY_LOGIN_ACTIVITY:Ljava/lang/String; = "try_login_activity"

.field static final EVENT_NAME_LOGIN_COMPLETE:Ljava/lang/String; = "fb_mobile_login_complete"

.field static final EVENT_NAME_LOGIN_METHOD_COMPLETE:Ljava/lang/String; = "fb_mobile_login_method_complete"

.field static final EVENT_NAME_LOGIN_METHOD_START:Ljava/lang/String; = "fb_mobile_login_method_start"

.field static final EVENT_NAME_LOGIN_START:Ljava/lang/String; = "fb_mobile_login_start"

.field static final EVENT_PARAM_AUTH_LOGGER_ID:Ljava/lang/String; = "0_auth_logger_id"

.field static final EVENT_PARAM_ERROR_CODE:Ljava/lang/String; = "4_error_code"

.field static final EVENT_PARAM_ERROR_MESSAGE:Ljava/lang/String; = "5_error_message"

.field static final EVENT_PARAM_EXTRAS:Ljava/lang/String; = "6_extras"

.field static final EVENT_PARAM_LOGIN_RESULT:Ljava/lang/String; = "2_result"

.field static final EVENT_PARAM_METHOD:Ljava/lang/String; = "3_method"

.field static final EVENT_PARAM_METHOD_RESULT_SKIPPED:Ljava/lang/String; = "skipped"

.field static final EVENT_PARAM_TIMESTAMP:Ljava/lang/String; = "1_timestamp_ms"

.field static final FACEBOOK_PACKAGE_NAME:Ljava/lang/String; = "com.facebook.katana"


# instance fields
.field private final appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

.field private applicationId:Ljava/lang/String;

.field private facebookVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p2, p0, Lcom/facebook/login/LoginLogger;->applicationId:Ljava/lang/String;

    .line 73
    invoke-static {p1, p2}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/LoginLogger;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    .line 77
    :try_start_b
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_1f

    .line 79
    const-string/jumbo v1, "com.facebook.katana"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_1f

    .line 81
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/login/LoginLogger;->facebookVersion:Ljava/lang/String;
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_1f} :catch_20

    .line 87
    :cond_1f
    :goto_1f
    return-void

    .line 84
    :catch_20
    move-exception v0

    goto :goto_1f
.end method

.method static newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5

    .prologue
    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    const-string/jumbo v1, "1_timestamp_ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 98
    const-string/jumbo v1, "0_auth_logger_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string/jumbo v1, "3_method"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string/jumbo v1, "2_result"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string/jumbo v1, "5_error_message"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string/jumbo v1, "4_error_code"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string/jumbo v1, "6_extras"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-object v0
.end method


# virtual methods
.method public getApplicationId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/login/LoginLogger;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public logAuthorizationMethodComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    invoke-static {p1}, Lcom/facebook/login/LoginLogger;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 177
    if-eqz p3, :cond_c

    .line 178
    const-string/jumbo v1, "2_result"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_c
    if-eqz p4, :cond_14

    .line 181
    const-string/jumbo v1, "5_error_message"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_14
    if-eqz p5, :cond_1c

    .line 184
    const-string/jumbo v1, "4_error_code"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_1c
    if-eqz p6, :cond_33

    invoke-interface {p6}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_33

    .line 187
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 188
    const-string/jumbo v2, "6_extras"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_33
    const-string/jumbo v1, "3_method"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/facebook/login/LoginLogger;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    const-string/jumbo v2, "fb_mobile_login_method_complete"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 193
    return-void
.end method

.method public logAuthorizationMethodStart(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 166
    invoke-static {p1}, Lcom/facebook/login/LoginLogger;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 167
    const-string/jumbo v1, "3_method"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/facebook/login/LoginLogger;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    const-string/jumbo v2, "fb_mobile_login_method_start"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 170
    return-void
.end method

.method public logCompleteLogin(Ljava/lang/String;Ljava/util/Map;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/login/LoginClient$Result$Code;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 134
    invoke-static {p1}, Lcom/facebook/login/LoginLogger;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 135
    if-eqz p3, :cond_11

    .line 136
    const-string/jumbo v0, "2_result"

    invoke-virtual {p3}, Lcom/facebook/login/LoginClient$Result$Code;->getLoggingValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_11
    if-eqz p5, :cond_23

    invoke-virtual {p5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 139
    const-string/jumbo v0, "5_error_message"

    invoke-virtual {p5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_23
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_74

    .line 145
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 147
    :goto_2e
    if-eqz p4, :cond_5b

    .line 148
    if-nez v0, :cond_72

    .line 149
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 152
    :goto_37
    :try_start_37
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 153
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_58
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_58} :catch_59

    goto :goto_3f

    .line 155
    :catch_59
    move-exception v0

    move-object v0, v2

    .line 158
    :cond_5b
    :goto_5b
    if-eqz v0, :cond_67

    .line 159
    const-string/jumbo v1, "6_extras"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_67
    iget-object v0, p0, Lcom/facebook/login/LoginLogger;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    const-string/jumbo v1, "fb_mobile_login_complete"

    invoke-virtual {v0, v1, v3, v4}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 163
    return-void

    :cond_70
    move-object v0, v2

    .line 156
    goto :goto_5b

    :cond_72
    move-object v2, v0

    goto :goto_37

    :cond_74
    move-object v0, v3

    goto :goto_2e
.end method

.method public logStartLogin(Lcom/facebook/login/LoginClient$Request;)V
    .registers 7

    .prologue
    .line 108
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getAuthId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/login/LoginLogger;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 112
    :try_start_8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 113
    const-string/jumbo v2, "login_behavior"

    .line 114
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getLoginBehavior()Lcom/facebook/login/LoginBehavior;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/login/LoginBehavior;->toString()Ljava/lang/String;

    move-result-object v3

    .line 113
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string/jumbo v2, "request_code"

    invoke-static {}, Lcom/facebook/login/LoginClient;->getLoginRequestCode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 116
    const-string/jumbo v2, "permissions"

    const-string/jumbo v3, ","

    .line 117
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 116
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string/jumbo v2, "default_audience"

    .line 119
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getDefaultAudience()Lcom/facebook/login/DefaultAudience;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/login/DefaultAudience;->toString()Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string/jumbo v2, "isReauthorize"

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->isRerequest()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 121
    iget-object v2, p0, Lcom/facebook/login/LoginLogger;->facebookVersion:Ljava/lang/String;

    if-eqz v2, :cond_5a

    .line 122
    const-string/jumbo v2, "facebookVersion"

    iget-object v3, p0, Lcom/facebook/login/LoginLogger;->facebookVersion:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    :cond_5a
    const-string/jumbo v2, "6_extras"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_64
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_64} :catch_6e

    .line 128
    :goto_64
    iget-object v1, p0, Lcom/facebook/login/LoginLogger;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    const-string/jumbo v2, "fb_mobile_login_start"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 129
    return-void

    .line 125
    :catch_6e
    move-exception v1

    goto :goto_64
.end method

.method public logUnexpectedError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 196
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/login/LoginLogger;->logUnexpectedError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public logUnexpectedError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 200
    const-string/jumbo v0, ""

    invoke-static {v0}, Lcom/facebook/login/LoginLogger;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 201
    const-string/jumbo v1, "2_result"

    sget-object v2, Lcom/facebook/login/LoginClient$Result$Code;->ERROR:Lcom/facebook/login/LoginClient$Result$Code;

    .line 202
    invoke-virtual {v2}, Lcom/facebook/login/LoginClient$Result$Code;->getLoggingValue()Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string/jumbo v1, "5_error_message"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string/jumbo v1, "3_method"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/facebook/login/LoginLogger;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 207
    return-void
.end method
