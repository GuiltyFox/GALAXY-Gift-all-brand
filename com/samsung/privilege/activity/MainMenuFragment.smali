.class public Lcom/samsung/privilege/activity/MainMenuFragment;
.super Landroid/support/v4/app/Fragment;
.source "MainMenuFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/MainMenuFragment$AsyncHttpResponseHandlerListener;,
        Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;,
        Lcom/samsung/privilege/activity/MainMenuFragment$GetBuzzebeesNotificationListener;,
        Lcom/samsung/privilege/activity/MainMenuFragment$GetHistoryListener;,
        Lcom/samsung/privilege/activity/MainMenuFragment$GetProfileAddressListener;,
        Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;,
        Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;,
        Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;,
        Lcom/samsung/privilege/activity/MainMenuFragment$GetVerifyListener;,
        Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;,
        Lcom/samsung/privilege/activity/MainMenuFragment$PostUsedListener;,
        Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener;,
        Lcom/samsung/privilege/activity/MainMenuFragment$myGCMMessageListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$facebook$FacebookRequestError$Category:[I = null

.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "campaigndetail"

.field private static LOGCAT:Ljava/lang/String;

.field private static LOGCATAUTH:Ljava/lang/String;

.field private static LOGCATLC:Ljava/lang/String;

.field private static final M_FACEBOOK_URL:Landroid/net/Uri;

.field private static gIsshowDialogHasNewVersion:Z


# instance fields
.field private TAG:Ljava/lang/String;

.field private gDialog:Landroid/app/ProgressDialog;

.field private gHandler:Landroid/os/Handler;

.field private gIsShowingSerial:Z

.field private gIsUpdateViewForUser:Z

.field private gListMainmenu:Landroid/widget/ListView;

.field private gProgressHistory:Landroid/widget/ProgressBar;

.field private gScreenHeight:I

.field private gScreenWidth:I

.field private hasApp:Z

.field private isCallVerify:Z

.field private mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

.field private mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

.field private mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

.field private mMainMenuAdapter:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;


# direct methods
.method static synthetic $SWITCH_TABLE$com$facebook$FacebookRequestError$Category()[I
    .registers 3

    .prologue
    .line 111
    sget-object v0, Lcom/samsung/privilege/activity/MainMenuFragment;->$SWITCH_TABLE$com$facebook$FacebookRequestError$Category:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/facebook/FacebookRequestError$Category;->values()[Lcom/facebook/FacebookRequestError$Category;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->AUTHENTICATION_REOPEN_SESSION:Lcom/facebook/FacebookRequestError$Category;

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_66

    :goto_15
    :try_start_15
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->AUTHENTICATION_RETRY:Lcom/facebook/FacebookRequestError$Category;

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_64

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->BAD_REQUEST:Lcom/facebook/FacebookRequestError$Category;

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_62

    :goto_27
    :try_start_27
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->CLIENT:Lcom/facebook/FacebookRequestError$Category;

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError$Category;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_31} :catch_60

    :goto_31
    :try_start_31
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->OTHER:Lcom/facebook/FacebookRequestError$Category;

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_3a} :catch_5e

    :goto_3a
    :try_start_3a
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->PERMISSION:Lcom/facebook/FacebookRequestError$Category;

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_43} :catch_5c

    :goto_43
    :try_start_43
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->SERVER:Lcom/facebook/FacebookRequestError$Category;

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_4c} :catch_5a

    :goto_4c
    :try_start_4c
    sget-object v1, Lcom/facebook/FacebookRequestError$Category;->THROTTLING:Lcom/facebook/FacebookRequestError$Category;

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_55} :catch_58

    :goto_55
    sput-object v0, Lcom/samsung/privilege/activity/MainMenuFragment;->$SWITCH_TABLE$com$facebook$FacebookRequestError$Category:[I

    goto :goto_4

    :catch_58
    move-exception v1

    goto :goto_55

    :catch_5a
    move-exception v1

    goto :goto_4c

    :catch_5c
    move-exception v1

    goto :goto_43

    :catch_5e
    move-exception v1

    goto :goto_3a

    :catch_60
    move-exception v1

    goto :goto_31

    :catch_62
    move-exception v1

    goto :goto_27

    :catch_64
    move-exception v1

    goto :goto_1e

    :catch_66
    move-exception v1

    goto :goto_15
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 112
    const-string v0, "MainMenuFragment"

    sput-object v0, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCAT:Ljava/lang/String;

    .line 113
    const-string v0, "MainMenuFragment.auth"

    sput-object v0, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCATAUTH:Ljava/lang/String;

    .line 114
    const-string v0, "MainMenuFragment.lc"

    sput-object v0, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCATLC:Ljava/lang/String;

    .line 133
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/privilege/activity/MainMenuFragment;->gIsshowDialogHasNewVersion:Z

    .line 138
    const-string v0, "http://m.facebook.com"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/activity/MainMenuFragment;->M_FACEBOOK_URL:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 134
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->gIsUpdateViewForUser:Z

    .line 135
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->gIsShowingSerial:Z

    .line 136
    const-class v0, Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->TAG:Ljava/lang/String;

    .line 140
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->hasApp:Z

    .line 2164
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->isCallVerify:Z

    .line 111
    return-void
.end method

.method private GetProfileData()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 3292
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 3293
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/profile/me/user?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3294
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lcom/samsung/privilege/activity/MainMenuFragment$GetProfileAddressListener;

    invoke-direct {v1, p0, v3}, Lcom/samsung/privilege/activity/MainMenuFragment$GetProfileAddressListener;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;Lcom/samsung/privilege/activity/MainMenuFragment$GetProfileAddressListener;)V

    invoke-static {v0, v1, v3}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 3296
    .end local v0    # "url":Ljava/lang/String;
    :cond_30
    return-void
.end method

.method private ProcessJsonHistory(Ljava/lang/String;)V
    .registers 4
    .param p1, "response_text"    # Ljava/lang/String;

    .prologue
    .line 2457
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 2458
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/MainMenuFragment$18;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/MainMenuFragment$18;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2535
    :cond_12
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    .prologue
    .line 112
    sget-object v0, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCAT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/MainMenuFragment;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->gDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$10(Lcom/samsung/privilege/activity/MainMenuFragment;)Lcom/bitmapfun/util/ImageFetcher;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    return-object v0
.end method

