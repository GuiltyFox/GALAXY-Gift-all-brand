.class public Lcom/facebook/share/internal/LikeActionController;
.super Ljava/lang/Object;
.source "LikeActionController.java"


# static fields
.field public static final ACTION_LIKE_ACTION_CONTROLLER_DID_ERROR:Ljava/lang/String; = "com.facebook.sdk.LikeActionController.DID_ERROR"

.field public static final ACTION_LIKE_ACTION_CONTROLLER_DID_RESET:Ljava/lang/String; = "com.facebook.sdk.LikeActionController.DID_RESET"

.field public static final ACTION_LIKE_ACTION_CONTROLLER_UPDATED:Ljava/lang/String; = "com.facebook.sdk.LikeActionController.UPDATED"

.field public static final ACTION_OBJECT_ID_KEY:Ljava/lang/String; = "com.facebook.sdk.LikeActionController.OBJECT_ID"

.field private static final ERROR_CODE_OBJECT_ALREADY_LIKED:I = 0xdad

.field public static final ERROR_INVALID_OBJECT_ID:Ljava/lang/String; = "Invalid Object Id"

.field public static final ERROR_PUBLISH_ERROR:Ljava/lang/String; = "Unable to publish the like/unlike action"

.field private static final JSON_BOOL_IS_OBJECT_LIKED_KEY:Ljava/lang/String; = "is_object_liked"

.field private static final JSON_BUNDLE_FACEBOOK_DIALOG_ANALYTICS_BUNDLE:Ljava/lang/String; = "facebook_dialog_analytics_bundle"

.field private static final JSON_INT_OBJECT_TYPE_KEY:Ljava/lang/String; = "object_type"

.field private static final JSON_INT_VERSION_KEY:Ljava/lang/String; = "com.facebook.share.internal.LikeActionController.version"

.field private static final JSON_STRING_LIKE_COUNT_WITHOUT_LIKE_KEY:Ljava/lang/String; = "like_count_string_without_like"

.field private static final JSON_STRING_LIKE_COUNT_WITH_LIKE_KEY:Ljava/lang/String; = "like_count_string_with_like"

.field private static final JSON_STRING_OBJECT_ID_KEY:Ljava/lang/String; = "object_id"

.field private static final JSON_STRING_SOCIAL_SENTENCE_WITHOUT_LIKE_KEY:Ljava/lang/String; = "social_sentence_without_like"

.field private static final JSON_STRING_SOCIAL_SENTENCE_WITH_LIKE_KEY:Ljava/lang/String; = "social_sentence_with_like"

.field private static final JSON_STRING_UNLIKE_TOKEN_KEY:Ljava/lang/String; = "unlike_token"

.field private static final LIKE_ACTION_CONTROLLER_STORE:Ljava/lang/String; = "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

.field private static final LIKE_ACTION_CONTROLLER_STORE_OBJECT_SUFFIX_KEY:Ljava/lang/String; = "OBJECT_SUFFIX"

.field private static final LIKE_ACTION_CONTROLLER_STORE_PENDING_OBJECT_ID_KEY:Ljava/lang/String; = "PENDING_CONTROLLER_KEY"

.field private static final LIKE_ACTION_CONTROLLER_VERSION:I = 0x3

.field private static final LIKE_DIALOG_RESPONSE_LIKE_COUNT_STRING_KEY:Ljava/lang/String; = "like_count_string"

.field private static final LIKE_DIALOG_RESPONSE_OBJECT_IS_LIKED_KEY:Ljava/lang/String; = "object_is_liked"

.field private static final LIKE_DIALOG_RESPONSE_SOCIAL_SENTENCE_KEY:Ljava/lang/String; = "social_sentence"

.field private static final LIKE_DIALOG_RESPONSE_UNLIKE_TOKEN_KEY:Ljava/lang/String; = "unlike_token"

.field private static final MAX_CACHE_SIZE:I = 0x80

.field private static final MAX_OBJECT_SUFFIX:I = 0x3e8

.field private static final TAG:Ljava/lang/String;

.field private static accessTokenTracker:Lcom/facebook/AccessTokenTracker;

.field private static final cache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/share/internal/LikeActionController;",
            ">;"
        }
    .end annotation
.end field

.field private static controllerDiskCache:Lcom/facebook/internal/FileLruCache;

.field private static diskIOWorkQueue:Lcom/facebook/internal/WorkQueue;

.field private static handler:Landroid/os/Handler;

.field private static isInitialized:Z

.field private static mruCacheWorkQueue:Lcom/facebook/internal/WorkQueue;

.field private static objectIdForPendingController:Ljava/lang/String;

.field private static volatile objectSuffix:I


# instance fields
.field private appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

.field private facebookDialogAnalyticsBundle:Landroid/os/Bundle;

.field private isObjectLiked:Z

.field private isObjectLikedOnServer:Z

.field private isPendingLikeOrUnlike:Z

.field private likeCountStringWithLike:Ljava/lang/String;

.field private likeCountStringWithoutLike:Ljava/lang/String;

.field private objectId:Ljava/lang/String;

.field private objectIsPage:Z

.field private objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

.field private socialSentenceWithLike:Ljava/lang/String;

.field private socialSentenceWithoutLike:Ljava/lang/String;

.field private unlikeToken:Ljava/lang/String;

