.class public Lcom/facebook/applinks/AppLinkData;
.super Ljava/lang/Object;
.source "AppLinkData.java"


# static fields
.field private static final APPLINK_BRIDGE_ARGS_KEY:Ljava/lang/String; = "bridge_args"

.field private static final APPLINK_METHOD_ARGS_KEY:Ljava/lang/String; = "method_args"

.field private static final APPLINK_VERSION_KEY:Ljava/lang/String; = "version"

.field public static final ARGUMENTS_NATIVE_CLASS_KEY:Ljava/lang/String; = "com.facebook.platform.APPLINK_NATIVE_CLASS"

.field public static final ARGUMENTS_NATIVE_URL:Ljava/lang/String; = "com.facebook.platform.APPLINK_NATIVE_URL"

.field public static final ARGUMENTS_REFERER_DATA_KEY:Ljava/lang/String; = "referer_data"

.field public static final ARGUMENTS_TAPTIME_KEY:Ljava/lang/String; = "com.facebook.platform.APPLINK_TAP_TIME_UTC"

.field private static final BRIDGE_ARGS_METHOD_KEY:Ljava/lang/String; = "method"

.field private static final BUNDLE_AL_APPLINK_DATA_KEY:Ljava/lang/String; = "al_applink_data"

.field static final BUNDLE_APPLINK_ARGS_KEY:Ljava/lang/String; = "com.facebook.platform.APPLINK_ARGS"

.field private static final DEFERRED_APP_LINK_ARGS_FIELD:Ljava/lang/String; = "applink_args"

.field private static final DEFERRED_APP_LINK_CLASS_FIELD:Ljava/lang/String; = "applink_class"

.field private static final DEFERRED_APP_LINK_CLICK_TIME_FIELD:Ljava/lang/String; = "click_time"

.field private static final DEFERRED_APP_LINK_EVENT:Ljava/lang/String; = "DEFERRED_APP_LINK"

.field private static final DEFERRED_APP_LINK_PATH:Ljava/lang/String; = "%s/activities"

.field private static final DEFERRED_APP_LINK_URL_FIELD:Ljava/lang/String; = "applink_url"

.field private static final METHOD_ARGS_REF_KEY:Ljava/lang/String; = "ref"

.field private static final METHOD_ARGS_TARGET_URL_KEY:Ljava/lang/String; = "target_url"

.field private static final REFERER_DATA_REF_KEY:Ljava/lang/String; = "fb_ref"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private argumentBundle:Landroid/os/Bundle;

.field private arguments:Lorg/json/JSONObject;

.field private ref:Ljava/lang/String;

.field private targetUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 92
    const-class v0, Lcom/facebook/applinks/AppLinkData;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V
    .registers 3

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lcom/facebook/applinks/AppLinkData;->fetchDeferredAppLinkFromServer(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V

    return-void
.end method

.method public static createFromActivity(Landroid/app/Activity;)Lcom/facebook/applinks/AppLinkData;
    .registers 3

    .prologue
    .line 240
    const-string/jumbo v0, "activity"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 242
    if-nez v1, :cond_e

    .line 243
    const/4 v0, 0x0

    .line 256
    :cond_d
    :goto_d
    return-object v0

    .line 246
    :cond_e
    invoke-static {v1}, Lcom/facebook/applinks/AppLinkData;->createFromAlApplinkData(Landroid/content/Intent;)Lcom/facebook/applinks/AppLinkData;

    move-result-object v0

    .line 247
    if-nez v0, :cond_1f

    .line 248
    const-string/jumbo v0, "com.facebook.platform.APPLINK_ARGS"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-static {v0}, Lcom/facebook/applinks/AppLinkData;->createFromJson(Ljava/lang/String;)Lcom/facebook/applinks/AppLinkData;

    move-result-object v0

    .line 251
    :cond_1f
    if-nez v0, :cond_d

    .line 253
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/applinks/AppLinkData;->createFromUri(Landroid/net/Uri;)Lcom/facebook/applinks/AppLinkData;

    move-result-object v0

    goto :goto_d
.end method

.method public static createFromAlApplinkData(Landroid/content/Intent;)Lcom/facebook/applinks/AppLinkData;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 265
    const-string/jumbo v1, "al_applink_data"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 266
    if-nez v2, :cond_b

    .line 285
    :goto_a
    return-object v0

    .line 270
    :cond_b
    new-instance v1, Lcom/facebook/applinks/AppLinkData;

    invoke-direct {v1}, Lcom/facebook/applinks/AppLinkData;-><init>()V

    .line 271
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v1, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    .line 272
    iget-object v3, v1, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    if-nez v3, :cond_29

    .line 273
    const-string/jumbo v3, "target_url"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 274
    if-eqz v3, :cond_29

    .line 275
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v1, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    .line 278
    :cond_29
    iput-object v2, v1, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    .line 279
    iput-object v0, v1, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    .line 280
    const-string/jumbo v0, "referer_data"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 281
    if-eqz v0, :cond_3f

    .line 282
    const-string/jumbo v2, "fb_ref"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/applinks/AppLinkData;->ref:Ljava/lang/String;

    :cond_3f
    move-object v0, v1

    .line 285
    goto :goto_a
.end method

.method private static createFromJson(Ljava/lang/String;)Lcom/facebook/applinks/AppLinkData;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 289
    if-nez p0, :cond_4

    .line 332
    :cond_3
    :goto_3
    return-object v0

    .line 295
    :cond_4
    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 296
    const-string/jumbo v1, "version"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 298
    const-string/jumbo v3, "bridge_args"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 299
    const-string/jumbo v4, "method"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 300
    const-string/jumbo v4, "applink"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 302
    new-instance v1, Lcom/facebook/applinks/AppLinkData;

    invoke-direct {v1}, Lcom/facebook/applinks/AppLinkData;-><init>()V

    .line 304
    const-string/jumbo v3, "method_args"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    .line 306
    iget-object v2, v1, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string/jumbo v3, "ref"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 307
    iget-object v2, v1, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string/jumbo v3, "ref"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/applinks/AppLinkData;->ref:Ljava/lang/String;

    .line 317
    :cond_54
    :goto_54
    iget-object v2, v1, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string/jumbo v3, "target_url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 318
    iget-object v2, v1, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string/jumbo v3, "target_url"

    .line 319
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 318
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    .line 322
    :cond_6e
    iget-object v2, v1, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/facebook/applinks/AppLinkData;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    move-object v0, v1

    .line 324
    goto :goto_3

    .line 308
    :cond_78
    iget-object v2, v1, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string/jumbo v3, "referer_data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 310
    iget-object v2, v1, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string/jumbo v3, "referer_data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 312
    const-string/jumbo v3, "fb_ref"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 313
    const-string/jumbo v3, "fb_ref"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/applinks/AppLinkData;->ref:Ljava/lang/String;
    :try_end_9e
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_9e} :catch_9f
    .catch Lcom/facebook/FacebookException; {:try_start_4 .. :try_end_9e} :catch_aa

    goto :goto_54

    .line 326
    :catch_9f
    move-exception v1

    .line 327
    sget-object v2, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unable to parse AppLink JSON"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 328
    :catch_aa
    move-exception v1

    .line 329
    sget-object v2, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unable to parse AppLink JSON"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3