.method static synthetic access$11(Lcom/samsung/privilege/activity/MainMenuFragment;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$12(Lcom/samsung/privilege/activity/MainMenuFragment;Landroid/widget/ProgressBar;)V
    .registers 2

    .prologue
    .line 121
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->gProgressHistory:Landroid/widget/ProgressBar;

    return-void
.end method

.method static synthetic access$13(Lcom/samsung/privilege/activity/MainMenuFragment;Z)V
    .registers 2

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->hasApp:Z

    return-void
.end method

.method static synthetic access$14(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 2285
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MainMenuFragment;->appInstalledOrNot(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$15(Lcom/samsung/privilege/activity/MainMenuFragment;)Z
    .registers 2

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->hasApp:Z

    return v0
.end method

.method static synthetic access$16(Lcom/samsung/privilege/activity/MainMenuFragment;)Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->mMainMenuAdapter:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

    return-object v0
.end method

.method static synthetic access$17(Lcom/samsung/privilege/activity/MainMenuFragment;Z)V
    .registers 2

    .prologue
    .line 2164
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->isCallVerify:Z

    return-void
.end method

.method static synthetic access$18(Lcom/samsung/privilege/activity/MainMenuFragment;)Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->gProgressHistory:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$19(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 2456
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MainMenuFragment;->ProcessJsonHistory(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;J)V
    .registers 4

    .prologue
    .line 1357
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/privilege/activity/MainMenuFragment;->getPurchaseItem(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$20()Ljava/lang/String;
    .registers 1

    .prologue
    .line 113
    sget-object v0, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCATAUTH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 3390
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/MainMenuFragment;->showDialogBuzzebeesError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$22(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 3404
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/MainMenuFragment;->showDialogAllowUse(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$23(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 3427
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/MainMenuFragment;->showDialogHasNewVersion(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$24(Lcom/samsung/privilege/activity/MainMenuFragment;Lcom/facebook/Session;)V
    .registers 2

    .prologue
    .line 2616
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MainMenuFragment;->updateViewForUser(Lcom/facebook/Session;)V

    return-void
.end method

.method static synthetic access$25(Lcom/samsung/privilege/activity/MainMenuFragment;)V
    .registers 1

    .prologue
    .line 3291
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->GetProfileData()V

    return-void
.end method

.method static synthetic access$26(Lcom/samsung/privilege/activity/MainMenuFragment;Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MainMenuFragment;->restoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$27(Lcom/samsung/privilege/activity/MainMenuFragment;Z)V
    .registers 2

    .prologue
    .line 2166
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MainMenuFragment;->getVerify(Z)V

    return-void
.end method

.method static synthetic access$28(Lcom/samsung/privilege/activity/MainMenuFragment;)Z
    .registers 2

    .prologue
    .line 2547
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->alreadyHaveHistory()Z

    move-result v0

    return v0
.end method

.method static synthetic access$29(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 2558
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MainMenuFragment;->checkExistHistory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/samsung/privilege/activity/MainMenuFragment;Z)V
    .registers 2

    .prologue
    .line 2356
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MainMenuFragment;->getHistory(Z)V

    return-void
.end method

.method static synthetic access$30(Lcom/samsung/privilege/activity/MainMenuFragment;)I
    .registers 2

    .prologue
    .line 2537
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->findIndexTopHistory()I

    move-result v0

    return v0
.end method

.method static synthetic access$31(Lcom/samsung/privilege/activity/MainMenuFragment;Lcom/facebook/Session;)V
    .registers 2

    .prologue
    .line 2818
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MainMenuFragment;->requestBuzzebeesAuth(Lcom/facebook/Session;)V

    return-void
.end method

.method static synthetic access$32(Lcom/samsung/privilege/activity/MainMenuFragment;Lcom/facebook/FacebookRequestError;)V
    .registers 2

    .prologue
    .line 2744
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MainMenuFragment;->handleError(Lcom/facebook/FacebookRequestError;)V

    return-void
.end method

.method static synthetic access$33()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 138
    sget-object v0, Lcom/samsung/privilege/activity/MainMenuFragment;->M_FACEBOOK_URL:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$35(Z)V
    .registers 1

    .prologue
    .line 133
    sput-boolean p0, Lcom/samsung/privilege/activity/MainMenuFragment;->gIsshowDialogHasNewVersion:Z

    return-void
.end method

.method static synthetic access$4(Lcom/samsung/privilege/activity/MainMenuFragment;Lcom/samsung/privilege/bean/MessageGCM;Z)V
    .registers 3

    .prologue
    .line 2571
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/MainMenuFragment;->addNotification(Lcom/samsung/privilege/bean/MessageGCM;Z)V

    return-void
.end method

.method static synthetic access$5(Lcom/samsung/privilege/activity/MainMenuFragment;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1958
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MainMenuFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/samsung/privilege/activity/MainMenuFragment;Z)V
    .registers 2

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->gIsShowingSerial:Z

    return-void
.end method

.method static synthetic access$8(Lcom/samsung/privilege/activity/MainMenuFragment;)Lcom/google/analytics/tracking/android/Tracker;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    return-object v0
.end method

.method static synthetic access$9(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 904
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/MainMenuFragment;->goBookingHistory(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addNotification(Lcom/samsung/privilege/bean/MessageGCM;Z)V
    .registers 5
    .param p1, "messageGCM"    # Lcom/samsung/privilege/bean/MessageGCM;
    .param p2, "isPlayAnimation"    # Z

    .prologue
    .line 2572
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 2573
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/MainMenuFragment$19;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/privilege/activity/MainMenuFragment$19;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;Lcom/samsung/privilege/bean/MessageGCM;Z)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2614
    :cond_12
    return-void
.end method

.method private alreadyHaveHistory()Z
    .registers 5

    .prologue
    .line 2548
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->mMainMenuAdapter:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_b

    .line 2555
    const/4 v2, 0x0

    :goto_a
    return v2

    .line 2549
    :cond_b
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->mMainMenuAdapter:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

    invoke-virtual {v2, v0}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/bean/MainMenuItemModel;

    .line 2550
    .local v1, "menuItem":Lcom/samsung/privilege/bean/MainMenuItemModel;
    iget v2, v1, Lcom/samsung/privilege/bean/MainMenuItemModel;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1a

    .line 2551
    const/4 v2, 0x1

    goto :goto_a

    .line 2548
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private appInstalledOrNot(Ljava/lang/String;)Z
    .registers 8
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 2286
    const-string v3, "OAT"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "appInstalledOrNot= "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2287
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2288
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 2290
    .local v0, "app_installed":Z
    const/4 v3, 0x1

    :try_start_1e
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_21} :catch_23

    .line 2291
    const/4 v0, 0x1

    .line 2296
    :goto_22
    return v0

    .line 2292
    :catch_23
    move-exception v1

    .line 2293
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "OAT"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "errorAppInstalledOrNot= "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 2294
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private checkExistHistory(Ljava/lang/String;)Z
    .registers 6
    .param p1, "history_id"    # Ljava/lang/String;

    .prologue
    .line 2559
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->mMainMenuAdapter:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_b

    .line 2568
    const/4 v2, 0x0

    :goto_a
    return v2

    .line 2560
    :cond_b
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->mMainMenuAdapter:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

    invoke-virtual {v2, v0}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/bean/MainMenuItemModel;

    .line 2561
    .local v1, "menuItem":Lcom/samsung/privilege/bean/MainMenuItemModel;
    iget v2, v1, Lcom/samsung/privilege/bean/MainMenuItemModel;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_22

    .line 2562
    iget-object v2, v1, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2563
    const/4 v2, 0x1

    goto :goto_a

    .line 2559
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private checkNFC()V
    .registers 10

    .prologue
    .line 2656
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    if-eqz v6, :cond_64

    .line 2658
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xa

    if-lt v6, v7, :cond_64

    .line 2659
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-string v7, "nfc"

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/NfcManager;

    .line 2661
    .local v4, "manager":Landroid/nfc/NfcManager;
    invoke-virtual {v4}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 2663
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_64

    .line 2664
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_64

    .line 2668
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/UserLogin;->GetIsNFCWarning(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_64

    .line 2669
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/samsung/privilege/UserLogin;->SetIsNFCWarning(Landroid/content/Context;Z)Z

    .line 2671
    new-instance v2, Lcom/samsung/privilege/activity/MainMenuFragment$20;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/MainMenuFragment$20;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;)V

    .line 2688
    .local v2, "dialogClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2690
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v5, ""

    .line 2692
    .local v5, "strNfc_warning_disable":Ljava/lang/String;
    :try_start_46
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f0a01bc

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_50} :catch_65

    move-result-object v5

    .line 2696
    :goto_51
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const-string v7, "Yes"

    invoke-virtual {v6, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const-string v7, "No"

    invoke-virtual {v6, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2702
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "dialogClickListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v4    # "manager":Landroid/nfc/NfcManager;
    .end local v5    # "strNfc_warning_disable":Ljava/lang/String;
    :cond_64
    return-void

    .line 2693
    .restart local v0    # "adapter":Landroid/nfc/NfcAdapter;
    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v2    # "dialogClickListener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v4    # "manager":Landroid/nfc/NfcManager;
    .restart local v5    # "strNfc_warning_disable":Ljava/lang/String;
    :catch_65
    move-exception v3

    .line 2694
    .local v3, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception := "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51
.end method

.method private doGotoSignOut()V
    .registers 3

    .prologue
    .line 1987
    const v0, 0x7f0a02ab

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a02ac

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->showDialogSignOut(Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    return-void
.end method

.method private findIndexTopHistory()I
    .registers 5

    .prologue
    .line 2538
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->mMainMenuAdapter:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_b

    .line 2544
    const/4 v2, -0x1

    :goto_a
    return v2

    .line 2539
    :cond_b
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->mMainMenuAdapter:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

    invoke-virtual {v2, v0}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/bean/MainMenuItemModel;

    .line 2540
    .local v1, "menuItem":Lcom/samsung/privilege/bean/MainMenuItemModel;
    iget v2, v1, Lcom/samsung/privilege/bean/MainMenuItemModel;->type:I

    if-nez v2, :cond_24

    iget-object v2, v1, Lcom/samsung/privilege/bean/MainMenuItemModel;->header:Ljava/lang/String;

    const-string v3, "History"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2541
    add-int/lit8 v2, v0, 0x1

    goto :goto_a

    .line 2538
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getHistory(Z)V
    .registers 10
    .param p1, "need_clear"    # Z

    .prologue
    .line 2357
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-eqz v5, :cond_94

    .line 2358
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 2359
    .local v3, "strTokenBuzzeBees":Ljava/lang/String;
    if-eqz v3, :cond_94

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_94

    .line 2362
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "api/redeem?token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&sponsorId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/AppSetting;->SPONSOR_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&mode=gift2&format=json&type=list2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2363
    .local v4, "url":Ljava/lang/String;
    sget-object v5, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCAT:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "url="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2364
    const-string v5, "HISTORY"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "url="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2365
    iget-object v5, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->gProgressHistory:Landroid/widget/ProgressBar;

    if-eqz v5, :cond_82

    .line 2367
    :try_start_75
    iget-object v5, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->gProgressHistory:Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2368
    const-string v5, "HISTORY"

    const-string v6, "gProgressHistory.setVisibility(View.VISIBLE);"

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_82} :catch_95

    .line 2373
    :cond_82
    :goto_82
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 2374
    .local v1, "startTime":J
    new-instance v5, Lcom/samsung/privilege/activity/MainMenuFragment$GetHistoryListener;

    invoke-direct {v5, p0, p1, v1, v2}, Lcom/samsung/privilege/activity/MainMenuFragment$GetHistoryListener;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;ZJ)V

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 2377
    .end local v1    # "startTime":J
    .end local v3    # "strTokenBuzzeBees":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    :cond_94
    return-void

    .line 2369
    .restart local v3    # "strTokenBuzzeBees":Ljava/lang/String;
    .restart local v4    # "url":Ljava/lang/String;
    :catch_95
    move-exception v0

    .line 2370
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "HISTORY"

    const-string v6, "gProgressHistory.setVisibility(View.VISIBLE);"

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_82
.end method

.method private getNotification()V
    .registers 6

    .prologue
    .line 2059
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_54

    .line 2060
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2061
    .local v0, "strTokenBuzzeBees":Ljava/lang/String;
    if-eqz v0, :cond_54

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    .line 2062
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "api/noti?token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&format=json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2063
    .local v1, "url":Ljava/lang/String;
    sget-object v2, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCAT:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "url="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2064
    new-instance v2, Lcom/samsung/privilege/activity/MainMenuFragment$GetBuzzebeesNotificationListener;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/MainMenuFragment$GetBuzzebeesNotificationListener;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;)V

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 2067
    .end local v0    # "strTokenBuzzeBees":Ljava/lang/String;
    .end local v1    # "url":Ljava/lang/String;
    :cond_54
    return-void
.end method

.method private getPurchaseItem(Ljava/lang/String;J)V
    .registers 9
    .param p1, "strRedeemKey"    # Ljava/lang/String;
    .param p2, "longExpireIn"    # J

    .prologue
    .line 1358
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 1359
    iget-boolean v2, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->gIsShowingSerial:Z

    if-eqz v2, :cond_12

    .line 1360
    sget-object v2, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCAT:Ljava/lang/String;

    const-string v3, "if (gIsShowingSerial == true) {"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    :cond_11
    :goto_11
    return-void

    .line 1362
    :cond_12
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->gIsShowingSerial:Z

    .line 1364
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1365
    .local v0, "strTokenBuzzeBees":Ljava/lang/String;
    if-eqz v0, :cond_68

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_68

    .line 1366
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "api/redeem/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1367
    .local v1, "url":Ljava/lang/String;
    sget-object v2, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCAT:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(getPurchaseItem) url="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    new-instance v2, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;

    invoke-direct {v2, p0, p2, p3}, Lcom/samsung/privilege/activity/MainMenuFragment$GetPurchaseItemListener;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;J)V

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    goto :goto_11

    .line 1370
    .end local v1    # "url":Ljava/lang/String;
    :cond_68
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->gIsShowingSerial:Z

    goto :goto_11
.end method

.method private getRedeemData(Lcom/samsung/privilege/bean/MainMenuItemModel;)V
    .registers 12
    .param p1, "menuItem"    # Lcom/samsung/privilege/bean/MainMenuItemModel;

    .prologue
    const/4 v9, 0x1

    .line 1137
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    if-eqz v6, :cond_12

    .line 1138
    iget-boolean v6, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->gIsShowingSerial:Z

    if-eqz v6, :cond_13

    .line 1139
    sget-object v6, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCAT:Ljava/lang/String;

    const-string v7, "if (gIsShowingSerial == true) {"

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    :cond_12
    :goto_12
    return-void

    .line 1141
    :cond_13
    iput-boolean v9, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->gIsShowingSerial:Z

    .line 1143
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 1144
    .local v4, "strTokenBuzzeBees":Ljava/lang/String;
    if-eqz v4, :cond_e7

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e7

    .line 1145
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-string v7, ""

    const v8, 0x7f0a018d

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8, v9, v9}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->gDialog:Landroid/app/ProgressDialog;

    .line 1147
    iget-object v6, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->gDialog:Landroid/app/ProgressDialog;

    new-instance v7, Lcom/samsung/privilege/activity/MainMenuFragment$13;

    invoke-direct {v7, p0}, Lcom/samsung/privilege/activity/MainMenuFragment$13;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;)V

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1154
    iget-object v6, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->gDialog:Landroid/app/ProgressDialog;

    new-instance v7, Lcom/samsung/privilege/activity/MainMenuFragment$14;

    invoke-direct {v7, p0}, Lcom/samsung/privilege/activity/MainMenuFragment$14;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;)V

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1162
    :try_start_4e
    iget-object v6, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->gDialog:Landroid/app/ProgressDialog;

    const v7, 0x102000b

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1163
    .local v1, "mMessageView":Landroid/widget/TextView;
    if-eqz v1, :cond_7d

    .line 1164
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 1165
    .local v0, "font":Landroid/graphics/Typeface;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1166
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_7d} :catch_ec

    .line 1172
    .end local v0    # "font":Landroid/graphics/Typeface;
    .end local v1    # "mMessageView":Landroid/widget/TextView;
    :cond_7d
    :goto_7d
    iget-object v6, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->gDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->show()V

    .line 1174
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "api/redeem/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "?token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&sponsorId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/privilege/AppSetting;->SPONSOR_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&mode=gift2&format=json&type=list2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1175
    .local v5, "url":Ljava/lang/String;
    sget-object v6, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCAT:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getRedeemData="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 1177
    .local v2, "startTime":J
    new-instance v6, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;

    invoke-direct {v6, p0, p1, v2, v3}, Lcom/samsung/privilege/activity/MainMenuFragment$GetRedeemDataListener;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;Lcom/samsung/privilege/bean/MainMenuItemModel;J)V

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    goto/16 :goto_12

    .line 1179
    .end local v2    # "startTime":J
    .end local v5    # "url":Ljava/lang/String;
    :cond_e7
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->gIsShowingSerial:Z

    goto/16 :goto_12

    .line 1168
    :catch_ec
    move-exception v6

    goto :goto_7d
.end method

.method private getTimeServer(Lcom/samsung/privilege/bean/MainMenuItemModel;)V
    .registers 7
    .param p1, "menuItem"    # Lcom/samsung/privilege/bean/MainMenuItemModel;

    .prologue
    .line 1045
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 1046
    iget-boolean v2, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->gIsShowingSerial:Z

    if-eqz v2, :cond_12

    .line 1047
    sget-object v2, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCAT:Ljava/lang/String;

    const-string v3, "if (gIsShowingSerial == true) {"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    :cond_11
    :goto_11
    return-void

    .line 1049
    :cond_12
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->gIsShowingSerial:Z

    .line 1051
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1052
    .local v0, "strTokenBuzzeBees":Ljava/lang/String;
    if-eqz v0, :cond_5e

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 1053
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "api/auth/systime?token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1054
    .local v1, "url":Ljava/lang/String;
    sget-object v2, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCAT:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "url="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    new-instance v2, Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;

    invoke-direct {v2, p0, p1}, Lcom/samsung/privilege/activity/MainMenuFragment$GetTimeServerListener;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;Lcom/samsung/privilege/bean/MainMenuItemModel;)V

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    goto :goto_11

    .line 1057
    .end local v1    # "url":Ljava/lang/String;
    :cond_5e
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->gIsShowingSerial:Z

    goto :goto_11
.end method

.method private getVerify(Z)V
    .registers 7
    .param p1, "need_clear"    # Z

    .prologue
    .line 2167
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_66

    .line 2168
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2169
    .local v0, "strTokenBuzzeBees":Ljava/lang/String;
    if-eqz v0, :cond_66

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_66

    .line 2170
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "api/redeem?token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&sponsorId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->SPONSOR_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&mode=uninstall&format=json&type=list2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2171
    .local v1, "url":Ljava/lang/String;
    sget-object v2, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCAT:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "url="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2172
    new-instance v2, Lcom/samsung/privilege/activity/MainMenuFragment$GetVerifyListener;

    invoke-direct {v2, p0, p1}, Lcom/samsung/privilege/activity/MainMenuFragment$GetVerifyListener;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;Z)V

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 2175
    .end local v0    # "strTokenBuzzeBees":Ljava/lang/String;
    .end local v1    # "url":Ljava/lang/String;
    :cond_66
    return-void
.end method

.method private goBookingHistory(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "urlWebsite"    # Ljava/lang/String;
    .param p2, "redeem_key"    # Ljava/lang/String;

    .prologue
    .line 905
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_a2

    .line 906
    if-eqz p1, :cond_a2

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a2

    .line 908
    move-object v2, p1

    .line 911
    .local v2, "url":Ljava/lang/String;
    :try_start_11
    const-string v3, "<uid>"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/UserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 912
    new-instance v0, Lcom/samsung/privilege/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 913
    .local v0, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    const-string v3, "<deviceId>"

    invoke-virtual {v0}, Lcom/samsung/privilege/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_31} :catch_d5

    move-result-object v2

    .line 918
    .end local v0    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    :goto_32
    :try_start_32
    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_51

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_51

    .line 919
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 921
    :cond_51
    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 922
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&redeem_key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&return_url=bzbs_return_url&cancel_url=bzbs_cancel_url"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 927
    :goto_88
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/samsung/privilege/activity/WebViewBookingActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 928
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 929
    const-string v3, "enable_webview_back"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 930
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 936
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "url":Ljava/lang/String;
    :cond_a2
    :goto_a2
    return-void

    .line 924
    .restart local v2    # "url":Ljava/lang/String;
    :cond_a3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?redeem_key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&return_url=bzbs_return_url&cancel_url=bzbs_cancel_url"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_d1} :catch_d3

    move-result-object v2

    goto :goto_88

    .line 931
    :catch_d3
    move-exception v3

    goto :goto_a2

    .line 914
    :catch_d5
    move-exception v3

    goto/16 :goto_32
.end method

.method private handleError(Lcom/facebook/FacebookRequestError;)V
    .registers 9
    .param p1, "error"    # Lcom/facebook/FacebookRequestError;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2745
    const/4 v1, 0x0

    .line 2746
    .local v1, "listener":Landroid/content/DialogInterface$OnClickListener;
    const/4 v0, 0x0

    .line 2748
    .local v0, "dialogBody":Ljava/lang/String;
    if-nez p1, :cond_2c

    .line 2749
    const v3, 0x7f0a029e

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2815
    :goto_d
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a02a5

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a02a6

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2816
    return-void

    .line 2751
    :cond_2c
    invoke-static {}, Lcom/samsung/privilege/activity/MainMenuFragment;->$SWITCH_TABLE$com$facebook$FacebookRequestError$Category()[I

    move-result-object v3

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getCategory()Lcom/facebook/FacebookRequestError$Category;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/FacebookRequestError$Category;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_a4

    .line 2810
    :pswitch_3d
    const v3, 0x7f0a0342

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 2755
    :pswitch_4d
    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->shouldNotifyUser()Z

    move-result v3

    if-eqz v3, :cond_66

    const-string v2, ""

    .line 2756
    .local v2, "userAction":Ljava/lang/String;
    :goto_55
    const v3, 0x7f0a029f

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2757
    new-instance v1, Lcom/samsung/privilege/activity/MainMenuFragment$22;

    .end local v1    # "listener":Landroid/content/DialogInterface$OnClickListener;
    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainMenuFragment$22;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;)V

    .line 2764
    .restart local v1    # "listener":Landroid/content/DialogInterface$OnClickListener;
    goto :goto_d

    .line 2755
    .end local v2    # "userAction":Ljava/lang/String;
    :cond_66
    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getUserActionMessageId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_55

    .line 2768
    :pswitch_6f
    const v3, 0x7f0a02a0

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2769
    new-instance v1, Lcom/samsung/privilege/activity/MainMenuFragment$23;

    .end local v1    # "listener":Landroid/content/DialogInterface$OnClickListener;
    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainMenuFragment$23;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;)V

    .line 2778
    .restart local v1    # "listener":Landroid/content/DialogInterface$OnClickListener;
    goto :goto_d

    .line 2782
    :pswitch_7c
    const v3, 0x7f0a02a1

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2783
    new-instance v1, Lcom/samsung/privilege/activity/MainMenuFragment$24;

    .end local v1    # "listener":Landroid/content/DialogInterface$OnClickListener;
    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainMenuFragment$24;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;)V

    .line 2790
    .restart local v1    # "listener":Landroid/content/DialogInterface$OnClickListener;
    goto :goto_d

    .line 2796
    :pswitch_89
    const v3, 0x7f0a02a2

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2797
    goto/16 :goto_d

    .line 2801
    :pswitch_92
    const v3, 0x7f0a02a3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2802
    goto/16 :goto_d

    .line 2751
    nop

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_6f
        :pswitch_7c
        :pswitch_89
        :pswitch_89
        :pswitch_3d
        :pswitch_92
    .end packed-switch