.field private verifiedObjectId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 77
    const-class v0, Lcom/facebook/share/internal/LikeActionController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/LikeActionController;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 120
    new-instance v0, Lcom/facebook/internal/WorkQueue;

    invoke-direct {v0, v1}, Lcom/facebook/internal/WorkQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/share/internal/LikeActionController;->mruCacheWorkQueue:Lcom/facebook/internal/WorkQueue;

    .line 122
    new-instance v0, Lcom/facebook/internal/WorkQueue;

    invoke-direct {v0, v1}, Lcom/facebook/internal/WorkQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/share/internal/LikeActionController;->diskIOWorkQueue:Lcom/facebook/internal/WorkQueue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V
    .registers 3

    .prologue
    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    .line 603
    iput-object p2, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 604
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/internal/LikeActionController;IILandroid/content/Intent;)V
    .registers 4

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/internal/LikeActionController;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/facebook/share/internal/LikeActionController;)Lcom/facebook/appevents/AppEventsLogger;
    .registers 2

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeActionController;->getAppEventsLogger()Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/facebook/share/internal/LikeActionController;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 62
    invoke-direct/range {p0 .. p6}, Lcom/facebook/share/internal/LikeActionController;->updateState(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/facebook/share/internal/LikeActionController;->logAppEventForError(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 62
    invoke-static {p0, p1, p2}, Lcom/facebook/share/internal/LikeActionController;->broadcastAction(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->verifiedObjectId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController;->verifiedObjectId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/facebook/share/internal/LikeActionController;)Lcom/facebook/share/widget/LikeView$ObjectType;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/facebook/share/internal/LikeActionController;Z)Z
    .registers 2

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/facebook/share/internal/LikeActionController;->isPendingLikeOrUnlike:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/facebook/share/internal/LikeActionController;Z)V
    .registers 2

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/LikeActionController;->publishDidError(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/share/internal/LikeActionController;)V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeActionController;->refreshStatusAsync()V

    return-void
.end method

.method static synthetic access$2002(Lcom/facebook/share/internal/LikeActionController;Z)Z
    .registers 2

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLikedOnServer:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/facebook/share/internal/LikeActionController;Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/LikeActionController;->publishAgainIfNeeded(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/facebook/share/internal/LikeActionController;Z)Z
    .registers 2

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/facebook/share/internal/LikeActionController;->objectIsPage:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V
    .registers 3

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/facebook/share/internal/LikeActionController;->logAppEventForError(Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/facebook/share/internal/LikeActionController;)Z
    .registers 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    return v0
.end method

