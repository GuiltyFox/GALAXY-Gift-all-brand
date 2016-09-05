.class public Lcom/facebook/login/LoginManager;
.super Ljava/lang/Object;
.source "LoginManager.java"


# static fields
.field private static final MANAGE_PERMISSION_PREFIX:Ljava/lang/String; = "manage"

.field private static final OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PUBLISH_PERMISSION_PREFIX:Ljava/lang/String; = "publish"

.field private static volatile instance:Lcom/facebook/login/LoginManager;


# instance fields
.field private defaultAudience:Lcom/facebook/login/DefaultAudience;

.field private loginBehavior:Lcom/facebook/login/LoginBehavior;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    invoke-static {}, Lcom/facebook/login/LoginManager;->getOtherPublishPermissions()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/login/LoginManager;->OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Lcom/facebook/login/LoginBehavior;->NATIVE_WITH_FALLBACK:Lcom/facebook/login/LoginBehavior;

    iput-object v0, p0, Lcom/facebook/login/LoginManager;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    .line 63
    sget-object v0, Lcom/facebook/login/DefaultAudience;->FRIENDS:Lcom/facebook/login/DefaultAudience;

    iput-object v0, p0, Lcom/facebook/login/LoginManager;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    .line 66
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 67
    return-void
.end method

.method static computeLoginResult(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/LoginResult;
    .registers 5

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object v0

    .line 474
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 478
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient$Request;->isRerequest()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 479
    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 482
    :cond_16
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 483
    invoke-interface {v2, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 484
    new-instance v0, Lcom/facebook/login/LoginResult;

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/login/LoginResult;-><init>(Lcom/facebook/AccessToken;Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method private createLoginRequest(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/login/LoginClient$Request;"
        }
    .end annotation

    .prologue
    .line 336
    new-instance v0, Lcom/facebook/login/LoginClient$Request;

    iget-object v1, p0, Lcom/facebook/login/LoginManager;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    if-eqz p1, :cond_2b

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 338
    :goto_b
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/login/LoginManager;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    .line 341
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v4

    .line 342
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/login/LoginClient$Request;-><init>(Lcom/facebook/login/LoginBehavior;Ljava/util/Set;Lcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    if-eqz v1, :cond_31

    const/4 v1, 0x1

    :goto_27
    invoke-virtual {v0, v1}, Lcom/facebook/login/LoginClient$Request;->setRerequest(Z)V

    .line 345
    return-object v0

    .line 336
    :cond_2b
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    goto :goto_b

    .line 344
    :cond_31
    const/4 v1, 0x0

    goto :goto_27
.end method

.method private createLoginRequestFromResponse(Lcom/facebook/GraphResponse;)Lcom/facebook/login/LoginClient$Request;
    .registers 3

    .prologue
    .line 114
    const-string/jumbo v0, "response"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getRequest()Lcom/facebook/GraphRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v0

    :goto_14
    invoke-direct {p0, v0}, Lcom/facebook/login/LoginManager;->createLoginRequest(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private finishLogin(Lcom/facebook/AccessToken;Lcom/facebook/login/LoginClient$Request;Lcom/facebook/FacebookException;ZLcom/facebook/FacebookCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/AccessToken;",
            "Lcom/facebook/login/LoginClient$Request;",
            "Lcom/facebook/FacebookException;",
            "Z",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/login/LoginResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 493
    if-eqz p1, :cond_8

    .line 494
    invoke-static {p1}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    .line 495
    invoke-static {}, Lcom/facebook/Profile;->fetchProfileForCurrentAccessToken()V

    .line 498
    :cond_8
    if-eqz p5, :cond_21

    .line 499
    if-eqz p1, :cond_22

    .line 500
    invoke-static {p2, p1}, Lcom/facebook/login/LoginManager;->computeLoginResult(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/LoginResult;

    move-result-object v0

    .line 503
    :goto_10
    if-nez p4, :cond_1e

    if-eqz v0, :cond_24

    .line 505
    invoke-virtual {v0}, Lcom/facebook/login/LoginResult;->getRecentlyGrantedPermissions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_24

    .line 506
    :cond_1e
    invoke-interface {p5}, Lcom/facebook/FacebookCallback;->onCancel()V

    .line 513
    :cond_21
    :goto_21
    return-void

    .line 500
    :cond_22
    const/4 v0, 0x0

    goto :goto_10

    .line 507
    :cond_24
    if-eqz p3, :cond_2a

    .line 508
    invoke-interface {p5, p3}, Lcom/facebook/FacebookCallback;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_21

    .line 509
    :cond_2a
    if-eqz p1, :cond_21

    .line 510
    invoke-interface {p5, v0}, Lcom/facebook/FacebookCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_21
.end method

.method private getFacebookActivityIntent(Lcom/facebook/login/LoginClient$Request;)Landroid/content/Intent;
    .registers 5

    .prologue
    .line 456
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 457
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/FacebookActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 458
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getLoginBehavior()Lcom/facebook/login/LoginBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/login/LoginBehavior;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 463
    const-string/jumbo v2, "request"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 464
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 466
    return-object v0
.end method

.method public static getInstance()Lcom/facebook/login/LoginManager;
    .registers 2

    .prologue
    .line 74
    sget-object v0, Lcom/facebook/login/LoginManager;->instance:Lcom/facebook/login/LoginManager;

    if-nez v0, :cond_13

    .line 75
    const-class v1, Lcom/facebook/login/LoginManager;

    monitor-enter v1

    .line 76
    :try_start_7
    sget-object v0, Lcom/facebook/login/LoginManager;->instance:Lcom/facebook/login/LoginManager;

    if-nez v0, :cond_12

    .line 77
    new-instance v0, Lcom/facebook/login/LoginManager;

    invoke-direct {v0}, Lcom/facebook/login/LoginManager;-><init>()V

    sput-object v0, Lcom/facebook/login/LoginManager;->instance:Lcom/facebook/login/LoginManager;

    .line 79
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 82
    :cond_13
    sget-object v0, Lcom/facebook/login/LoginManager;->instance:Lcom/facebook/login/LoginManager;

    return-object v0

    .line 79
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private static getOtherPublishPermissions()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    new-instance v0, Lcom/facebook/login/LoginManager$2;

    invoke-direct {v0}, Lcom/facebook/login/LoginManager$2;-><init>()V

    .line 332
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static isPublishPermission(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 320
    if-eqz p0, :cond_1e

    const-string/jumbo v0, "publish"

    .line 321
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string/jumbo v0, "manage"

    .line 322
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/facebook/login/LoginManager;->OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;

    .line 323
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private logCompleteLogin(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/login/LoginClient$Result$Code;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            "Z",
            "Lcom/facebook/login/LoginClient$Request;",
            ")V"
        }
    .end annotation

    .prologue
    .line 398
    # invokes: Lcom/facebook/login/LoginManager$LoginLoggerHolder;->getLogger(Landroid/content/Context;)Lcom/facebook/login/LoginLogger;
    invoke-static {p1}, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->access$000(Landroid/content/Context;)Lcom/facebook/login/LoginLogger;

    move-result-object v0

    .line 399
    if-nez v0, :cond_7

    .line 423
    :goto_6
    return-void

    .line 402
    :cond_7
    if-nez p6, :cond_13

    .line 404
    const-string/jumbo v1, "fb_mobile_login_complete"

    const-string/jumbo v2, "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest."

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginLogger;->logUnexpectedError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 409
    :cond_13
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 410
    const-string/jumbo v3, "try_login_activity"

    if-eqz p5, :cond_2e

    const-string/jumbo v1, "1"

    :goto_20
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    invoke-virtual {p6}, Lcom/facebook/login/LoginClient$Request;->getAuthId()Ljava/lang/String;

    move-result-object v1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 416
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/login/LoginLogger;->logCompleteLogin(Ljava/lang/String;Ljava/util/Map;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;)V

    goto :goto_6

    .line 410
    :cond_2e
    const-string/jumbo v1, "0"

    goto :goto_20
.end method

.method private logStartLogin(Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V
    .registers 4

    .prologue
    .line 385
    # invokes: Lcom/facebook/login/LoginManager$LoginLoggerHolder;->getLogger(Landroid/content/Context;)Lcom/facebook/login/LoginLogger;
    invoke-static {p1}, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->access$000(Landroid/content/Context;)Lcom/facebook/login/LoginLogger;

    move-result-object v0

    .line 386
    if-eqz v0, :cond_b

    if-eqz p2, :cond_b

    .line 387
    invoke-virtual {v0, p2}, Lcom/facebook/login/LoginLogger;->logStartLogin(Lcom/facebook/login/LoginClient$Request;)V

    .line 389
    :cond_b
    return-void
.end method

.method private resolveIntent(Landroid/content/Intent;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 447
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 448
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 449
    if-nez v1, :cond_10

    .line 452
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method private startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V
    .registers 10

    .prologue
    .line 353
    invoke-interface {p1}, Lcom/facebook/login/StartActivityDelegate;->getActivityContext()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/login/LoginManager;->logStartLogin(Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V

    .line 356
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Login:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 357
    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    new-instance v1, Lcom/facebook/login/LoginManager$3;

    invoke-direct {v1, p0}, Lcom/facebook/login/LoginManager$3;-><init>(Lcom/facebook/login/LoginManager;)V

    .line 356
    invoke-static {v0, v1}, Lcom/facebook/internal/CallbackManagerImpl;->registerStaticCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    .line 366
    invoke-direct {p0, p1, p2}, Lcom/facebook/login/LoginManager;->tryFacebookActivity(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)Z

    move-result v0

    .line 368
    if-nez v0, :cond_31

    .line 369
    new-instance v4, Lcom/facebook/FacebookException;

    const-string/jumbo v0, "Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest."

    invoke-direct {v4, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 372
    const/4 v5, 0x0

    .line 374
    invoke-interface {p1}, Lcom/facebook/login/StartActivityDelegate;->getActivityContext()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/facebook/login/LoginClient$Result$Code;->ERROR:Lcom/facebook/login/LoginClient$Result$Code;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v6, p2

    .line 373
    invoke-direct/range {v0 .. v6}, Lcom/facebook/login/LoginManager;->logCompleteLogin(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V

    .line 380
    throw v4

    .line 382
    :cond_31
    return-void
.end method

.method private tryFacebookActivity(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 429
    invoke-direct {p0, p2}, Lcom/facebook/login/LoginManager;->getFacebookActivityIntent(Lcom/facebook/login/LoginClient$Request;)Landroid/content/Intent;

    move-result-object v1

    .line 431
    invoke-direct {p0, v1}, Lcom/facebook/login/LoginManager;->resolveIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 443
    :goto_b
    return v0

    .line 438
    :cond_c
    :try_start_c
    invoke-static {}, Lcom/facebook/login/LoginClient;->getLoginRequestCode()I

    move-result v2

    .line 436
    invoke-interface {p1, v1, v2}, Lcom/facebook/login/StartActivityDelegate;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_13
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c .. :try_end_13} :catch_15

    .line 443
    const/4 v0, 0x1

    goto :goto_b

    .line 439
    :catch_15
    move-exception v1

    goto :goto_b
.end method

.method private validatePublishPermissions(Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 306
    if-nez p1, :cond_3

    .line 317
    :cond_2
    return-void

    .line 309
    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 310
    invoke-static {v0}, Lcom/facebook/login/LoginManager;->isPublishPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 311
    new-instance v1, Lcom/facebook/FacebookException;

    const-string/jumbo v2, "Cannot pass a read permission (%s) to a request for publish authorization"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 312
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private validateReadPermissions(Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 291
    if-nez p1, :cond_3

    .line 303
    :cond_2
    return-void

    .line 294
    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 295
    invoke-static {v0}, Lcom/facebook/login/LoginManager;->isPublishPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 296
    new-instance v1, Lcom/facebook/FacebookException;

    const-string/jumbo v2, "Cannot pass a publish or manage permission (%s) to a request for read authorization"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 297
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getDefaultAudience()Lcom/facebook/login/DefaultAudience;
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/facebook/login/LoginManager;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    return-object v0
.end method

.method public getLoginBehavior()Lcom/facebook/login/LoginBehavior;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/facebook/login/LoginManager;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    return-object v0
.end method

.method public logInWithPublishPermissions(Landroid/app/Activity;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    invoke-direct {p0, p2}, Lcom/facebook/login/LoginManager;->validatePublishPermissions(Ljava/util/Collection;)V

    .line 286
    invoke-direct {p0, p2}, Lcom/facebook/login/LoginManager;->createLoginRequest(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 287
    new-instance v1, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;

    invoke-direct {v1, p1}, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    .line 288
    return-void
.end method

.method public logInWithPublishPermissions(Landroid/support/v4/app/Fragment;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 272
    invoke-direct {p0, p2}, Lcom/facebook/login/LoginManager;->validatePublishPermissions(Ljava/util/Collection;)V

    .line 274
    invoke-direct {p0, p2}, Lcom/facebook/login/LoginManager;->createLoginRequest(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 275
    new-instance v1, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;

    invoke-direct {v1, p1}, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    .line 276
    return-void
.end method

.method public logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 260
    invoke-direct {p0, p2}, Lcom/facebook/login/LoginManager;->validateReadPermissions(Ljava/util/Collection;)V

    .line 262
    invoke-direct {p0, p2}, Lcom/facebook/login/LoginManager;->createLoginRequest(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 263
    new-instance v1, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;

    invoke-direct {v1, p1}, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    .line 264
    return-void
.end method

.method public logInWithReadPermissions(Landroid/support/v4/app/Fragment;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    invoke-direct {p0, p2}, Lcom/facebook/login/LoginManager;->validateReadPermissions(Ljava/util/Collection;)V

    .line 250
    invoke-direct {p0, p2}, Lcom/facebook/login/LoginManager;->createLoginRequest(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v0

    .line 251
    new-instance v1, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;

    invoke-direct {v1, p1}, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v1, v0}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    .line 252
    return-void
.end method

.method public logOut()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 238
    invoke-static {v0}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    .line 239
    invoke-static {v0}, Lcom/facebook/Profile;->setCurrentProfile(Lcom/facebook/Profile;)V

    .line 240
    return-void
.end method

.method onActivityResult(ILandroid/content/Intent;)Z
    .registers 4

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/login/LoginManager;->onActivityResult(ILandroid/content/Intent;Lcom/facebook/FacebookCallback;)Z

    move-result v0

    return v0
.end method

.method onActivityResult(ILandroid/content/Intent;Lcom/facebook/FacebookCallback;)Z
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/login/LoginResult;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 150
    const/4 v4, 0x0

    .line 151
    const/4 v3, 0x0

    .line 152
    sget-object v7, Lcom/facebook/login/LoginClient$Result$Code;->ERROR:Lcom/facebook/login/LoginClient$Result$Code;

    .line 153
    const/4 v6, 0x0

    .line 154
    const/4 v5, 0x0

    .line 156
    const/4 v2, 0x0

    .line 157
    if-eqz p2, :cond_63

    .line 158
    const-string/jumbo v1, "com.facebook.LoginFragment:Result"

    .line 159
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/facebook/login/LoginClient$Result;

    .line 160
    if-eqz v1, :cond_76

    .line 161
    iget-object v5, v1, Lcom/facebook/login/LoginClient$Result;->request:Lcom/facebook/login/LoginClient$Request;

    .line 162
    iget-object v6, v1, Lcom/facebook/login/LoginClient$Result;->code:Lcom/facebook/login/LoginClient$Result$Code;

    .line 163
    const/4 v7, -0x1

    move/from16 v0, p1

    if-ne v0, v7, :cond_5f

    .line 164
    iget-object v7, v1, Lcom/facebook/login/LoginClient$Result;->code:Lcom/facebook/login/LoginClient$Result$Code;

    sget-object v8, Lcom/facebook/login/LoginClient$Result$Code;->SUCCESS:Lcom/facebook/login/LoginClient$Result$Code;

    if-ne v7, v8, :cond_57

    .line 165
    iget-object v3, v1, Lcom/facebook/login/LoginClient$Result;->token:Lcom/facebook/AccessToken;

    .line 172
    :cond_27
    :goto_27
    iget-object v1, v1, Lcom/facebook/login/LoginClient$Result;->loggingExtras:Ljava/util/Map;

    move-object v14, v5

    move-object v5, v3

    move-object v3, v1

    move-object v1, v14

    move-object v15, v6

    move-object v6, v4

    move-object v4, v15

    :goto_30
    move v12, v2

    move-object v7, v1

    move-object v9, v5

    move-object v5, v6

    move-object v14, v3

    move-object v3, v4

    move-object v4, v14

    .line 179
    :goto_37
    if-nez v5, :cond_45

    if-nez v9, :cond_45

    if-nez v12, :cond_45

    .line 180
    new-instance v5, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Unexpected call to LoginManager.onActivityResult"

    invoke-direct {v5, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 183
    :cond_45
    const/4 v6, 0x1

    .line 184
    const/4 v2, 0x0

    move-object/from16 v1, p0

    .line 185
    invoke-direct/range {v1 .. v7}, Lcom/facebook/login/LoginManager;->logCompleteLogin(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V

    move-object/from16 v8, p0

    move-object v10, v7

    move-object v11, v5

    move-object/from16 v13, p3

    .line 193
    invoke-direct/range {v8 .. v13}, Lcom/facebook/login/LoginManager;->finishLogin(Lcom/facebook/AccessToken;Lcom/facebook/login/LoginClient$Request;Lcom/facebook/FacebookException;ZLcom/facebook/FacebookCallback;)V

    .line 195
    const/4 v1, 0x1

    return v1

    .line 167
    :cond_57
    new-instance v4, Lcom/facebook/FacebookAuthorizationException;

    iget-object v7, v1, Lcom/facebook/login/LoginClient$Result;->errorMessage:Ljava/lang/String;

    invoke-direct {v4, v7}, Lcom/facebook/FacebookAuthorizationException;-><init>(Ljava/lang/String;)V

    goto :goto_27

    .line 169
    :cond_5f
    if-nez p1, :cond_27

    .line 170
    const/4 v2, 0x1

    goto :goto_27

    .line 174
    :cond_63
    if-nez p1, :cond_6f

    .line 175
    const/4 v2, 0x1

    .line 176
    sget-object v7, Lcom/facebook/login/LoginClient$Result$Code;->CANCEL:Lcom/facebook/login/LoginClient$Result$Code;

    move v12, v2

    move-object v9, v3

    move-object v3, v7

    move-object v7, v5

    move-object v5, v4

    move-object v4, v6

    goto :goto_37

    :cond_6f
    move v12, v2

    move-object v9, v3

    move-object v3, v7

    move-object v7, v5

    move-object v5, v4

    move-object v4, v6

    goto :goto_37

    :cond_76
    move-object v1, v5

    move-object v5, v3

    move-object v3, v6

    move-object v6, v4

    move-object v4, v7

    goto :goto_30
.end method

.method public registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/CallbackManager;",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/login/LoginResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    instance-of v0, p1, Lcom/facebook/internal/CallbackManagerImpl;

    if-nez v0, :cond_d

    .line 128
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Unexpected CallbackManager, please use the provided Factory."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_d
    check-cast p1, Lcom/facebook/internal/CallbackManagerImpl;

    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Login:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 132
    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    new-instance v1, Lcom/facebook/login/LoginManager$1;

    invoke-direct {v1, p0, p2}, Lcom/facebook/login/LoginManager$1;-><init>(Lcom/facebook/login/LoginManager;Lcom/facebook/FacebookCallback;)V

    .line 131
    invoke-virtual {p1, v0, v1}, Lcom/facebook/internal/CallbackManagerImpl;->registerCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    .line 143
    return-void
.end method

.method public resolveError(Landroid/app/Activity;Lcom/facebook/GraphResponse;)V
    .registers 5

    .prologue
    .line 93
    new-instance v0, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;

    invoke-direct {v0, p1}, Lcom/facebook/login/LoginManager$ActivityStartActivityDelegate;-><init>(Landroid/app/Activity;)V

    .line 95
    invoke-direct {p0, p2}, Lcom/facebook/login/LoginManager;->createLoginRequestFromResponse(Lcom/facebook/GraphResponse;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v1

    .line 93
    invoke-direct {p0, v0, v1}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    .line 97
    return-void
.end method

.method public resolveError(Landroid/support/v4/app/Fragment;Lcom/facebook/GraphResponse;)V
    .registers 5

    .prologue
    .line 107
    new-instance v0, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;

    invoke-direct {v0, p1}, Lcom/facebook/login/LoginManager$FragmentStartActivityDelegate;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 109
    invoke-direct {p0, p2}, Lcom/facebook/login/LoginManager;->createLoginRequestFromResponse(Lcom/facebook/GraphResponse;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v1

    .line 107
    invoke-direct {p0, v0, v1}, Lcom/facebook/login/LoginManager;->startLogin(Lcom/facebook/login/StartActivityDelegate;Lcom/facebook/login/LoginClient$Request;)V

    .line 111
    return-void
.end method

.method public setDefaultAudience(Lcom/facebook/login/DefaultAudience;)Lcom/facebook/login/LoginManager;
    .registers 2

    .prologue
    .line 230
    iput-object p1, p0, Lcom/facebook/login/LoginManager;->defaultAudience:Lcom/facebook/login/DefaultAudience;

    .line 231
    return-object p0
.end method

.method public setLoginBehavior(Lcom/facebook/login/LoginBehavior;)Lcom/facebook/login/LoginManager;
    .registers 2

    .prologue
    .line 212
    iput-object p1, p0, Lcom/facebook/login/LoginManager;->loginBehavior:Lcom/facebook/login/LoginBehavior;

    .line 213
    return-object p0
.end method