.end method

.method private makeMeRequest(Lcom/facebook/Session;)V
    .registers 4
    .param p1, "session"    # Lcom/facebook/Session;

    .prologue
    .line 2719
    new-instance v1, Lcom/samsung/privilege/activity/MainMenuFragment$21;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/MainMenuFragment$21;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;Lcom/facebook/Session;)V

    invoke-static {p1, v1}, Lcom/facebook/Request;->newMeRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/Request;

    move-result-object v0

    .line 2741
    .local v0, "request":Lcom/facebook/Request;
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    .line 2742
    return-void
.end method

.method private requestBuzzebeesAuth(Lcom/facebook/Session;)V
    .registers 24
    .param p1, "session"    # Lcom/facebook/Session;

    .prologue
    .line 2819
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    if-eqz v18, :cond_374

    .line 2820
    sget-object v18, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCATAUTH:Ljava/lang/String;

    const-string v19, "<!---------------------------------------"

    invoke-static/range {v18 .. v19}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2821
    sget-object v18, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCATAUTH:Ljava/lang/String;

    const-string v19, "private void requestBuzzebeesAuth() {"

    invoke-static/range {v18 .. v19}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment;->gHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    new-instance v19, Lcom/samsung/privilege/activity/MainMenuFragment$25;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment$25;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;)V

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2830
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2832
    .local v14, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 2833
    .local v5, "app_id":Ljava/lang/String;
    new-instance v18, Lcom/samsung/privilege/bean/InputItem;

    const-string v19, "app_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2834
    sget-object v18, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCATAUTH:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "app_id="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2839
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/samsung/privilege/UserLogin;->GetTokenFacebook(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 2840
    .local v16, "tokenFacebook":Ljava/lang/String;
    new-instance v18, Lcom/samsung/privilege/bean/InputItem;

    const-string v19, "access_token"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2841
    sget-object v18, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCATAUTH:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "access_token="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2845
    const-string v17, ""

    .line 2847
    .local v17, "versionName":Ljava/lang/String;
    :try_start_8d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v17, v0
    :try_end_a9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8d .. :try_end_a9} :catch_375

    .line 2851
    :goto_a9
    new-instance v18, Lcom/samsung/privilege/bean/InputItem;

    const-string v19, "client_version"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/samsung/privilege/AppSetting;->AUTH_BUZZEBEES_PREFIX(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2852
    sget-object v18, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCATAUTH:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "client_version="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/samsung/privilege/AppSetting;->AUTH_BUZZEBEES_PREFIX(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2862
    new-instance v8, Lcom/samsung/privilege/util/DeviceHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 2863
    .local v8, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    invoke-virtual {v8}, Lcom/samsung/privilege/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    .line 2868
    .local v9, "device_id":Ljava/lang/String;
    new-instance v18, Lcom/samsung/privilege/bean/InputItem;

    const-string v19, "uuid"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v9}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2870
    sget-object v18, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCATAUTH:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "uuid="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2874
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 2875
    .local v3, "AndroidVersion":Ljava/lang/String;
    new-instance v18, Lcom/samsung/privilege/bean/InputItem;

    const-string v19, "os"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "android "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2876
    sget-object v18, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCATAUTH:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "os=android "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2882
    new-instance v18, Ljava/lang/StringBuilder;

    sget-object v19, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2883
    .local v15, "platform":Ljava/lang/String;
    new-instance v18, Lcom/samsung/privilege/bean/InputItem;

    const-string v19, "platform"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v15}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2884
    sget-object v18, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCATAUTH:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "platform="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2895
    new-instance v18, Lcom/samsung/privilege/bean/InputItem;

    const-string v19, "sponsorId"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/samsung/privilege/AppSetting;->SPONSOR_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2896
    sget-object v18, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCATAUTH:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "sponsorId="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/samsung/privilege/AppSetting;->SPONSOR_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2901
    new-instance v18, Lcom/samsung/privilege/bean/InputItem;

    const-string v19, "device_token"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/samsung/privilege/UserLogin;->GetGCM_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2902
    sget-object v18, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCATAUTH:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "device_token="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/samsung/privilege/UserLogin;->GetGCM_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2907
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/samsung/privilege/UserLogin;->GetIsNotificationOn(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_390

    .line 2908
    new-instance v18, Lcom/samsung/privilege/bean/InputItem;

    const-string v19, "device_noti_enable"

    const-string v20, "true"

    invoke-direct/range {v18 .. v20}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2909
    sget-object v18, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCATAUTH:Ljava/lang/String;

    const-string v19, "device_noti_enable=true"

    invoke-static/range {v18 .. v19}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2917
    :goto_220
    invoke-virtual {v8}, Lcom/samsung/privilege/util/DeviceHelper;->getAndroidID()Ljava/lang/String;

    move-result-object v4

    .line 2918
    .local v4, "android_id":Ljava/lang/String;
    new-instance v18, Lcom/samsung/privilege/bean/InputItem;

    const-string v19, "mac_address"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2919
    sget-object v18, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCATAUTH:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "mac_address="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2923
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/samsung/privilege/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 2924
    .local v6, "carrier":Ljava/lang/String;
    new-instance v18, Lcom/samsung/privilege/bean/InputItem;

    const-string v19, "carrier"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v6}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2925
    sget-object v18, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCATAUTH:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "carrier="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2929
    invoke-virtual {v8}, Lcom/samsung/privilege/util/DeviceHelper;->getPhoneNumber()Ljava/lang/String;

    move-result-object v7

    .line 2930
    .local v7, "contact_number":Ljava/lang/String;
    new-instance v18, Lcom/samsung/privilege/bean/InputItem;

    const-string v19, "contact_number"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2931
    sget-object v18, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCATAUTH:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "contact_number="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2936
    new-instance v18, Lcom/samsung/privilege/bean/InputItem;

    const-string v19, "transfer_points"

    const-string v20, "manual"

    invoke-direct/range {v18 .. v20}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2937
    sget-object v18, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCATAUTH:Ljava/lang/String;

    const-string v19, "transfer_points=manual"

    invoke-static/range {v18 .. v19}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2941
    new-instance v18, Lcom/samsung/privilege/bean/InputItem;

    const-string v19, "device_locale"

    const-string v20, "1033"

    invoke-direct/range {v18 .. v20}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2942
    sget-object v18, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCATAUTH:Ljava/lang/String;

    const-string v19, "device_locale=1033"

    invoke-static/range {v18 .. v19}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2979
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/samsung/privilege/util/InfoData;->GetInfoData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 2980
    .local v12, "info":Ljava/lang/String;
    new-instance v18, Lcom/samsung/privilege/bean/InputItem;

    const-string v19, "info"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v12}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2981
    sget-object v18, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCAT:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "info="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2984
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_341

    .line 2985
    const-string v18, "APP"

    const-string v19, "<font color=blue>Authenticate with BuzzeBees:<br>"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 2986
    const-string v18, "APP"

    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "api/auth/login<br>"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 2987
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_32e
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-lt v11, v0, :cond_3a7

    .line 2991
    const-string v18, "APP"

    const-string v19, "</font><br>"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 2994
    .end local v11    # "i":I
    :cond_341
    new-instance v18, Ljava/lang/StringBuilder;

    sget-object v19, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "api/auth/login"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;)V

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v14, v1, v2}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 2996
    .end local v3    # "AndroidVersion":Ljava/lang/String;
    .end local v4    # "android_id":Ljava/lang/String;
    .end local v5    # "app_id":Ljava/lang/String;
    .end local v6    # "carrier":Ljava/lang/String;
    .end local v7    # "contact_number":Ljava/lang/String;
    .end local v8    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .end local v9    # "device_id":Ljava/lang/String;
    .end local v12    # "info":Ljava/lang/String;
    .end local v14    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    .end local v15    # "platform":Ljava/lang/String;
    .end local v16    # "tokenFacebook":Ljava/lang/String;
    .end local v17    # "versionName":Ljava/lang/String;
    :cond_374
    return-void

    .line 2848
    .restart local v5    # "app_id":Ljava/lang/String;
    .restart local v14    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    .restart local v16    # "tokenFacebook":Ljava/lang/String;
    .restart local v17    # "versionName":Ljava/lang/String;
    :catch_375
    move-exception v10

    .line 2849
    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v18, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCATAUTH:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Can\'t get versionName:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a9

    .line 2911
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "AndroidVersion":Ljava/lang/String;
    .restart local v8    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .restart local v9    # "device_id":Ljava/lang/String;
    .restart local v15    # "platform":Ljava/lang/String;
    :cond_390
    new-instance v18, Lcom/samsung/privilege/bean/InputItem;

    const-string v19, "device_noti_enable"

    const-string v20, "false"

    invoke-direct/range {v18 .. v20}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2912
    sget-object v18, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCATAUTH:Ljava/lang/String;

    const-string v19, "device_noti_enable=false"

    invoke-static/range {v18 .. v19}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_220

    .line 2988
    .restart local v4    # "android_id":Ljava/lang/String;
    .restart local v6    # "carrier":Ljava/lang/String;
    .restart local v7    # "contact_number":Ljava/lang/String;
    .restart local v11    # "i":I
    .restart local v12    # "info":Ljava/lang/String;
    :cond_3a7
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/privilege/bean/InputItem;

    .line 2989
    .local v13, "item":Lcom/samsung/privilege/bean/InputItem;
    const-string v18, "APP"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "  "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v13, Lcom/samsung/privilege/bean/InputItem;->key:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v13, Lcom/samsung/privilege/bean/InputItem;->value:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "<br>"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 2987
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_32e
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 396
    const-string v0, "buzzebees.market"

    const-string v1, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 400
    return-void