.end method

.method private static createFromUri(Landroid/net/Uri;)Lcom/facebook/applinks/AppLinkData;
    .registers 2

    .prologue
    .line 336
    if-nez p0, :cond_4

    .line 337
    const/4 v0, 0x0

    .line 342
    :goto_3
    return-object v0

    .line 340
    :cond_4
    new-instance v0, Lcom/facebook/applinks/AppLinkData;

    invoke-direct {v0}, Lcom/facebook/applinks/AppLinkData;-><init>()V

    .line 341
    iput-object p0, v0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    goto :goto_3
.end method

.method public static fetchDeferredAppLinkData(Landroid/content/Context;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V
    .registers 3

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/facebook/applinks/AppLinkData;->fetchDeferredAppLinkData(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V

    .line 111
    return-void
.end method

.method public static fetchDeferredAppLinkData(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V
    .registers 6

    .prologue
    .line 126
    const-string/jumbo v0, "context"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    const-string/jumbo v0, "completionHandler"

    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    if-nez p1, :cond_12

    .line 130
    invoke-static {p0}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 133
    :cond_12
    const-string/jumbo v0, "applicationId"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 137
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/facebook/applinks/AppLinkData$1;

    invoke-direct {v2, v0, p1, p2}, Lcom/facebook/applinks/AppLinkData$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 144
    return-void
.end method

.method private static fetchDeferredAppLinkFromServer(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V
    .registers 13

    .prologue
    const-wide/16 v8, -0x1

    const/4 v0, 0x0

    .line 151
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 153
    :try_start_8
    const-string/jumbo v2, "event"

    const-string/jumbo v3, "DEFERRED_APP_LINK"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v2

    .line 156
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->getAnonymousAppDeviceGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    move-result v4

    .line 154
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/internal/Utility;->setAppEventAttributionParameters(Lorg/json/JSONObject;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;Z)V

    .line 158
    const-string/jumbo v2, "application_package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_2a} :catch_c7

    .line 163
    const-string/jumbo v2, "%s/activities"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 167
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_39
    invoke-static {v3, v2, v1, v4}, Lcom/facebook/GraphRequest;->newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v1

    .line 170
    invoke-virtual {v1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 171
    if-eqz v1, :cond_c3

    .line 172
    const-string/jumbo v2, "applink_args"

    .line 173
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    const-string/jumbo v3, "click_time"

    const-wide/16 v4, -0x1

    .line 175
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 176
    const-string/jumbo v3, "applink_class"

    .line 177
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 178
    const-string/jumbo v6, "applink_url"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c3

    .line 181
    invoke-static {v2}, Lcom/facebook/applinks/AppLinkData;->createFromJson(Ljava/lang/String;)Lcom/facebook/applinks/AppLinkData;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_6e} :catch_db

    move-result-object v0

    .line 183
    cmp-long v2, v4, v8

    if-eqz v2, :cond_8f

    .line 185
    :try_start_73
    iget-object v2, v0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    if-eqz v2, :cond_7f

    .line 186
    iget-object v2, v0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string/jumbo v6, "com.facebook.platform.APPLINK_TAP_TIME_UTC"

    invoke-virtual {v2, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 188
    :cond_7f
    iget-object v2, v0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_8f

    .line 189
    iget-object v2, v0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    const-string/jumbo v6, "com.facebook.platform.APPLINK_TAP_TIME_UTC"

    .line 190
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 189
    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8f
    .catch Lorg/json/JSONException; {:try_start_73 .. :try_end_8f} :catch_d1
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_8f} :catch_db

    .line 197
    :cond_8f
    :goto_8f
    if-eqz v3, :cond_a9

    .line 199
    :try_start_91
    iget-object v2, v0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    if-eqz v2, :cond_9d

    .line 200
    iget-object v2, v0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string/jumbo v4, "com.facebook.platform.APPLINK_NATIVE_CLASS"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    :cond_9d
    iget-object v2, v0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_a9

    .line 204
    iget-object v2, v0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    const-string/jumbo v4, "com.facebook.platform.APPLINK_NATIVE_CLASS"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a9
    .catch Lorg/json/JSONException; {:try_start_91 .. :try_end_a9} :catch_e5
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_a9} :catch_db

    .line 212
    :cond_a9
    :goto_a9
    if-eqz v1, :cond_c3

    .line 214
    :try_start_ab
    iget-object v2, v0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    if-eqz v2, :cond_b7

    .line 215
    iget-object v2, v0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string/jumbo v3, "com.facebook.platform.APPLINK_NATIVE_URL"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    :cond_b7
    iget-object v2, v0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_c3

    .line 218
    iget-object v2, v0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    const-string/jumbo v3, "com.facebook.platform.APPLINK_NATIVE_URL"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c3
    .catch Lorg/json/JSONException; {:try_start_ab .. :try_end_c3} :catch_ef
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_c3} :catch_db

    .line 231
    :cond_c3
    :goto_c3
    invoke-interface {p2, v0}, Lcom/facebook/applinks/AppLinkData$CompletionHandler;->onDeferredAppLinkDataFetched(Lcom/facebook/applinks/AppLinkData;)V

    .line 232
    return-void

    .line 159
    :catch_c7
    move-exception v0

    .line 160
    new-instance v1, Lcom/facebook/FacebookException;

    const-string/jumbo v2, "An error occurred while preparing deferred app link"

    invoke-direct {v1, v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 192
    :catch_d1
    move-exception v2

    .line 193
    :try_start_d2
    sget-object v2, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Unable to put tap time in AppLinkData.arguments"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_da} :catch_db

    goto :goto_8f

    .line 227
    :catch_db
    move-exception v1

    .line 228
    sget-object v1, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unable to fetch deferred applink from server"

    invoke-static {v1, v2}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c3

    .line 207
    :catch_e5
    move-exception v2

    .line 208
    :try_start_e6
    sget-object v2, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unable to put tap time in AppLinkData.arguments"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a9

    .line 221
    :catch_ef
    move-exception v1

    .line 222
    sget-object v1, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unable to put tap time in AppLinkData.arguments"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_f8} :catch_db

    goto :goto_c3
.end method

.method private static toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 346
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 348
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 349
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_94

    .line 350
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 352
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 354
    instance-of v2, v1, Lorg/json/JSONObject;

    if-eqz v2, :cond_28

    .line 355
    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/facebook/applinks/AppLinkData;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_a

    .line 356
    :cond_28
    instance-of v2, v1, Lorg/json/JSONArray;

    if-eqz v2, :cond_8b

    .line 357
    check-cast v1, Lorg/json/JSONArray;

    .line 358
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_3a

    .line 359
    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_a

    .line 361
    :cond_3a
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 362
    instance-of v6, v2, Lorg/json/JSONObject;

    if-eqz v6, :cond_60

    .line 363
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v6, v2, [Landroid/os/Bundle;

    move v2, v3

    .line 364
    :goto_49
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_5c

    .line 365
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7}, Lcom/facebook/applinks/AppLinkData;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v7

    aput-object v7, v6, v2

    .line 364
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 367
    :cond_5c
    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_a

    .line 368
    :cond_60
    instance-of v2, v2, Lorg/json/JSONArray;

    if-eqz v2, :cond_6d

    .line 370
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Nested arrays are not supported."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_6d
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v6, v2, [Ljava/lang/String;

    move v2, v3

    .line 373
    :goto_74
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_87

    .line 374
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 373
    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    .line 376
    :cond_87
    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_a

    .line 380
    :cond_8b
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 383
    :cond_94
    return-object v4
.end method


# virtual methods
.method public getArgumentBundle()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .registers 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public getRefererData()Landroid/os/Bundle;
    .registers 3

    .prologue
    .line 422
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_e

    .line 423
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "referer_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 425
    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getTargetUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    return-object v0
.end method