.method static synthetic access$2600(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/facebook/share/internal/LikeActionController;->serializeToDiskSynchronously(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V
    .registers 3

    .prologue
    .line 62
    invoke-static {p0, p1, p2}, Lcom/facebook/share/internal/LikeActionController;->createControllerForObjectIdAndType(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V

    return-void
.end method

.method static synthetic access$300()I
    .registers 1

    .prologue
    .line 62
    sget v0, Lcom/facebook/share/internal/LikeActionController;->objectSuffix:I

    return v0
.end method

.method static synthetic access$302(I)I
    .registers 1

    .prologue
    .line 62
    sput p0, Lcom/facebook/share/internal/LikeActionController;->objectSuffix:I

    return p0
.end method

.method static synthetic access$400()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/facebook/share/internal/LikeActionController;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$500()Lcom/facebook/internal/FileLruCache;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/facebook/share/internal/LikeActionController;->controllerDiskCache:Lcom/facebook/internal/FileLruCache;

    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/facebook/share/internal/LikeActionController;->broadcastAction(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;

    return-object v0
.end method

.method private static broadcastAction(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 575
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/facebook/share/internal/LikeActionController;->broadcastAction(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 576
    return-void
.end method

.method private static broadcastAction(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .prologue
    .line 582
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 583
    if-eqz p0, :cond_18

    .line 584
    if-nez p2, :cond_e

    .line 585
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 588
    :cond_e
    const-string/jumbo v1, "com.facebook.sdk.LikeActionController.OBJECT_ID"

    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeActionController;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    :cond_18
    if-eqz p2, :cond_1d

    .line 592
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 594
    :cond_1d
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->a(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 595
    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->a(Landroid/content/Intent;)Z

    .line 596
    return-void
.end method

.method private canUseOGPublish()Z
    .registers 3

    .prologue
    .line 966
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 969
    iget-boolean v1, p0, Lcom/facebook/share/internal/LikeActionController;->objectIsPage:Z

    if-nez v1, :cond_23

    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController;->verifiedObjectId:Ljava/lang/String;

    if-eqz v1, :cond_23

    if-eqz v0, :cond_23

    .line 972
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 973
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "publish_actions"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private clearState()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 948
    iput-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->facebookDialogAnalyticsBundle:Landroid/os/Bundle;

    .line 950
    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->storeObjectIdForPendingController(Ljava/lang/String;)V

    .line 951
    return-void
.end method

.method private static createControllerForObjectIdAndType(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V
    .registers 6

    .prologue
    .line 262
    invoke-static {p0}, Lcom/facebook/share/internal/LikeActionController;->getControllerFromInMemoryCache(Ljava/lang/String;)Lcom/facebook/share/internal/LikeActionController;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_a

    .line 265
    invoke-static {v0, p1, p2}, Lcom/facebook/share/internal/LikeActionController;->verifyControllerAndInvokeCallback(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V

    .line 290
    :goto_9
    return-void

    .line 270
    :cond_a
    invoke-static {p0}, Lcom/facebook/share/internal/LikeActionController;->deserializeFromDiskSynchronously(Ljava/lang/String;)Lcom/facebook/share/internal/LikeActionController;

    move-result-object v0

    .line 272
    if-nez v0, :cond_18

    .line 273
    new-instance v0, Lcom/facebook/share/internal/LikeActionController;

    invoke-direct {v0, p0, p1}, Lcom/facebook/share/internal/LikeActionController;-><init>(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 274
    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->serializeToDiskAsync(Lcom/facebook/share/internal/LikeActionController;)V

    .line 278
    :cond_18
    invoke-static {p0, v0}, Lcom/facebook/share/internal/LikeActionController;->putControllerInMemoryCache(Ljava/lang/String;Lcom/facebook/share/internal/LikeActionController;)V

    .line 282
    sget-object v1, Lcom/facebook/share/internal/LikeActionController;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/share/internal/LikeActionController$2;

    invoke-direct {v2, v0}, Lcom/facebook/share/internal/LikeActionController$2;-><init>(Lcom/facebook/share/internal/LikeActionController;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 289
    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/facebook/share/internal/LikeActionController;->invokeCallbackWithController(Lcom/facebook/share/internal/LikeActionController$CreationCallback;Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/FacebookException;)V

    goto :goto_9
.end method

.method private static deserializeFromDiskSynchronously(Ljava/lang/String;)Lcom/facebook/share/internal/LikeActionController;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 437
    .line 441
    :try_start_1
    invoke-static {p0}, Lcom/facebook/share/internal/LikeActionController;->getCacheKeyForObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 442
    sget-object v2, Lcom/facebook/share/internal/LikeActionController;->controllerDiskCache:Lcom/facebook/internal/FileLruCache;

    invoke-virtual {v2, v1}, Lcom/facebook/internal/FileLruCache;->get(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_21
    .catchall {:try_start_1 .. :try_end_a} :catchall_31

    move-result-object v2

    .line 443
    if-eqz v2, :cond_1b

    .line 444
    :try_start_d
    invoke-static {v2}, Lcom/facebook/internal/Utility;->readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 445
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 446
    invoke-static {v1}, Lcom/facebook/share/internal/LikeActionController;->deserializeFromJson(Ljava/lang/String;)Lcom/facebook/share/internal/LikeActionController;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1a} :catch_3c
    .catchall {:try_start_d .. :try_end_1a} :catchall_3a

    move-result-object v0

    .line 453
    :cond_1b
    if-eqz v2, :cond_20

    .line 454
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 458
    :cond_20
    :goto_20
    return-object v0

    .line 449
    :catch_21
    move-exception v1

    move-object v2, v0

    .line 450
    :goto_23
    :try_start_23
    sget-object v3, Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Unable to deserialize controller from disk"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_3a

    .line 453
    if-eqz v2, :cond_20

    .line 454
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_20

    .line 453
    :catchall_31
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_34
    if-eqz v2, :cond_39

    .line 454
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    :cond_39
    throw v0

    .line 453
    :catchall_3a
    move-exception v0

    goto :goto_34

    .line 449
    :catch_3c
    move-exception v1

    goto :goto_23
.end method

.method private static deserializeFromJson(Ljava/lang/String;)Lcom/facebook/share/internal/LikeActionController;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 465
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 466
    const-string/jumbo v0, "com.facebook.share.internal.LikeActionController.version"

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 467
    const/4 v3, 0x3

    if-eq v0, v3, :cond_12

    .line 506
    :goto_11
    return-object v1

    .line 473
    :cond_12
    const-string/jumbo v0, "object_id"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 474
    const-string/jumbo v0, "object_type"

    sget-object v4, Lcom/facebook/share/widget/LikeView$ObjectType;->UNKNOWN:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 476
    invoke-virtual {v4}, Lcom/facebook/share/widget/LikeView$ObjectType;->getValue()I

    move-result v4

    .line 474
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 478
    new-instance v0, Lcom/facebook/share/internal/LikeActionController;

    .line 480
    invoke-static {v4}, Lcom/facebook/share/widget/LikeView$ObjectType;->fromInt(I)Lcom/facebook/share/widget/LikeView$ObjectType;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/facebook/share/internal/LikeActionController;-><init>(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 484
    const-string/jumbo v3, "like_count_string_with_like"

    const/4 v4, 0x0

    .line 485
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;

    .line 486
    const-string/jumbo v3, "like_count_string_without_like"

    const/4 v4, 0x0

    .line 487
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;

    .line 488
    const-string/jumbo v3, "social_sentence_with_like"

    const/4 v4, 0x0

    .line 489
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;

    .line 490
    const-string/jumbo v3, "social_sentence_without_like"

    const/4 v4, 0x0

    .line 491
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;

    .line 492
    const-string/jumbo v3, "is_object_liked"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    .line 493
    const-string/jumbo v3, "unlike_token"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    .line 495
    const-string/jumbo v3, "facebook_dialog_analytics_bundle"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 497
    if-eqz v2, :cond_79

    .line 499
    invoke-static {v2}, Lcom/facebook/internal/BundleJSONConverter;->convertToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/share/internal/LikeActionController;->facebookDialogAnalyticsBundle:Landroid/os/Bundle;
    :try_end_79
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_79} :catch_7b

    :cond_79
    :goto_79
    move-object v1, v0

    .line 506
    goto :goto_11

    .line 501
    :catch_7b
    move-exception v0

    .line 502
    sget-object v2, Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unable to deserialize controller from JSON"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 503
    goto :goto_79
.end method

.method private fetchVerifiedObjectId(Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;)V
    .registers 6

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->verifiedObjectId:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1198
    if-eqz p1, :cond_d

    .line 1199
    invoke-interface {p1}, Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;->onComplete()V

    .line 1242
    :cond_d
    :goto_d
    return-void

    .line 1205
    :cond_e
    new-instance v0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;

    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 1207
    new-instance v1, Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-direct {v1, p0, v2, v3}, Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 1210
    new-instance v2, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v2}, Lcom/facebook/GraphRequestBatch;-><init>()V

    .line 1211
    invoke-virtual {v0, v2}, Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;->addToBatch(Lcom/facebook/GraphRequestBatch;)V

    .line 1212
    invoke-virtual {v1, v2}, Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;->addToBatch(Lcom/facebook/GraphRequestBatch;)V

    .line 1214
    new-instance v3, Lcom/facebook/share/internal/LikeActionController$11;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/facebook/share/internal/LikeActionController$11;-><init>(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;)V

    invoke-virtual {v2, v3}, Lcom/facebook/GraphRequestBatch;->addCallback(Lcom/facebook/GraphRequestBatch$Callback;)V

    .line 1241
    invoke-virtual {v2}, Lcom/facebook/GraphRequestBatch;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    goto :goto_d
.end method

.method private getAppEventsLogger()Lcom/facebook/appevents/AppEventsLogger;
    .registers 2

    .prologue
    .line 697
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    if-nez v0, :cond_e

    .line 698
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    .line 700
    :cond_e
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    return-object v0
.end method

.method private static getCacheKeyForObjectId(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 548
    const/4 v0, 0x0

    .line 549
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    .line 550
    if-eqz v1, :cond_b

    .line 551
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 553
    :cond_b
    if-eqz v0, :cond_11

    .line 558
    invoke-static {v0}, Lcom/facebook/internal/Utility;->md5hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 560
    :cond_11
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v2, "%s|%s|com.fb.sdk.like|%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, ""

    .line 564
    invoke-static {v0, v5}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    sget v4, Lcom/facebook/share/internal/LikeActionController;->objectSuffix:I

    .line 565
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 560
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getControllerForObjectId(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V
    .registers 5

    .prologue
    .line 210
    sget-boolean v0, Lcom/facebook/share/internal/LikeActionController;->isInitialized:Z

    if-nez v0, :cond_7

    .line 211
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->performFirstInitialize()V

    .line 214
    :cond_7
    invoke-static {p0}, Lcom/facebook/share/internal/LikeActionController;->getControllerFromInMemoryCache(Ljava/lang/String;)Lcom/facebook/share/internal/LikeActionController;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_11

    .line 217
    invoke-static {v0, p1, p2}, Lcom/facebook/share/internal/LikeActionController;->verifyControllerAndInvokeCallback(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V

    .line 222
    :goto_10
    return-void

    .line 219
    :cond_11
    sget-object v0, Lcom/facebook/share/internal/LikeActionController;->diskIOWorkQueue:Lcom/facebook/internal/WorkQueue;

    new-instance v1, Lcom/facebook/share/internal/LikeActionController$CreateLikeActionControllerWorkItem;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/share/internal/LikeActionController$CreateLikeActionControllerWorkItem;-><init>(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V

    invoke-virtual {v0, v1}, Lcom/facebook/internal/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/internal/WorkQueue$WorkItem;

    goto :goto_10
.end method

.method private static getControllerFromInMemoryCache(Ljava/lang/String;)Lcom/facebook/share/internal/LikeActionController;
    .registers 6

    .prologue
    .line 389
    invoke-static {p0}, Lcom/facebook/share/internal/LikeActionController;->getCacheKeyForObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 391
    sget-object v0, Lcom/facebook/share/internal/LikeActionController;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/internal/LikeActionController;

    .line 392
    if-eqz v0, :cond_19

    .line 394
    sget-object v2, Lcom/facebook/share/internal/LikeActionController;->mruCacheWorkQueue:Lcom/facebook/internal/WorkQueue;

    new-instance v3, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lcom/facebook/internal/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/internal/WorkQueue$WorkItem;

    .line 397
    :cond_19
    return-object v0
.end method

.method private getResultProcessor(Landroid/os/Bundle;)Lcom/facebook/share/internal/ResultProcessor;
    .registers 4

    .prologue
    .line 854
    new-instance v0, Lcom/facebook/share/internal/LikeActionController$6;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/share/internal/LikeActionController$6;-><init>(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/FacebookCallback;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static handleOnActivityResult(IILandroid/content/Intent;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 162
    sget-object v1, Lcom/facebook/share/internal/LikeActionController;->objectIdForPendingController:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 163
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 164
    const-string/jumbo v2, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 168
    const-string/jumbo v2, "PENDING_CONTROLLER_KEY"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/facebook/share/internal/LikeActionController;->objectIdForPendingController:Ljava/lang/String;

    .line 173
    :cond_1e
    sget-object v1, Lcom/facebook/share/internal/LikeActionController;->objectIdForPendingController:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 197
    :goto_26
    return v0

    .line 178
    :cond_27
    sget-object v0, Lcom/facebook/share/internal/LikeActionController;->objectIdForPendingController:Ljava/lang/String;

    sget-object v1, Lcom/facebook/share/widget/LikeView$ObjectType;->UNKNOWN:Lcom/facebook/share/widget/LikeView$ObjectType;

    new-instance v2, Lcom/facebook/share/internal/LikeActionController$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/facebook/share/internal/LikeActionController$1;-><init>(IILandroid/content/Intent;)V

    invoke-static {v0, v1, v2}, Lcom/facebook/share/internal/LikeActionController;->getControllerForObjectId(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V

    .line 197
    const/4 v0, 0x1

    goto :goto_26
.end method

.method private static invokeCallbackWithController(Lcom/facebook/share/internal/LikeActionController$CreationCallback;Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/FacebookException;)V
    .registers 5

    .prologue
    .line 328
    if-nez p0, :cond_3

    .line 338
    :goto_2
    return-void

    .line 332
    :cond_3
    sget-object v0, Lcom/facebook/share/internal/LikeActionController;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/share/internal/LikeActionController$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/share/internal/LikeActionController$4;-><init>(Lcom/facebook/share/internal/LikeActionController$CreationCallback;Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/FacebookException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method private logAppEventForError(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    .prologue
    .line 1245
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1246
    const-string/jumbo v1, "object_id"

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    const-string/jumbo v1, "object_type"

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-virtual {v2}, Lcom/facebook/share/widget/LikeView$ObjectType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    const-string/jumbo v1, "current_action"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeActionController;->getAppEventsLogger()Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v1

    const-string/jumbo v2, "fb_like_control_error"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 1251
    return-void
.end method

.method private logAppEventForError(Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V
    .registers 6

    .prologue
    .line 1254
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1255
    if-eqz p2, :cond_17

    .line 1256
    invoke-virtual {p2}, Lcom/facebook/FacebookRequestError;->getRequestResult()Lorg/json/JSONObject;

    move-result-object v1

    .line 1257
    if-eqz v1, :cond_17

    .line 1258
    const-string/jumbo v2, "error"

    .line 1260
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1258
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    :cond_17
    invoke-direct {p0, p1, v0}, Lcom/facebook/share/internal/LikeActionController;->logAppEventForError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1264
    return-void
.end method

.method private onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .prologue
    .line 842
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->facebookDialogAnalyticsBundle:Landroid/os/Bundle;

    .line 846
    invoke-direct {p0, v0}, Lcom/facebook/share/internal/LikeActionController;->getResultProcessor(Landroid/os/Bundle;)Lcom/facebook/share/internal/ResultProcessor;

    move-result-object v0

    .line 842
    invoke-static {p1, p2, p3, v0}, Lcom/facebook/share/internal/ShareInternalUtility;->handleActivityResult(IILandroid/content/Intent;Lcom/facebook/share/internal/ResultProcessor;)Z

    .line 850
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeActionController;->clearState()V

    .line 851
    return-void
.end method

.method private static declared-synchronized performFirstInitialize()V
    .registers 4

    .prologue
    .line 293
    const-class v1, Lcom/facebook/share/internal/LikeActionController;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/facebook/share/internal/LikeActionController;->isInitialized:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_4d

    if-eqz v0, :cond_9

    .line 322
    :goto_7
    monitor-exit v1

    return-void

    .line 297
    :cond_9
    :try_start_9
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/facebook/share/internal/LikeActionController;->handler:Landroid/os/Handler;

    .line 299
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 300
    const-string/jumbo v2, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 304
    const-string/jumbo v2, "OBJECT_SUFFIX"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/facebook/share/internal/LikeActionController;->objectSuffix:I

    .line 305
    new-instance v0, Lcom/facebook/internal/FileLruCache;

    sget-object v2, Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;

    new-instance v3, Lcom/facebook/internal/FileLruCache$Limits;

    invoke-direct {v3}, Lcom/facebook/internal/FileLruCache$Limits;-><init>()V

    invoke-direct {v0, v2, v3}, Lcom/facebook/internal/FileLruCache;-><init>(Ljava/lang/String;Lcom/facebook/internal/FileLruCache$Limits;)V

    sput-object v0, Lcom/facebook/share/internal/LikeActionController;->controllerDiskCache:Lcom/facebook/internal/FileLruCache;

    .line 307
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->registerAccessTokenTracker()V

    .line 309
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Like:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 310
    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    new-instance v2, Lcom/facebook/share/internal/LikeActionController$3;

    invoke-direct {v2}, Lcom/facebook/share/internal/LikeActionController$3;-><init>()V

    .line 309
    invoke-static {v0, v2}, Lcom/facebook/internal/CallbackManagerImpl;->registerStaticCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    .line 321
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/share/internal/LikeActionController;->isInitialized:Z
    :try_end_4c
    .catchall {:try_start_9 .. :try_end_4c} :catchall_4d

    goto :goto_7

    .line 293
    :catchall_4d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private presentLikeDialog(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 795
    .line 797
    invoke-static {}, Lcom/facebook/share/internal/LikeDialog;->canShowNativeDialog()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 798
    const-string/jumbo v0, "fb_like_control_did_present_dialog"

    .line 813
    :goto_a
    if-eqz v0, :cond_40

    .line 814
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 815
    invoke-virtual {v0}, Lcom/facebook/share/widget/LikeView$ObjectType;->toString()Ljava/lang/String;

    move-result-object v0

    .line 817
    :goto_16
    new-instance v2, Lcom/facebook/share/internal/LikeContent$Builder;

    invoke-direct {v2}, Lcom/facebook/share/internal/LikeContent$Builder;-><init>()V

    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    .line 818
    invoke-virtual {v2, v3}, Lcom/facebook/share/internal/LikeContent$Builder;->setObjectId(Ljava/lang/String;)Lcom/facebook/share/internal/LikeContent$Builder;

    move-result-object v2

    .line 819
    invoke-virtual {v2, v0}, Lcom/facebook/share/internal/LikeContent$Builder;->setObjectType(Ljava/lang/String;)Lcom/facebook/share/internal/LikeContent$Builder;

    move-result-object v0

    .line 820
    invoke-virtual {v0}, Lcom/facebook/share/internal/LikeContent$Builder;->build()Lcom/facebook/share/internal/LikeContent;

    move-result-object v0

    .line 822
    if-eqz p2, :cond_68

    .line 823
    new-instance v2, Lcom/facebook/share/internal/LikeDialog;

    invoke-direct {v2, p2}, Lcom/facebook/share/internal/LikeDialog;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v2, v0}, Lcom/facebook/share/internal/LikeDialog;->show(Ljava/lang/Object;)V

    .line 828
    :goto_33
    invoke-direct {p0, p3}, Lcom/facebook/share/internal/LikeActionController;->saveState(Landroid/os/Bundle;)V

    .line 830
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeActionController;->getAppEventsLogger()Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    const-string/jumbo v2, "fb_like_control_did_present_dialog"

    invoke-virtual {v0, v2, v1, p3}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 835
    :cond_40
    return-void

    .line 799
    :cond_41
    invoke-static {}, Lcom/facebook/share/internal/LikeDialog;->canShowWebFallback()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 800
    const-string/jumbo v0, "fb_like_control_did_present_fallback_dialog"

    goto :goto_a

    .line 803
    :cond_4b
    const-string/jumbo v0, "present_dialog"

    invoke-direct {p0, v0, p3}, Lcom/facebook/share/internal/LikeActionController;->logAppEventForError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 804
    sget-object v0, Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Cannot show the Like Dialog on this device."

    invoke-static {v0, v2}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    const-string/jumbo v0, "com.facebook.sdk.LikeActionController.UPDATED"

    invoke-static {v1, v0}, Lcom/facebook/share/internal/LikeActionController;->broadcastAction(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_a

    .line 815
    :cond_61
    sget-object v0, Lcom/facebook/share/widget/LikeView$ObjectType;->UNKNOWN:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 816
    invoke-virtual {v0}, Lcom/facebook/share/widget/LikeView$ObjectType;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 825
    :cond_68
    new-instance v2, Lcom/facebook/share/internal/LikeDialog;

    invoke-direct {v2, p1}, Lcom/facebook/share/internal/LikeDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v0}, Lcom/facebook/share/internal/LikeDialog;->show(Ljava/lang/Object;)V

    goto :goto_33
.end method

.method private publishAgainIfNeeded(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 1188
    iget-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    iget-boolean v1, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLikedOnServer:Z

    if-eq v0, v1, :cond_16

    iget-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    .line 1189
    invoke-direct {p0, v0, p1}, Lcom/facebook/share/internal/LikeActionController;->publishLikeOrUnlikeAsync(ZLandroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1192
    iget-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    if-nez v0, :cond_17

    const/4 v0, 0x1

    :goto_13
    invoke-direct {p0, v0}, Lcom/facebook/share/internal/LikeActionController;->publishDidError(Z)V

    .line 1194
    :cond_16
    return-void

    .line 1192
    :cond_17
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private publishDidError(Z)V
    .registers 5

    .prologue
    .line 725
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/LikeActionController;->updateLikeState(Z)V

    .line 727
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 728
    const-string/jumbo v1, "com.facebook.platform.status.ERROR_DESCRIPTION"

    const-string/jumbo v2, "Unable to publish the like/unlike action"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    const-string/jumbo v1, "com.facebook.sdk.LikeActionController.DID_ERROR"

    invoke-static {p0, v1, v0}, Lcom/facebook/share/internal/LikeActionController;->broadcastAction(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 736
    return-void
.end method

.method private publishLikeAsync(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 977
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController;->isPendingLikeOrUnlike:Z

    .line 979
    new-instance v0, Lcom/facebook/share/internal/LikeActionController$7;

    invoke-direct {v0, p0, p1}, Lcom/facebook/share/internal/LikeActionController$7;-><init>(Lcom/facebook/share/internal/LikeActionController;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/internal/LikeActionController;->fetchVerifiedObjectId(Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;)V

    .line 1031
    return-void
.end method

.method private publishLikeOrUnlikeAsync(ZLandroid/os/Bundle;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 706
    const/4 v1, 0x0

    .line 707
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeActionController;->canUseOGPublish()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 708
    if-eqz p1, :cond_e

    .line 710
    invoke-direct {p0, p2}, Lcom/facebook/share/internal/LikeActionController;->publishLikeAsync(Landroid/os/Bundle;)V

    .line 717
    :goto_d
    return v0

    .line 711
    :cond_e
    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 713
    invoke-direct {p0, p2}, Lcom/facebook/share/internal/LikeActionController;->publishUnlikeAsync(Landroid/os/Bundle;)V

    goto :goto_d

    :cond_1a
    move v0, v1

    goto :goto_d
.end method

.method private publishUnlikeAsync(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 1034
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController;->isPendingLikeOrUnlike:Z

    .line 1037
    new-instance v0, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v0}, Lcom/facebook/GraphRequestBatch;-><init>()V

    .line 1038
    new-instance v1, Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)V

    .line 1040
    invoke-virtual {v1, v0}, Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;->addToBatch(Lcom/facebook/GraphRequestBatch;)V

    .line 1041
    new-instance v2, Lcom/facebook/share/internal/LikeActionController$8;

    invoke-direct {v2, p0, v1, p1}, Lcom/facebook/share/internal/LikeActionController$8;-><init>(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Lcom/facebook/GraphRequestBatch;->addCallback(Lcom/facebook/GraphRequestBatch$Callback;)V

    .line 1066
    invoke-virtual {v0}, Lcom/facebook/GraphRequestBatch;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 1067
    return-void
.end method

.method private static putControllerInMemoryCache(Ljava/lang/String;Lcom/facebook/share/internal/LikeActionController;)V
    .registers 6

    .prologue
    .line 381
    invoke-static {p0}, Lcom/facebook/share/internal/LikeActionController;->getCacheKeyForObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    sget-object v1, Lcom/facebook/share/internal/LikeActionController;->mruCacheWorkQueue:Lcom/facebook/internal/WorkQueue;

    new-instance v2, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/facebook/internal/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/internal/WorkQueue$WorkItem;

    .line 385
    sget-object v1, Lcom/facebook/share/internal/LikeActionController;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    return-void
.end method

.method private refreshStatusAsync()V
    .registers 2

    .prologue
    .line 1070
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 1071
    if-nez v0, :cond_a

    .line 1075
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeActionController;->refreshStatusViaService()V

    .line 1126
    :goto_9
    return-void

    .line 1079
    :cond_a
    new-instance v0, Lcom/facebook/share/internal/LikeActionController$9;

    invoke-direct {v0, p0}, Lcom/facebook/share/internal/LikeActionController$9;-><init>(Lcom/facebook/share/internal/LikeActionController;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/internal/LikeActionController;->fetchVerifiedObjectId(Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;)V

    goto :goto_9
.end method

.method private refreshStatusViaService()V
    .registers 5

    .prologue
    .line 1129
    new-instance v0, Lcom/facebook/share/internal/LikeStatusClient;

    .line 1130
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1131
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/share/internal/LikeStatusClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    invoke-virtual {v0}, Lcom/facebook/share/internal/LikeStatusClient;->start()Z

    move-result v1

    if-nez v1, :cond_16

    .line 1185
    :goto_15
    return-void

    .line 1137
    :cond_16
    new-instance v1, Lcom/facebook/share/internal/LikeActionController$10;

    invoke-direct {v1, p0}, Lcom/facebook/share/internal/LikeActionController$10;-><init>(Lcom/facebook/share/internal/LikeActionController;)V

    .line 1184
    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/LikeStatusClient;->setCompletedListener(Lcom/facebook/internal/PlatformServiceClient$CompletedListener;)V

    goto :goto_15
.end method

.method private static registerAccessTokenTracker()V
    .registers 1

    .prologue
    .line 345
    new-instance v0, Lcom/facebook/share/internal/LikeActionController$5;

    invoke-direct {v0}, Lcom/facebook/share/internal/LikeActionController$5;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/LikeActionController;->accessTokenTracker:Lcom/facebook/AccessTokenTracker;

    .line 376
    return-void
.end method

.method private saveState(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 938
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->storeObjectIdForPendingController(Ljava/lang/String;)V

    .line 941
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController;->facebookDialogAnalyticsBundle:Landroid/os/Bundle;

    .line 944
    invoke-static {p0}, Lcom/facebook/share/internal/LikeActionController;->serializeToDiskAsync(Lcom/facebook/share/internal/LikeActionController;)V

    .line 945
    return-void
.end method

.method private static serializeToDiskAsync(Lcom/facebook/share/internal/LikeActionController;)V
    .registers 5

    .prologue
    .line 405
    invoke-static {p0}, Lcom/facebook/share/internal/LikeActionController;->serializeToJson(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v0

    .line 406
    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/share/internal/LikeActionController;->getCacheKeyForObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 409
    sget-object v2, Lcom/facebook/share/internal/LikeActionController;->diskIOWorkQueue:Lcom/facebook/internal/WorkQueue;

    new-instance v3, Lcom/facebook/share/internal/LikeActionController$SerializeToDiskWorkItem;

    invoke-direct {v3, v1, v0}, Lcom/facebook/share/internal/LikeActionController$SerializeToDiskWorkItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/facebook/internal/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/internal/WorkQueue$WorkItem;

    .line 412
    :cond_20
    return-void
.end method

.method private static serializeToDiskSynchronously(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 419
    const/4 v1, 0x0

    .line 421
    :try_start_1
    sget-object v0, Lcom/facebook/share/internal/LikeActionController;->controllerDiskCache:Lcom/facebook/internal/FileLruCache;

    invoke-virtual {v0, p0}, Lcom/facebook/internal/FileLruCache;->openPutStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    .line 422
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_14
    .catchall {:try_start_1 .. :try_end_e} :catchall_23

    .line 426
    if-eqz v1, :cond_13

    .line 427
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 430
    :cond_13
    :goto_13
    return-void

    .line 423
    :catch_14
    move-exception v0

    .line 424
    :try_start_15
    sget-object v2, Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unable to serialize controller to disk"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_23

    .line 426
    if-eqz v1, :cond_13

    .line 427
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_13

    .line 426
    :catchall_23
    move-exception v0

    if-eqz v1, :cond_29

    .line 427
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    :cond_29
    throw v0
.end method

.method private static serializeToJson(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 510
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 512
    :try_start_5
    const-string/jumbo v1, "com.facebook.share.internal.LikeActionController.version"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 513
    const-string/jumbo v1, "object_id"

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 514
    const-string/jumbo v1, "object_type"

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-virtual {v2}, Lcom/facebook/share/widget/LikeView$ObjectType;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 515
    const-string/jumbo v1, "like_count_string_with_like"

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 518
    const-string/jumbo v1, "like_count_string_without_like"

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 521
    const-string/jumbo v1, "social_sentence_with_like"

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 524
    const-string/jumbo v1, "social_sentence_without_like"

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 527
    const-string/jumbo v1, "is_object_liked"

    iget-boolean v2, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 528
    const-string/jumbo v1, "unlike_token"

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 529
    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController;->facebookDialogAnalyticsBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_62

    .line 530
    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController;->facebookDialogAnalyticsBundle:Landroid/os/Bundle;

    .line 531
    invoke-static {v1}, Lcom/facebook/internal/BundleJSONConverter;->convertToJSON(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v1

    .line 533
    if-eqz v1, :cond_62

    .line 534
    const-string/jumbo v2, "facebook_dialog_analytics_bundle"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_62} :catch_67

    .line 544
    :cond_62
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_66
    return-object v0

    .line 539
    :catch_67
    move-exception v0

    .line 540
    sget-object v1, Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unable to serialize controller to JSON"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 541
    const/4 v0, 0x0

    goto :goto_66
.end method

.method private static storeObjectIdForPendingController(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 954
    sput-object p0, Lcom/facebook/share/internal/LikeActionController;->objectIdForPendingController:Ljava/lang/String;

    .line 955
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 957
    const-string/jumbo v1, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 958
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "PENDING_CONTROLLER_KEY"

    sget-object v2, Lcom/facebook/share/internal/LikeActionController;->objectIdForPendingController:Ljava/lang/String;

    .line 959
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 962
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 963
    return-void
.end method

.method private updateLikeState(Z)V
    .registers 9

    .prologue
    .line 739
    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/share/internal/LikeActionController;->updateState(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    return-void
.end method

.method private updateState(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .prologue
    const/4 v0, 0x0

    .line 754
    invoke-static {p2, v0}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 756
    invoke-static {p3, v0}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 757
    invoke-static {p4, v0}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 759
    invoke-static {p5, v0}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 760
    invoke-static {p6, v0}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 762
    iget-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    if-ne p1, v0, :cond_41

    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;

    .line 763
    invoke-static {v1, v0}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;

    .line 766
    invoke-static {v2, v0}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;

    .line 769
    invoke-static {v3, v0}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;

    .line 770
    invoke-static {v4, v0}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    .line 773
    invoke-static {v5, v0}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    :cond_41
    const/4 v0, 0x1

    .line 775
    :goto_42
    if-nez v0, :cond_47

    .line 789
    :goto_44
    return-void

    .line 773
    :cond_45
    const/4 v0, 0x0

    goto :goto_42

    .line 779
    :cond_47
    iput-boolean p1, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    .line 780
    iput-object v1, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;

    .line 781
    iput-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;

    .line 782
    iput-object v3, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;

    .line 783
    iput-object v4, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;

    .line 784
    iput-object v5, p0, Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    .line 786
    invoke-static {p0}, Lcom/facebook/share/internal/LikeActionController;->serializeToDiskAsync(Lcom/facebook/share/internal/LikeActionController;)V

    .line 788
    const-string/jumbo v0, "com.facebook.sdk.LikeActionController.UPDATED"

    invoke-static {p0, v0}, Lcom/facebook/share/internal/LikeActionController;->broadcastAction(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)V

    goto :goto_44
.end method

.method private static verifyControllerAndInvokeCallback(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 228
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-static {p1, v0}, Lcom/facebook/share/internal/ShareInternalUtility;->getMostSpecificObjectType(Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/widget/LikeView$ObjectType;)Lcom/facebook/share/widget/LikeView$ObjectType;

    move-result-object v0

    .line 232
    if-nez v0, :cond_2d

    .line 235
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v2, "Object with id:\"%s\" is already marked as type:\"%s\". Cannot change the type to:\"%s\""

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 239
    invoke-virtual {v5}, Lcom/facebook/share/widget/LikeView$ObjectType;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 240
    invoke-virtual {p1}, Lcom/facebook/share/widget/LikeView$ObjectType;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    :goto_29
    invoke-static {p2, v1, v0}, Lcom/facebook/share/internal/LikeActionController;->invokeCallbackWithController(Lcom/facebook/share/internal/LikeActionController$CreationCallback;Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/FacebookException;)V

    .line 247
    return-void

    .line 243
    :cond_2d
    iput-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    move-object v0, v1

    move-object v1, p0

    goto :goto_29
.end method


# virtual methods
.method public getLikeCountString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 621
    iget-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;

    goto :goto_6
.end method

.method public getObjectId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method public getSocialSentence()Ljava/lang/String;
    .registers 2

    .prologue
    .line 630
    iget-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;

    goto :goto_6
.end method

.method public isObjectLiked()Z
    .registers 2

    .prologue
    .line 639
    iget-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    return v0
.end method

.method public shouldEnableView()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 648
    invoke-static {}, Lcom/facebook/share/internal/LikeDialog;->canShowNativeDialog()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static {}, Lcom/facebook/share/internal/LikeDialog;->canShowWebFallback()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 665
    :cond_e
    :goto_e
    return v0

    .line 651
    :cond_f
    iget-boolean v2, p0, Lcom/facebook/share/internal/LikeActionController;->objectIsPage:Z

    if-nez v2, :cond_19

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    sget-object v3, Lcom/facebook/share/widget/LikeView$ObjectType;->PAGE:Lcom/facebook/share/widget/LikeView$ObjectType;

    if-ne v2, v3, :cond_1b

    :cond_19
    move v0, v1

    .line 656
    goto :goto_e

    .line 662
    :cond_1b
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    .line 663
    if-eqz v2, :cond_34

    .line 664
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 665
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v2

    const-string/jumbo v3, "publish_actions"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_34
    move v0, v1

    goto :goto_e
.end method

.method public toggleLike(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 672
    iget-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    if-nez v0, :cond_20

    move v0, v1

    .line 674
    :goto_7
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeActionController;->canUseOGPublish()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 676
    invoke-direct {p0, v0}, Lcom/facebook/share/internal/LikeActionController;->updateLikeState(Z)V

    .line 677
    iget-boolean v3, p0, Lcom/facebook/share/internal/LikeActionController;->isPendingLikeOrUnlike:Z

    if-eqz v3, :cond_22

    .line 681
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeActionController;->getAppEventsLogger()Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    const-string/jumbo v1, "fb_like_control_did_undo_quickly"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p3}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 694
    :cond_1f
    :goto_1f
    return-void

    :cond_20
    move v0, v2

    .line 672
    goto :goto_7

    .line 685
    :cond_22
    invoke-direct {p0, v0, p3}, Lcom/facebook/share/internal/LikeActionController;->publishLikeOrUnlikeAsync(ZLandroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 688
    if-nez v0, :cond_31

    :goto_2a
    invoke-direct {p0, v1}, Lcom/facebook/share/internal/LikeActionController;->updateLikeState(Z)V

    .line 689
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/internal/LikeActionController;->presentLikeDialog(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_1f

    :cond_31
    move v1, v2

    .line 688
    goto :goto_2a

    .line 692
    :cond_33
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/internal/LikeActionController;->presentLikeDialog(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_1f
.end method