.end method

.method private showContent()V
    .registers 2

    .prologue
    .line 1474
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;

    .line 1478
    :cond_c
    return-void
.end method

.method private showDialogAllowUse(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 3405
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_36

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_36

    .line 3406
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3407
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3408
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "OK"

    new-instance v4, Lcom/samsung/privilege/activity/MainMenuFragment$27;

    invoke-direct {v4, p0}, Lcom/samsung/privilege/activity/MainMenuFragment$27;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3422
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3423
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3425
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_36
    return-void
.end method

.method private showDialogBuzzebeesError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 3391
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_36

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_36

    .line 3392
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3393
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3394
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Yes"

    new-instance v4, Lcom/samsung/privilege/activity/MainMenuFragment$26;

    invoke-direct {v4, p0}, Lcom/samsung/privilege/activity/MainMenuFragment$26;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3399
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3400
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3402
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_36
    return-void
.end method

.method private showDialogHasNewVersion(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 3428
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_48

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_48

    .line 3429
    sget-boolean v3, Lcom/samsung/privilege/activity/MainMenuFragment;->gIsshowDialogHasNewVersion:Z

    if-nez v3, :cond_48

    .line 3431
    const/4 v3, 0x1

    :try_start_15
    sput-boolean v3, Lcom/samsung/privilege/activity/MainMenuFragment;->gIsshowDialogHasNewVersion:Z

    .line 3433
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3434
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3435
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Yes"

    new-instance v5, Lcom/samsung/privilege/activity/MainMenuFragment$28;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/MainMenuFragment$28;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 3447
    const-string v4, "No"

    new-instance v5, Lcom/samsung/privilege/activity/MainMenuFragment$29;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/MainMenuFragment$29;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3456
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3457
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_48} :catch_49

    .line 3463
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_48
    :goto_48
    return-void

    .line 3458
    :catch_49
    move-exception v2

    .line 3459
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "buzzebees.login"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to showDialogHasNewVersion():"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48
.end method

.method private showDialogSignOut(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1991
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    if-eqz v9, :cond_d8

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v9

    if-nez v9, :cond_d8

    .line 1992
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    if-eqz v9, :cond_d8

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    instance-of v9, v9, Lcom/samsung/privilege/activity/CampaignListActivity;

    if-eqz v9, :cond_d8

    .line 2010
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    const v10, 0x1030010

    invoke-direct {v1, v9, v10}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2012
    .local v1, "dialogSerial":Landroid/app/Dialog;
    const v9, 0x7f0300df

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->setContentView(I)V

    .line 2014
    const v9, 0x7f0701ca

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2015
    .local v5, "tvHeader":Landroid/widget/TextView;
    const v9, 0x7f070319

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2016
    .local v6, "tvMessage":Landroid/widget/TextView;
    const v9, 0x7f07031a

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 2017
    .local v4, "imgYes":Landroid/widget/ImageView;
    const v9, 0x7f07031c

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 2018
    .local v3, "imgNo":Landroid/widget/ImageView;
    const v9, 0x7f07031b

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 2019
    .local v8, "tvYes":Landroid/widget/TextView;
    const v9, 0x7f07031d

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 2021
    .local v7, "tvNo":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 2022
    .local v2, "font":Landroid/graphics/Typeface;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2023
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2024
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2025
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2027
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2028
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2029
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2030
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2032
    new-instance v9, Lcom/samsung/privilege/activity/MainMenuFragment$16;

    invoke-direct {v9, p0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment$16;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;Landroid/app/Dialog;)V

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2043
    new-instance v9, Lcom/samsung/privilege/activity/MainMenuFragment$17;

    invoke-direct {v9, p0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment$17;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;Landroid/app/Dialog;)V

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2049
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2050
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v9, 0x11

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2051
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2053
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 2056
    .end local v0    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "dialogSerial":Landroid/app/Dialog;
    .end local v2    # "font":Landroid/graphics/Typeface;
    .end local v3    # "imgNo":Landroid/widget/ImageView;
    .end local v4    # "imgYes":Landroid/widget/ImageView;
    .end local v5    # "tvHeader":Landroid/widget/TextView;
    .end local v6    # "tvMessage":Landroid/widget/TextView;
    .end local v7    # "tvNo":Landroid/widget/TextView;
    .end local v8    # "tvYes":Landroid/widget/TextView;
    :cond_d8
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1959
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/MainMenuFragment$15;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/MainMenuFragment$15;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1974
    return-void
.end method

.method private switchPagerFragment(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 1977
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_7

    .line 1984
    :cond_6
    :goto_6
    return-void

    .line 1980
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/privilege/activity/CampaignListActivity;

    if-eqz v1, :cond_6

    .line 1981
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/activity/CampaignListActivity;

    .line 1982
    .local v0, "ca":Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-virtual {v0, p1}, Lcom/samsung/privilege/activity/CampaignListActivity;->switchPagerContent(I)V

    goto :goto_6
.end method

.method private updateNotificationFromCatch()V
    .registers 6

    .prologue
    .line 2705
    iget-object v3, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->mMainMenuAdapter:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->clearItemNoti()V

    .line 2706
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->GetNotificationListObject(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2707
    .local v1, "messageGCMs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/MessageGCM;>;"
    const/4 v2, 0x0

    .line 2708
    .local v2, "startIndex":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x5

    if-gt v3, v4, :cond_1e

    .line 2709
    const/4 v2, 0x0

    .line 2713
    :goto_16
    move v0, v2

    .local v0, "i":I
    :goto_17
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_25

    .line 2716
    return-void

    .line 2711
    .end local v0    # "i":I
    :cond_1e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x5

    goto :goto_16

    .line 2714
    .restart local v0    # "i":I
    :cond_25
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/privilege/bean/MessageGCM;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/samsung/privilege/activity/MainMenuFragment;->addNotification(Lcom/samsung/privilege/bean/MessageGCM;Z)V

    .line 2713
    add-int/lit8 v0, v0, 0x1

    goto :goto_17
.end method

.method private updateViewForUser(Lcom/facebook/Session;)V
    .registers 8
    .param p1, "session"    # Lcom/facebook/Session;

    .prologue
    .line 2617
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_93

    .line 2619
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2620
    .local v0, "facebook_id":Ljava/lang/String;
    sget-object v3, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCATAUTH:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UserLogin.FacebookUID="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/UserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2622
    sget-object v3, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCATAUTH:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UserLogin.FacebookUID="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2623
    sget-object v3, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCATAUTH:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UserLogin.GetModeLogin="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2625
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->GetRank(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2626
    .local v1, "rank":Ljava/lang/String;
    sget-object v3, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCATAUTH:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UserLogin.Rank="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2628
    if-eqz v0, :cond_90

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_94

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_94

    .line 2629
    :cond_90
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MainMenuFragment;->makeMeRequest(Lcom/facebook/Session;)V

    .line 2653
    .end local v0    # "facebook_id":Ljava/lang/String;
    .end local v1    # "rank":Ljava/lang/String;
    :cond_93
    :goto_93
    return-void

    .line 2631
    .restart local v0    # "facebook_id":Ljava/lang/String;
    .restart local v1    # "rank":Ljava/lang/String;
    :cond_94
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 2632
    .local v2, "strTokenBuzzeBees":Ljava/lang/String;
    sget-object v3, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCATAUTH:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "strTokenBuzzeBees="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2633
    if-eqz v2, :cond_ba

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_be

    .line 2634
    :cond_ba
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MainMenuFragment;->requestBuzzebeesAuth(Lcom/facebook/Session;)V

    goto :goto_93

    .line 2636
    :cond_be
    iget-boolean v3, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->gIsUpdateViewForUser:Z

    if-nez v3, :cond_d3

    .line 2640
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/util/StickerUtil;->loadStickerSet(Landroid/content/Context;)V

    .line 2642
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/util/BBUtil;->registerGCM(Landroid/content/Context;)V

    .line 2644
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->gIsUpdateViewForUser:Z

    .line 2649
    :cond_d3
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->checkNFC()V

    goto :goto_93
.end method


# virtual methods
.method public getHistoryByCatch()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2153
    const-string v1, "history_redeem"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/helper/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2154
    .local v0, "catch_history":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 2155
    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/MainMenuFragment;->ProcessJsonHistory(Ljava/lang/String;)V

    .line 2157
    invoke-direct {p0, v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->getHistory(Z)V

    .line 2161
    :goto_19
    return-void

    .line 2159
    :cond_1a
    invoke-direct {p0, v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->getHistory(Z)V

    goto :goto_19
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 272
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 281
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 152
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 165
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainMenuFragment;->setRetainInstance(Z)V

    .line 167
    sput-object p0, Lcom/samsung/privilege/AppSetting;->M_MainMenuFragment:Lcom/samsung/privilege/activity/MainMenuFragment;

    .line 169
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 170
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 177
    :cond_16
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 180
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->GA_TRACKING_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 183
    invoke-static {}, Lcom/google/analytics/tracking/android/GAServiceManager;->getInstance()Lcom/google/analytics/tracking/android/GAServiceManager;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAServiceManager;->setDispatchPeriod(I)V

    .line 185
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/util/PostAsyncUtil;->StartCheckFileTask(Landroid/content/Context;)V

    .line 186
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 21
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 198
    const v12, 0x7f0300ea

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v12, v1, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 200
    .local v10, "view":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 201
    .local v3, "context":Landroid/content/Context;
    new-instance v12, Landroid/os/Handler;

    invoke-direct {v12}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/samsung/privilege/activity/MainMenuFragment;->gHandler:Landroid/os/Handler;

    .line 204
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 205
    .local v8, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 207
    new-instance v2, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    const-string v13, "campaigndetail"

    invoke-direct {v2, v12, v13}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 208
    .local v2, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    const/high16 v13, 0x3e800000

    invoke-virtual {v2, v12, v13}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 209
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 210
    .local v4, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 211
    iget v12, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/privilege/activity/MainMenuFragment;->gScreenHeight:I

    .line 212
    iget v12, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/privilege/activity/MainMenuFragment;->gScreenWidth:I

    .line 214
    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/privilege/activity/MainMenuFragment;->gScreenWidth:I

    .line 215
    .local v11, "width":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/privilege/activity/MainMenuFragment;->gScreenHeight:I

    .line 217
    .local v5, "height":I
    if-le v5, v11, :cond_203

    .end local v5    # "height":I
    :goto_6b
    div-int/lit8 v7, v5, 0x2

    .line 218
    .local v7, "longest":I
    new-instance v12, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-direct {v12, v13, v7}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/samsung/privilege/activity/MainMenuFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 219
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/MainMenuFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const v13, 0x7f02039f

    invoke-virtual {v12, v13}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 220
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/MainMenuFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v13

    invoke-virtual {v12, v13, v2}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/MainMenuFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 225
    const v12, 0x7f070329

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/samsung/privilege/activity/MainMenuFragment;->gListMainmenu:Landroid/widget/ListView;

    .line 226
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/MainMenuFragment;->gListMainmenu:Landroid/widget/ListView;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/MainMenuFragment;->gListMainmenu:Landroid/widget/ListView;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 229
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/MainMenuFragment;->gListMainmenu:Landroid/widget/ListView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ListView;->setHorizontalScrollBarEnabled(Z)V

    .line 231
    new-instance v12, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v3}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/samsung/privilege/activity/MainMenuFragment;->mMainMenuAdapter:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 235
    .local v9, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/MainMenuFragment;->mMainMenuAdapter:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

    new-instance v13, Lcom/samsung/privilege/bean/MainMenuItemModel;

    const-string v14, "language"

    const v15, 0x7f0a02c5

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v16, ""

    invoke-direct/range {v13 .. v16}, Lcom/samsung/privilege/bean/MainMenuItemModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->addItem(Lcom/samsung/privilege/bean/MainMenuItemModel;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/MainMenuFragment;->mMainMenuAdapter:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

    new-instance v13, Lcom/samsung/privilege/bean/MainMenuItemModel;

    const-string v14, "setting"

    const v15, 0x7f0a02bf

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v16, ""

    invoke-direct/range {v13 .. v16}, Lcom/samsung/privilege/bean/MainMenuItemModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->addItem(Lcom/samsung/privilege/bean/MainMenuItemModel;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/MainMenuFragment;->mMainMenuAdapter:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

    new-instance v13, Lcom/samsung/privilege/bean/MainMenuItemModel;

    const-string v14, "aboutus"

    const v15, 0x7f0a02c0

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const v16, 0x7f0a02d5

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v13 .. v16}, Lcom/samsung/privilege/bean/MainMenuItemModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->addItem(Lcom/samsung/privilege/bean/MainMenuItemModel;)V

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/privilege/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "1"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14a

    .line 240
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/MainMenuFragment;->mMainMenuAdapter:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

    new-instance v13, Lcom/samsung/privilege/bean/MainMenuItemModel;

    const-string v14, "friends"

    const v15, 0x7f0a02c1

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const v16, 0x7f0a02d6

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v13 .. v16}, Lcom/samsung/privilege/bean/MainMenuItemModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->addItem(Lcom/samsung/privilege/bean/MainMenuItemModel;)V

    .line 242
    :cond_14a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "402705486466922"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_196

    .line 243
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/MainMenuFragment;->mMainMenuAdapter:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

    new-instance v13, Lcom/samsung/privilege/bean/MainMenuItemModel;

    const-string v14, "buzzebees"

    const v15, 0x7f0a02c2

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const v16, 0x7f0a02d7

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v13 .. v16}, Lcom/samsung/privilege/bean/MainMenuItemModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->addItem(Lcom/samsung/privilege/bean/MainMenuItemModel;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/MainMenuFragment;->mMainMenuAdapter:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

    new-instance v13, Lcom/samsung/privilege/bean/MainMenuItemModel;

    const-string v14, "qrcode"

    const v15, 0x7f0a02c6

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const v16, 0x7f0a02de

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v13 .. v16}, Lcom/samsung/privilege/bean/MainMenuItemModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->addItem(Lcom/samsung/privilege/bean/MainMenuItemModel;)V

    .line 246
    :cond_196
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/MainMenuFragment;->mMainMenuAdapter:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

    new-instance v13, Lcom/samsung/privilege/bean/MainMenuItemModel;

    const-string v14, "inapps"

    const v15, 0x7f0a02c3

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const v16, 0x7f0a02d8

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v13 .. v16}, Lcom/samsung/privilege/bean/MainMenuItemModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->addItem(Lcom/samsung/privilege/bean/MainMenuItemModel;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/MainMenuFragment;->mMainMenuAdapter:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

    new-instance v13, Lcom/samsung/privilege/bean/MainMenuItemModel;

    const-string v14, "sign_out"

    const v15, 0x7f0a02c4

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const v16, 0x7f0a02d9

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v13 .. v16}, Lcom/samsung/privilege/bean/MainMenuItemModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->addItem(Lcom/samsung/privilege/bean/MainMenuItemModel;)V

    .line 249
    new-instance v6, Lcom/samsung/privilege/bean/MainMenuItemModel;

    invoke-direct {v6}, Lcom/samsung/privilege/bean/MainMenuItemModel;-><init>()V

    .line 250
    .local v6, "itemHeader":Lcom/samsung/privilege/bean/MainMenuItemModel;
    const/4 v12, 0x0

    iput v12, v6, Lcom/samsung/privilege/bean/MainMenuItemModel;->type:I

    .line 251
    const-string v12, "History"

    iput-object v12, v6, Lcom/samsung/privilege/bean/MainMenuItemModel;->header:Ljava/lang/String;

    .line 252
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/MainMenuFragment;->mMainMenuAdapter:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

    invoke-virtual {v12, v6}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->addItem(Lcom/samsung/privilege/bean/MainMenuItemModel;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/MainMenuFragment;->gListMainmenu:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/MainMenuFragment;->mMainMenuAdapter:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

    invoke-virtual {v12, v13}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/MainMenuFragment;->gListMainmenu:Landroid/widget/ListView;

    new-instance v13, Lcom/samsung/privilege/activity/MainMenuFragment$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v13, v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment$1;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;Landroid/os/Bundle;)V

    .line 265
    const-wide/16 v14, 0x64

    .line 256
    invoke-virtual {v12, v13, v14, v15}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 267
    return-object v10

    .end local v6    # "itemHeader":Lcom/samsung/privilege/bean/MainMenuItemModel;
    .end local v7    # "longest":I
    .end local v9    # "res":Landroid/content/res/Resources;
    .restart local v5    # "height":I
    :cond_203
    move v5, v11

    .line 217
    goto/16 :goto_6b
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 370
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 374
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    if-eqz v0, :cond_c

    .line 375
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->closeCache()V

    .line 377
    :cond_c
    return-void
.end method

.method public onDestroyView()V
    .registers 1

    .prologue
    .line 362
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 366
    return-void
.end method

.method public onDetach()V
    .registers 1

    .prologue
    .line 381
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 385
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 58
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 404
    .local p1, "listView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/samsung/privilege/bean/MainMenuItemModel;

    .line 406
    .local v27, "menuItem":Lcom/samsung/privilege/bean/MainMenuItemModel;
    move-object/from16 v0, v27

    iget v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->type:I

    move/from16 v46, v0

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_4ff

    .line 407
    invoke-direct/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->showContent()V

    .line 408
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string v47, "sign_out"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_38

    .line 409
    invoke-direct/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->doGotoSignOut()V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    move-object/from16 v46, v0

    const-string v47, "Logout"

    invoke-virtual/range {v46 .. v47}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    .line 902
    :cond_37
    :goto_37
    return-void

    .line 412
    :cond_38
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string v47, "language"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_3a8

    .line 433
    new-instance v10, Landroid/app/Dialog;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    const v47, 0x1030010

    move-object/from16 v0, v46

    move/from16 v1, v47

    invoke-direct {v10, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 435
    .local v10, "dialogSerial":Landroid/app/Dialog;
    const v46, 0x7f0300dd

    move/from16 v0, v46

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 437
    const v46, 0x7f070309

    move/from16 v0, v46

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/TextView;

    .line 438
    .local v36, "tvText1EN":Landroid/widget/TextView;
    const v46, 0x7f07030a

    move/from16 v0, v46

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    .line 439
    .local v40, "tvText2EN":Landroid/widget/TextView;
    const v46, 0x7f07030d

    move/from16 v0, v46

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/TextView;

    .line 440
    .local v39, "tvText1TH":Landroid/widget/TextView;
    const v46, 0x7f07030e

    move/from16 v0, v46

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/TextView;

    .line 441
    .local v43, "tvText2TH":Landroid/widget/TextView;
    const v46, 0x7f070311

    move/from16 v0, v46

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    .line 442
    .local v37, "tvText1LO":Landroid/widget/TextView;
    const v46, 0x7f070312

    move/from16 v0, v46

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    .line 443
    .local v41, "tvText2LO":Landroid/widget/TextView;
    const v46, 0x7f070315

    move/from16 v0, v46

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/TextView;

    .line 444
    .local v38, "tvText1MY":Landroid/widget/TextView;
    const v46, 0x7f070316

    move/from16 v0, v46

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v42

    check-cast v42, Landroid/widget/TextView;

    .line 445
    .local v42, "tvText2MY":Landroid/widget/TextView;
    const v46, 0x7f070308

    move/from16 v0, v46

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    .line 446
    .local v22, "layoutEN":Landroid/widget/LinearLayout;
    const v46, 0x7f07030c

    move/from16 v0, v46

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    .line 447
    .local v25, "layoutTH":Landroid/widget/LinearLayout;
    const v46, 0x7f070310

    move/from16 v0, v46

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    .line 448
    .local v23, "layoutLO":Landroid/widget/LinearLayout;
    const v46, 0x7f070314

    move/from16 v0, v46

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    .line 449
    .local v24, "layoutMY":Landroid/widget/LinearLayout;
    const v46, 0x7f07030b

    move/from16 v0, v46

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 450
    .local v18, "ivEN":Landroid/widget/ImageView;
    const v46, 0x7f07030f

    move/from16 v0, v46

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    .line 451
    .local v21, "ivTH":Landroid/widget/ImageView;
    const v46, 0x7f070313

    move/from16 v0, v46

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 452
    .local v19, "ivLO":Landroid/widget/ImageView;
    const v46, 0x7f070317

    move/from16 v0, v46

    invoke-virtual {v10, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    .line 454
    .local v20, "ivMY":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v46

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v13

    .line 455
    .local v13, "font":Landroid/graphics/Typeface;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v46

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v14

    .line 456
    .local v14, "font2":Landroid/graphics/Typeface;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v46

    const-string v47, "768830479847872"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_164

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v46

    const-string v47, "1033"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_164

    .line 458
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v46

    const-string v47, "fonts/phetsarath_ot.ttf"

    invoke-static/range {v46 .. v47}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v14

    .line 461
    :cond_164
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v46

    const-string v47, "517155661760483"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_192

    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v46

    const-string v47, "1033"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_192

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v46

    const-string v47, "fonts/zawgyi_one.ttf"

    invoke-static/range {v46 .. v47}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v14

    .line 467
    :cond_192
    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 468
    move-object/from16 v0, v40

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 469
    move-object/from16 v0, v39

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 470
    move-object/from16 v0, v43

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 471
    move-object/from16 v0, v37

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 472
    move-object/from16 v0, v41

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 473
    move-object/from16 v0, v38

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 474
    move-object/from16 v0, v42

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v46

    move-object/from16 v0, v36

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v46

    move-object/from16 v0, v40

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v46

    move-object/from16 v0, v39

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v46

    move-object/from16 v0, v43

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 480
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v46

    move-object/from16 v0, v37

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 481
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v46

    move-object/from16 v0, v41

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 482
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v46

    move-object/from16 v0, v38

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 483
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v46

    move-object/from16 v0, v42

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 485
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v46

    const-string v47, "768830479847872"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_2f5

    .line 486
    const v46, 0x7f0a036e

    move-object/from16 v0, v40

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 493
    :goto_24c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v46

    const-string v47, "1054"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_31d

    .line 494
    const/16 v46, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 503
    :goto_265
    const/16 v46, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v46

    const-string v47, "768830479847872"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_35e

    .line 505
    const/16 v46, 0x8

    move-object/from16 v0, v25

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 506
    const/16 v46, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 507
    const/16 v46, 0x8

    move-object/from16 v0, v24

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 518
    :goto_299
    new-instance v46, Lcom/samsung/privilege/activity/MainMenuFragment$3;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcom/samsung/privilege/activity/MainMenuFragment$3;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;Landroid/app/Dialog;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 544
    new-instance v46, Lcom/samsung/privilege/activity/MainMenuFragment$4;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcom/samsung/privilege/activity/MainMenuFragment$4;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;Landroid/app/Dialog;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    new-instance v46, Lcom/samsung/privilege/activity/MainMenuFragment$5;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcom/samsung/privilege/activity/MainMenuFragment$5;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;Landroid/app/Dialog;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    new-instance v46, Lcom/samsung/privilege/activity/MainMenuFragment$6;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcom/samsung/privilege/activity/MainMenuFragment$6;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;Landroid/app/Dialog;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 622
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 623
    .local v3, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v46, 0x11

    move/from16 v0, v46

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 624
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 626
    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    goto/16 :goto_37

    .line 487
    .end local v3    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    :cond_2f5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v46

    const-string v47, "517155661760483"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_311

    .line 488
    const v46, 0x7f0a036f

    move-object/from16 v0, v40

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_24c

    .line 490
    :cond_311
    const v46, 0x7f0a036d

    move-object/from16 v0, v40

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_24c

    .line 495
    :cond_31d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v46

    const-string v47, "1108"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_338

    .line 496
    const/16 v46, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_265

    .line 497
    :cond_338
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v46

    const-string v47, "1109"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_353

    .line 498
    const/16 v46, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_265

    .line 500
    :cond_353
    const/16 v46, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_265

    .line 508
    :cond_35e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v46

    const-string v47, "517155661760483"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_38b

    .line 509
    const/16 v46, 0x8

    move-object/from16 v0, v25

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 510
    const/16 v46, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 511
    const/16 v46, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_299

    .line 513
    :cond_38b
    const/16 v46, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 514
    const/16 v46, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 515
    const/16 v46, 0x8

    move-object/from16 v0, v24

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_299

    .line 627
    .end local v10    # "dialogSerial":Landroid/app/Dialog;
    .end local v13    # "font":Landroid/graphics/Typeface;
    .end local v14    # "font2":Landroid/graphics/Typeface;
    .end local v18    # "ivEN":Landroid/widget/ImageView;
    .end local v19    # "ivLO":Landroid/widget/ImageView;
    .end local v20    # "ivMY":Landroid/widget/ImageView;
    .end local v21    # "ivTH":Landroid/widget/ImageView;
    .end local v22    # "layoutEN":Landroid/widget/LinearLayout;
    .end local v23    # "layoutLO":Landroid/widget/LinearLayout;
    .end local v24    # "layoutMY":Landroid/widget/LinearLayout;
    .end local v25    # "layoutTH":Landroid/widget/LinearLayout;
    .end local v36    # "tvText1EN":Landroid/widget/TextView;
    .end local v37    # "tvText1LO":Landroid/widget/TextView;
    .end local v38    # "tvText1MY":Landroid/widget/TextView;
    .end local v39    # "tvText1TH":Landroid/widget/TextView;
    .end local v40    # "tvText2EN":Landroid/widget/TextView;
    .end local v41    # "tvText2LO":Landroid/widget/TextView;
    .end local v42    # "tvText2MY":Landroid/widget/TextView;
    .end local v43    # "tvText2TH":Landroid/widget/TextView;
    :cond_3a8
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string v47, "setting"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_3db

    .line 628
    new-instance v17, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    const-class v47, Lcom/samsung/privilege/activity/ProfileSettingActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 629
    .local v17, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->startActivity(Landroid/content/Intent;)V

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    move-object/from16 v46, v0

    const-string v47, "Settings"

    invoke-virtual/range {v46 .. v47}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto/16 :goto_37

    .line 632
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_3db
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string v47, "aboutus"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_40e

    .line 633
    new-instance v17, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    const-class v47, Lcom/samsung/privilege/activity/AboutUsActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 634
    .restart local v17    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->startActivity(Landroid/content/Intent;)V

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    move-object/from16 v46, v0

    const-string v47, "About"

    invoke-virtual/range {v46 .. v47}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto/16 :goto_37

    .line 637
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_40e
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string v47, "friends"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_441

    .line 638
    new-instance v17, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    const-class v47, Lcom/samsung/privilege/activity/FriendsFragmentActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 639
    .restart local v17    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->startActivity(Landroid/content/Intent;)V

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    move-object/from16 v46, v0

    const-string v47, "Friends"

    invoke-virtual/range {v46 .. v47}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto/16 :goto_37

    .line 642
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_441
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string v47, "qrcode"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_474

    .line 643
    new-instance v17, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    const-class v47, Lcom/samsung/privilege/activity/QRLandingActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 644
    .restart local v17    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->startActivity(Landroid/content/Intent;)V

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    move-object/from16 v46, v0

    const-string v47, "QR Code"

    invoke-virtual/range {v46 .. v47}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto/16 :goto_37

    .line 647
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_474
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string v47, "buzzebees"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_4c3

    .line 648
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/samsung/privilege/AppSetting;->InitialLibBuzzebeesConfig(Landroid/content/Context;)V

    .line 652
    new-instance v17, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    const-class v47, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 653
    .restart local v17    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->startActivity(Landroid/content/Intent;)V

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    move-object/from16 v46, v0

    const-string v47, "Menu"

    const-string v48, "Click"

    const-string v49, "Marketplace Menu"

    const-wide/16 v50, 0x1

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    invoke-virtual/range {v46 .. v50}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    move-object/from16 v46, v0

    const-string v47, "Marketplace"

    invoke-virtual/range {v46 .. v47}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto/16 :goto_37

    .line 658
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_4c3
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->name:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string v47, "inapps"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_4f6

    .line 659
    new-instance v17, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    const-class v47, Lcom/samsung/privilege/activity/MiscFragmentActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 660
    .restart local v17    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->startActivity(Landroid/content/Intent;)V

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    move-object/from16 v46, v0

    const-string v47, "Recommended Apps"

    invoke-virtual/range {v46 .. v47}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto/16 :goto_37

    .line 664
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_4f6
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->switchPagerFragment(I)V

    goto/16 :goto_37

    .line 666
    :cond_4ff
    move-object/from16 v0, v27

    iget v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->type:I

    move/from16 v46, v0

    const/16 v47, 0x2

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_7be

    .line 667
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_cat_id:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string v47, "campaign"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_529

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_cat_id:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string v47, "ads"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_665

    .line 668
    :cond_529
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_agency_id:Ljava/lang/String;

    move-object/from16 v46, v0

    if-eqz v46, :cond_636

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_agency_id:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string v47, ""

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_636

    .line 669
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_agency_id:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Lcom/samsung/privilege/AppSetting;->SPONSOR_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_5c3

    .line 670
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_cp_cat_id:Ljava/lang/String;

    move-object/from16 v46, v0

    sget v47, Lcom/samsung/privilege/AppSetting;->CAT_PREMIUM_THAI:I

    invoke-static/range {v47 .. v47}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_594

    .line 671
    new-instance v17, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    const-class v47, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 672
    .restart local v17    # "intent":Landroid/content/Intent;
    const-string v46, "campaign_id"

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_id:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v47

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 673
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_37

    .line 675
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_594
    new-instance v17, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    const-class v47, Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 676
    .restart local v17    # "intent":Landroid/content/Intent;
    const-string v46, "campaign_id"

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_id:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v47

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 677
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_37

    .line 680
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_5c3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/samsung/privilege/AppSetting;->InitialLibBuzzebeesConfig(Landroid/content/Context;)V

    .line 682
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_cat_id:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string v47, "ads"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_607

    .line 683
    new-instance v17, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    const-class v47, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 684
    .restart local v17    # "intent":Landroid/content/Intent;
    const-string v46, "campaign_id"

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_id:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v47

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 685
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_37

    .line 687
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_607
    new-instance v17, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    const-class v47, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 688
    .restart local v17    # "intent":Landroid/content/Intent;
    const-string v46, "campaign_id"

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_id:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v47

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 689
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_37

    .line 693
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_636
    new-instance v17, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    const-class v47, Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 694
    .restart local v17    # "intent":Landroid/content/Intent;
    const-string v46, "campaign_id"

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_id:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v47

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 695
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_37

    .line 697
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_665
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_cat_id:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string v47, "comment"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_70e

    .line 698
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_id:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string v47, "|"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    .line 699
    .local v16, "index":I
    const/16 v46, -0x1

    move/from16 v0, v16

    move/from16 v1, v46

    if-le v0, v1, :cond_6f4

    .line 700
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_id:Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 701
    .local v7, "buzzKey":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/samsung/privilege/AppSetting;->InitialLibBuzzebeesConfig(Landroid/content/Context;)V

    .line 702
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_id:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string v47, "f-"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v46

    if-ltz v46, :cond_6d1

    .line 703
    new-instance v17, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    const-class v47, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 704
    .restart local v17    # "intent":Landroid/content/Intent;
    const-string v46, "BuzzKey"

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 705
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_37

    .line 707
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_6d1
    new-instance v17, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    const-class v47, Lic/buzzebeeslib/activity/MarketReviewOfReviewActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 708
    .restart local v17    # "intent":Landroid/content/Intent;
    const-string v46, "BuzzKey"

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_37

    .line 712
    .end local v7    # "buzzKey":Ljava/lang/String;
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_6f4
    new-instance v17, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    const-class v47, Lcom/samsung/privilege/activity/RequestHelpActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 713
    .restart local v17    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_37

    .line 715
    .end local v16    # "index":I
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_70e
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_cat_id:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string v47, "badge"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_72b

    .line 716
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_detail:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-static/range {v46 .. v47}, Lcom/samsung/privilege/util/DialogUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_37

    .line 717
    :cond_72b
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_cat_id:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string v47, "link"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_782

    .line 718
    new-instance v17, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    const-class v47, Lcom/samsung/privilege/activity/WebViewNotificationActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 719
    .restart local v17    # "intent":Landroid/content/Intent;
    const-string v46, "url"

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_url:Ljava/lang/String;

    move-object/from16 v47, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 720
    const-string v46, "message"

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_detail:Ljava/lang/String;

    move-object/from16 v47, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    const-string v46, "isNoti"

    const/16 v47, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 722
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_37

    .line 723
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_782
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_cat_id:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string v47, "cat"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_7af

    .line 724
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    move-object/from16 v0, v46

    instance-of v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;

    move/from16 v46, v0

    if-eqz v46, :cond_37

    .line 725
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    check-cast v8, Lcom/samsung/privilege/activity/CampaignListActivity;

    .line 726
    .local v8, "ca":Lcom/samsung/privilege/activity/CampaignListActivity;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_id:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->switchPagerByCat(Ljava/lang/String;)V

    goto/16 :goto_37

    .line 729
    .end local v8    # "ca":Lcom/samsung/privilege/activity/CampaignListActivity;
    :cond_7af
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->noti_detail:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-static/range {v46 .. v47}, Lcom/samsung/privilege/util/DialogUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_37

    .line 731
    :cond_7be
    move-object/from16 v0, v27

    iget v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->type:I

    move/from16 v46, v0

    const/16 v47, 0x3

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_37

    .line 732
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    move-object/from16 v46, v0

    if-eqz v46, :cond_c6a

    .line 733
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/samsung/privilege/bean/Purchasing;->Type:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string v47, "5"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_37

    .line 735
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/samsung/privilege/bean/Purchasing;->Type:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string v47, "8"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_810

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/samsung/privilege/bean/Purchasing;->PointType:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string v47, "get"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_37

    .line 737
    :cond_810
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/samsung/privilege/bean/Purchasing;->Type:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string v47, "6"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_ae3

    .line 738
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/samsung/privilege/bean/Purchasing;->IsInstalledApp:Z

    move/from16 v46, v0

    if-nez v46, :cond_37

    .line 739
    const/4 v15, 0x0

    .line 740
    .local v15, "hasApp":Z
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/samsung/privilege/bean/Purchasing;->InstallPackageName:Ljava/lang/String;

    move-object/from16 v46, v0

    if-eqz v46, :cond_8d7

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/samsung/privilege/bean/Purchasing;->InstallPackageName:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string v47, ""

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_8d7

    .line 741
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/samsung/privilege/bean/Purchasing;->InstallPackageName:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->appInstalledOrNot(Ljava/lang/String;)Z

    move-result v15

    .line 746
    :goto_869
    if-nez v15, :cond_8d9

    .line 748
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 749
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    const v46, 0x7f0a001d

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 750
    const v46, 0x7f0a034b

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v46

    const/16 v47, 0x0

    invoke-virtual/range {v46 .. v47}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v46

    const v47, 0x7f0a034d

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v47

    new-instance v48, Lcom/samsung/privilege/activity/MainMenuFragment$7;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment$7;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;)V

    invoke-virtual/range {v46 .. v48}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v46

    .line 754
    const v47, 0x7f0a034c

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v47

    new-instance v48, Lcom/samsung/privilege/activity/MainMenuFragment$8;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/activity/MainMenuFragment$8;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;Lcom/samsung/privilege/bean/MainMenuItemModel;)V

    invoke-virtual/range {v46 .. v48}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 769
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 770
    .local v4, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_37

    .line 743
    .end local v4    # "alert":Landroid/app/AlertDialog;
    .end local v6    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_8d7
    const/4 v15, 0x0

    goto :goto_869

    .line 774
    :cond_8d9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    const-string v47, ""

    const v48, 0x7f0a018d

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v48

    const/16 v49, 0x1

    const/16 v50, 0x0

    invoke-static/range {v46 .. v50}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/privilege/activity/MainMenuFragment;->gDialog:Landroid/app/ProgressDialog;

    .line 777
    :try_start_8f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment;->gDialog:Landroid/app/ProgressDialog;

    move-object/from16 v46, v0

    const v47, 0x102000b

    invoke-virtual/range {v46 .. v47}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 778
    .local v26, "mMessageView":Landroid/widget/TextView;
    if-eqz v26, :cond_931

    .line 779
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v46

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v13

    .line 780
    .restart local v13    # "font":Landroid/graphics/Typeface;
    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 781
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v46

    move-object/from16 v0, v26

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_931
    .catch Ljava/lang/Exception; {:try_start_8f8 .. :try_end_931} :catch_c73

    .line 787
    .end local v13    # "font":Landroid/graphics/Typeface;
    .end local v26    # "mMessageView":Landroid/widget/TextView;
    :cond_931
    :goto_931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainMenuFragment;->gDialog:Landroid/app/ProgressDialog;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/app/ProgressDialog;->show()V

    .line 789
    new-instance v29, Lcom/loopj/android/http/RequestParams;

    invoke-direct/range {v29 .. v29}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 790
    .local v29, "params":Lcom/loopj/android/http/RequestParams;
    const-string v44, ""

    .line 792
    .local v44, "url":Ljava/lang/String;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/samsung/privilege/bean/Purchasing;->VerifyTypeAndroid:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string v47, "manual"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_9bc

    .line 793
    new-instance v46, Ljava/lang/StringBuilder;

    sget-object v47, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static/range {v47 .. v47}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v47, "api/campaign/"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/samsung/privilege/bean/Purchasing;->ID:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "/verify?token="

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    .line 846
    :goto_98c
    sget-object v46, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCAT:Ljava/lang/String;

    new-instance v47, Ljava/lang/StringBuilder;

    const-string v48, "verify url="

    invoke-direct/range {v47 .. v48}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v47

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    new-instance v46, Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener;

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;Z)V

    move-object/from16 v0, v44

    move-object/from16 v1, v29

    move-object/from16 v2, v46

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/http/BuzzbeesRestClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto/16 :goto_37

    .line 795
    :cond_9bc
    new-instance v46, Ljava/lang/StringBuilder;

    const-string v47, "{\"campaign_id\":"

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/samsung/privilege/bean/Purchasing;->ID:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, ",\"token\":\""

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "\"}"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    .line 804
    .local v45, "valueJson":Ljava/lang/String;
    const-string v5, ""

    .line 806
    .local v5, "base64":Ljava/lang/String;
    :try_start_9f1
    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v46

    const-string v47, "UTF-8"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 807
    .local v9, "data":[B
    const/16 v46, 0x0

    move/from16 v0, v46

    invoke-static {v9, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_a06
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9f1 .. :try_end_a06} :catch_add

    move-result-object v5

    .line 812
    .end local v9    # "data":[B
    :goto_a07
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v46

    add-int/lit8 v46, v46, -0x5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    .line 813
    .local v34, "token_5_digit_last":Ljava/lang/String;
    const/16 v46, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v47

    add-int/lit8 v47, v47, -0x5

    move/from16 v0, v46

    move/from16 v1, v47

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v35

    .line 815
    .local v35, "token_cut_1_digit_and_5_digit_last":Ljava/lang/String;
    const-string v12, ""

    .line 816
    .local v12, "encryptValue":Ljava/lang/String;
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v46

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 818
    new-instance v46, Ljava/lang/StringBuilder;

    sget-object v47, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static/range {v47 .. v47}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v47, "api/main/log_verify"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    .line 819
    const-string v46, "encrypt"

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v47

    const-string v48, " "

    const-string v49, ""

    invoke-virtual/range {v47 .. v49}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v29

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 822
    .restart local v6    # "builder":Landroid/app/AlertDialog$Builder;
    const v46, 0x7f0a001d

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 823
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/samsung/privilege/bean/Purchasing;->InstallingMessage:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v46

    const/16 v47, 0x0

    invoke-virtual/range {v46 .. v47}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v46

    const v47, 0x7f0a034d

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v47

    new-instance v48, Lcom/samsung/privilege/activity/MainMenuFragment$9;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment$9;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;)V

    invoke-virtual/range {v46 .. v48}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v46

    .line 827
    const v47, 0x7f0a034c

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v47

    new-instance v48, Lcom/samsung/privilege/activity/MainMenuFragment$10;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/activity/MainMenuFragment$10;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;Lcom/samsung/privilege/bean/MainMenuItemModel;)V

    invoke-virtual/range {v46 .. v48}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 842
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 843
    .restart local v4    # "alert":Landroid/app/AlertDialog;
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_98c

    .line 808
    .end local v4    # "alert":Landroid/app/AlertDialog;
    .end local v6    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v12    # "encryptValue":Ljava/lang/String;
    .end local v34    # "token_5_digit_last":Ljava/lang/String;
    .end local v35    # "token_cut_1_digit_and_5_digit_last":Ljava/lang/String;
    :catch_add
    move-exception v11

    .line 809
    .local v11, "e1":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v11}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_a07

    .line 855
    .end local v5    # "base64":Ljava/lang/String;
    .end local v11    # "e1":Ljava/io/UnsupportedEncodingException;
    .end local v15    # "hasApp":Z
    .end local v29    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v44    # "url":Ljava/lang/String;
    .end local v45    # "valueJson":Ljava/lang/String;
    :cond_ae3
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/samsung/privilege/bean/Purchasing;->Type:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string v47, "3"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_c36

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/samsung/privilege/bean/Purchasing;->IsUsed:Z

    move/from16 v46, v0

    if-nez v46, :cond_c36

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/samsung/privilege/bean/Purchasing;->Delivered:Z

    move/from16 v46, v0

    if-nez v46, :cond_c36

    .line 856
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    if-eqz v46, :cond_37

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v46

    if-nez v46, :cond_37

    .line 857
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 858
    .restart local v6    # "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/samsung/privilege/bean/Purchasing;->AgencyName:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 859
    .local v31, "strHeader":Ljava/lang/String;
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/samsung/privilege/bean/Purchasing;->Name:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 860
    .local v32, "strMessage":Ljava/lang/String;
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v47, "\r\n\r\n"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 861
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v47, 0x7f0a030e

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 862
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget v0, v0, Lcom/samsung/privilege/bean/Purchasing;->MinutesValidAfterUsed:I

    move/from16 v46, v0

    if-lez v46, :cond_bdd

    .line 863
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v47, "\r\n"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const v47, 0x7f0a030f

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Lcom/samsung/privilege/bean/Purchasing;->MinutesValidAfterUsed:I

    move/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const v47, 0x7f0a0310

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 865
    :cond_bdd
    const v46, 0x7f0a0337

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 866
    .local v33, "strUse":Ljava/lang/String;
    const v46, 0x7f0a00b1

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 867
    .local v30, "strCancel":Ljava/lang/String;
    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 868
    move-object/from16 v28, v27

    .line 869
    .local v28, "menuItemFinal":Lcom/samsung/privilege/bean/MainMenuItemModel;
    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v46

    const/16 v47, 0x0

    invoke-virtual/range {v46 .. v47}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v46

    new-instance v47, Lcom/samsung/privilege/activity/MainMenuFragment$11;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/activity/MainMenuFragment$11;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;Lcom/samsung/privilege/bean/MainMenuItemModel;)V

    move-object/from16 v0, v46

    move-object/from16 v1, v33

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v46

    .line 878
    new-instance v47, Lcom/samsung/privilege/activity/MainMenuFragment$12;

    move-object/from16 v0, v47

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment$12;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;)V

    move-object/from16 v0, v46

    move-object/from16 v1, v30

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 883
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 884
    .restart local v4    # "alert":Landroid/app/AlertDialog;
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_37

    .line 888
    .end local v4    # "alert":Landroid/app/AlertDialog;
    .end local v6    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v28    # "menuItemFinal":Lcom/samsung/privilege/bean/MainMenuItemModel;
    .end local v30    # "strCancel":Ljava/lang/String;
    .end local v31    # "strHeader":Ljava/lang/String;
    .end local v32    # "strMessage":Ljava/lang/String;
    .end local v33    # "strUse":Ljava/lang/String;
    :cond_c36
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/samsung/privilege/bean/Purchasing;->Type:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string v47, "3"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_c61

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/samsung/privilege/bean/MainMenuItemModel;->history_purchasing:Lcom/samsung/privilege/bean/Purchasing;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/samsung/privilege/bean/Purchasing;->IsUsed:Z

    move/from16 v46, v0

    if-eqz v46, :cond_c61

    .line 890
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->getRedeemData(Lcom/samsung/privilege/bean/MainMenuItemModel;)V

    goto/16 :goto_37

    .line 893
    :cond_c61
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->getRedeemData(Lcom/samsung/privilege/bean/MainMenuItemModel;)V

    goto/16 :goto_37

    .line 897
    :cond_c6a
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->getRedeemData(Lcom/samsung/privilege/bean/MainMenuItemModel;)V

    goto/16 :goto_37

    .line 783
    .restart local v15    # "hasApp":Z
    :catch_c73
    move-exception v46

    goto/16 :goto_931
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 341
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 345
    invoke-static {}, Lcom/facebook/android/PostEvents;->clearPostListener()V

    .line 346
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 347
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->flushCache()V

    .line 349
    invoke-static {}, Lcom/samsung/privilege/GCMIntentService;->clearGCMMessageListener()V

    .line 350
    return-void
.end method

.method public onResume()V
    .registers 8

    .prologue
    .line 293
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 298
    sput-object p0, Lcom/samsung/privilege/AppSetting;->M_MainMenuFragment:Lcom/samsung/privilege/activity/MainMenuFragment;

    .line 300
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 301
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 304
    :cond_12
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 305
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcom/samsung/privilege/AppSetting;->APP_CONTEXT:Landroid/content/Context;

    .line 307
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    .line 308
    .local v2, "session":Lcom/facebook/Session;
    invoke-direct {p0, v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->updateViewForUser(Lcom/facebook/Session;)V

    .line 310
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/privilege/activity/CampaignListActivity;

    if-eqz v3, :cond_42

    .line 311
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/activity/CampaignListActivity;

    .line 312
    .local v0, "ca":Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->GetNotificationUnReadCount(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignListActivity;->setNotiUnread(I)V

    .line 316
    .end local v0    # "ca":Lcom/samsung/privilege/activity/CampaignListActivity;
    .end local v2    # "session":Lcom/facebook/Session;
    :cond_42
    new-instance v3, Lcom/samsung/privilege/activity/MainMenuFragment$myGCMMessageListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/privilege/activity/MainMenuFragment$myGCMMessageListener;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;Lcom/samsung/privilege/activity/MainMenuFragment$myGCMMessageListener;)V

    invoke-static {v3}, Lcom/samsung/privilege/GCMIntentService;->addGCMMessageListener(Lcom/samsung/privilege/GCMIntentService$GCMMessageListener;)V

    .line 318
    sget-boolean v3, Lcom/samsung/privilege/AppSetting;->IS_AUTO_GOTO_HISTORY:Z

    if-eqz v3, :cond_59

    .line 320
    const/4 v3, 0x0

    :try_start_50
    sput-boolean v3, Lcom/samsung/privilege/AppSetting;->IS_AUTO_GOTO_HISTORY:Z

    .line 321
    iget-object v3, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->gListMainmenu:Landroid/widget/ListView;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setSelection(I)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_59} :catch_6d

    .line 327
    :cond_59
    :goto_59
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainMenuFragment;->updateNotificationFromCatch()V

    .line 328
    iget-boolean v3, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->isCallVerify:Z

    if-eqz v3, :cond_6c

    .line 329
    iget-object v3, p0, Lcom/samsung/privilege/activity/MainMenuFragment;->gHandler:Landroid/os/Handler;

    new-instance v4, Lcom/samsung/privilege/activity/MainMenuFragment$2;

    invoke-direct {v4, p0}, Lcom/samsung/privilege/activity/MainMenuFragment$2;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;)V

    .line 335
    const-wide/16 v5, 0x3e8

    .line 329
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 337
    :cond_6c
    return-void

    .line 322
    :catch_6d
    move-exception v1

    .line 323
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v3, Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCAT:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(Exception|try to goto history):"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_59
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 389
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 390
    const-string v0, "buzzebees.market"

    const-string v1, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 393
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 285
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 289
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 354
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 358
    return-void
.end method
