.class public Lcom/samsung/privilege/MainActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;,
        Lcom/samsung/privilege/MainActivity$AuthOTPAsyncHttpResponseHandler;,
        Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler;,
        Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;
    }
.end annotation


# static fields
.field private static final FRAGMENT_COUNT:I = 0x1

.field private static final SPLASH:I


# instance fields
.field private LOGCAT:Ljava/lang/String;

.field private NewbieBadge:Ljava/lang/String;

.field private callback:Lcom/facebook/Session$StatusCallback;

.field private fragments:[Landroid/support/v4/app/Fragment;

.field private gDialog:Landroid/app/ProgressDialog;

.field private gHandler:Landroid/os/Handler;

.field private isRequestingOTP:Z

.field private isResumed:Z

.field private mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

.field private mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

.field private uiHelper:Lcom/facebook/UiLifecycleHelper;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 68
    const-string v0, "MainActivity"

    iput-object v0, p0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    .line 79
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/support/v4/app/Fragment;

    iput-object v0, p0, Lcom/samsung/privilege/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    .line 81
    iput-boolean v1, p0, Lcom/samsung/privilege/MainActivity;->isResumed:Z

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/MainActivity;->NewbieBadge:Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/samsung/privilege/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/MainActivity$1;-><init>(Lcom/samsung/privilege/MainActivity;)V

    iput-object v0, p0, Lcom/samsung/privilege/MainActivity;->callback:Lcom/facebook/Session$StatusCallback;

    .line 474
    iput-boolean v1, p0, Lcom/samsung/privilege/MainActivity;->isRequestingOTP:Z

    .line 66
    return-void
.end method

.method private GetProfileData()V
    .registers 5

    .prologue
    .line 1153
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/profile/me/user?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1154
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GetProfileData="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    new-instance v1, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;-><init>(Lcom/samsung/privilege/MainActivity;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 1156
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/MainActivity;Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 243
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/privilege/MainActivity;->onSessionStateChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1(Lcom/samsung/privilege/MainActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/samsung/privilege/MainActivity;)Z
    .registers 2

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/samsung/privilege/MainActivity;->isRequestingOTP:Z

    return v0
.end method

.method static synthetic access$11(Lcom/samsung/privilege/MainActivity;Landroid/app/ProgressDialog;)V
    .registers 2

    .prologue
    .line 75
    iput-object p1, p0, Lcom/samsung/privilege/MainActivity;->gDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$12(Lcom/samsung/privilege/MainActivity;)Lcom/google/analytics/tracking/android/Tracker;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    return-object v0
.end method

.method static synthetic access$2(Lcom/samsung/privilege/MainActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity;->gDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/samsung/privilege/MainActivity;Z)V
    .registers 2

    .prologue
    .line 474
    iput-boolean p1, p0, Lcom/samsung/privilege/MainActivity;->isRequestingOTP:Z

    return-void
.end method

.method static synthetic access$4(Lcom/samsung/privilege/MainActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1248
    invoke-direct {p0, p1}, Lcom/samsung/privilege/MainActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Lcom/samsung/privilege/MainActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/samsung/privilege/MainActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 84
    iput-object p1, p0, Lcom/samsung/privilege/MainActivity;->NewbieBadge:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/samsung/privilege/MainActivity;)V
    .registers 1

    .prologue
    .line 1152
    invoke-direct {p0}, Lcom/samsung/privilege/MainActivity;->GetProfileData()V

    return-void
.end method

.method static synthetic access$8(Lcom/samsung/privilege/MainActivity;I)V
    .registers 2

    .prologue
    .line 1224
    invoke-direct {p0, p1}, Lcom/samsung/privilege/MainActivity;->gotoCampaignDetail(I)V

    return-void
.end method

.method static synthetic access$9(Lcom/samsung/privilege/MainActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity;->NewbieBadge:Ljava/lang/String;

    return-object v0
.end method

.method private gotoCampaignDetail(I)V
    .registers 6
    .param p1, "campaign_id"    # I

    .prologue
    .line 1225
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "mode"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1226
    .local v1, "mode":Ljava/lang/String;
    if-eqz v1, :cond_6b

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6b

    .line 1227
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gift"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1228
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1229
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "campaign_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1230
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1245
    :goto_33
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->finish()V

    .line 1246
    return-void

    .line 1231
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_37
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bzbs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 1232
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1233
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "campaign_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1234
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_33

    .line 1236
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_57
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1237
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "campaign_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1238
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_33

    .line 1241
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_6b
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1242
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "campaign_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1243
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_33
.end method

.method private onSessionStateChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .registers 14
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    const-wide/16 v8, 0x1

    const/4 v6, 0x0

    .line 244
    iget-object v3, p0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onSessionStateChange: state="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/facebook/SessionState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v3, p0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onSessionStateChange: isResumed="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/samsung/privilege/MainActivity;->isResumed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-boolean v3, p0, Lcom/samsung/privilege/MainActivity;->isResumed:Z

    if-eqz v3, :cond_80

    .line 247
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 248
    .local v2, "manager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 249
    .local v0, "backStackSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3e
    if-lt v1, v0, :cond_81

    .line 256
    iget-object v3, p0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    const-string v4, "if (state.equals(SessionState.OPENED)) { BEFORE"

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v3, p0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "session.getAccessToken()="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    sget-object v3, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    invoke-virtual {p2, v3}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 274
    iget-object v3, p0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    const-string v4, "if (state.equals(SessionState.OPENED)) { AFTER"

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-direct {p0}, Lcom/samsung/privilege/MainActivity;->showViewPager()V

    .line 289
    iget-object v3, p0, Lcom/samsung/privilege/MainActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v4, "Login"

    const-string v5, "Click Facebook Login Success"

    const-string v6, ""

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 296
    .end local v0    # "backStackSize":I
    .end local v1    # "i":I
    .end local v2    # "manager":Landroid/support/v4/app/FragmentManager;
    :cond_80
    :goto_80
    return-void

    .line 250
    .restart local v0    # "backStackSize":I
    .restart local v1    # "i":I
    .restart local v2    # "manager":Landroid/support/v4/app/FragmentManager;
    :cond_81
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 290
    :cond_87
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_80

    .line 291
    invoke-direct {p0, v6, v6}, Lcom/samsung/privilege/MainActivity;->showFragment(IZ)V

    .line 293
    iget-object v3, p0, Lcom/samsung/privilege/MainActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v4, "Login"

    const-string v5, "Click Facebook Login Fail"

    const-string v6, ""

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_80
.end method

.method private showFragment(IZ)V
    .registers 7
    .param p1, "fragmentIndex"    # I
    .param p2, "addToBackStack"    # Z

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 370
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 371
    .local v2, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v3, p0, Lcom/samsung/privilege/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    array-length v3, v3

    if-lt v1, v3, :cond_18

    .line 378
    if-eqz p2, :cond_14

    .line 379
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 381
    :cond_14
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 382
    return-void

    .line 372
    :cond_18
    if-ne v1, p1, :cond_24

    .line 373
    iget-object v3, p0, Lcom/samsung/privilege/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 371
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 375
    :cond_24
    iget-object v3, p0, Lcom/samsung/privilege/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_21
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/MainActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/MainActivity$7;-><init>(Lcom/samsung/privilege/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1256
    return-void
.end method

.method private showViewPager()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 322
    iget-object v7, p0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    const-string v8, "private void showViewPager() {"

    invoke-static {v7, v8}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v3

    .line 325
    .local v3, "session":Lcom/facebook/Session;
    invoke-virtual {v3}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v4

    .line 326
    .local v4, "state":Lcom/facebook/SessionState;
    const-string v6, ""

    .line 328
    .local v6, "tokenFacebook":Ljava/lang/String;
    if-eqz v3, :cond_c5

    invoke-virtual {v3}, Lcom/facebook/Session;->isOpened()Z

    move-result v7

    if-eqz v7, :cond_c5

    .line 329
    sget-object v7, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    invoke-virtual {v4, v7}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2a

    sget-object v7, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    invoke-virtual {v4, v7}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c1

    .line 330
    :cond_2a
    invoke-virtual {v3}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v6

    .line 338
    :goto_2e
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/samsung/privilege/UserLogin;->SetTokenFacebook(Landroid/content/Context;Ljava/lang/String;)Z

    .line 340
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 341
    .local v5, "tokenBzBs":Ljava/lang/String;
    if-eqz v5, :cond_47

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 344
    :cond_47
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/privilege/UserLogin;->SetUserCarrier(Landroid/content/Context;Ljava/lang/String;)Z

    .line 347
    :cond_56
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/privilege/UserLogin;->GetIsPlayingIntro(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 348
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/samsung/privilege/UserLogin;->SetIsPlayingIntro(Landroid/content/Context;Z)Z

    .line 350
    new-instance v2, Lcom/samsung/privilege/bean/MessagePopup;

    const-string v7, "welcome"

    invoke-direct {v2, v7}, Lcom/samsung/privilege/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 351
    .local v2, "messagePopup":Lcom/samsung/privilege/bean/MessagePopup;
    sget-object v7, Lcom/samsung/privilege/AppSetting;->QUEUE_MESSAGEPOPUPS:Ljava/util/Queue;

    invoke-interface {v7, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 357
    .end local v2    # "messagePopup":Lcom/samsung/privilege/bean/MessagePopup;
    :cond_74
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 358
    .local v1, "intent":Landroid/content/Intent;
    const-string v7, "category_noti"

    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "category_noti"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "campaign_id"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 360
    .local v0, "campaign_id":I
    if-lez v0, :cond_ba

    .line 361
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "mode"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/privilege/UserLogin;->SetAutoCampaignMode(Landroid/content/Context;Ljava/lang/String;)Z

    .line 362
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/samsung/privilege/UserLogin;->SetAutoCampaignID(Landroid/content/Context;I)Z

    .line 364
    :cond_ba
    invoke-virtual {p0, v1, v10}, Lcom/samsung/privilege/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 365
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->finish()V

    .line 366
    return-void

    .line 332
    .end local v0    # "campaign_id":I
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v5    # "tokenBzBs":Ljava/lang/String;
    :cond_c1
    const-string v6, ""

    .line 334
    goto/16 :goto_2e

    .line 335
    :cond_c5
    const-string v6, ""

    goto/16 :goto_2e
.end method


# virtual methods
.method public doCheckVersionNote(Landroid/view/View;)V
    .registers 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x0

    .line 385
    iget-object v3, p0, Lcom/samsung/privilege/MainActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v4, "Login"

    const-string v5, "Click Device Login"

    const-string v6, ""

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 387
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "402705486466922"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 388
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "api/auth/version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, "url":Ljava/lang/String;
    const-string v2, ""

    .line 392
    .local v2, "versionName":Ljava/lang/String;
    :try_start_39
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_48} :catch_99

    .line 396
    :goto_48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?client_version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->AUTH_BUZZEBEES_PREFIX(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 398
    const-string v3, ""

    const v4, 0x7f09018d

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {p0, v3, v4, v5, v10}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/privilege/MainActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 399
    iget-object v3, p0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "doCheckVersionNote="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const/4 v3, 0x0

    new-instance v4, Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler;

    invoke-direct {v4, p0}, Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler;-><init>(Lcom/samsung/privilege/MainActivity;)V

    invoke-static {v1, v3, v4}, Lcom/samsung/privilege/util/http/BuzzbeesRestClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 404
    .end local v1    # "url":Ljava/lang/String;
    .end local v2    # "versionName":Ljava/lang/String;
    :goto_98
    return-void

    .line 393
    .restart local v1    # "url":Ljava/lang/String;
    .restart local v2    # "versionName":Ljava/lang/String;
    :catch_99
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_48

    .line 402
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "url":Ljava/lang/String;
    .end local v2    # "versionName":Ljava/lang/String;
    :cond_9d
    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    invoke-virtual {p0, v10, v3, v4, v5}, Lcom/samsung/privilege/MainActivity;->doLoginDevice(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_98
.end method

.method public doLoginDevice(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 28
    .param p1, "is_otp"    # Z
    .param p2, "otp_contact_number"    # Ljava/lang/String;
    .param p3, "otp_number"    # Ljava/lang/String;
    .param p4, "otp_refcode"    # Ljava/lang/String;

    .prologue
    .line 823
    const-string v19, ""

    const v20, 0x7f09018d

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/privilege/MainActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 826
    :try_start_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity;->gDialog:Landroid/app/ProgressDialog;

    move-object/from16 v19, v0

    const v20, 0x102000b

    invoke-virtual/range {v19 .. v20}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 827
    .local v14, "mMessageView":Landroid/widget/TextView;
    if-eqz v14, :cond_56

    .line 828
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v12

    .line 829
    .local v12, "font":Landroid/graphics/Typeface;
    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 830
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_56} :catch_3d9

    .line 836
    .end local v12    # "font":Landroid/graphics/Typeface;
    .end local v14    # "mMessageView":Landroid/widget/TextView;
    :cond_56
    :goto_56
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/samsung/privilege/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/UserLogin;->SetUserCarrier(Landroid/content/Context;Ljava/lang/String;)Z

    .line 838
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 841
    .local v15, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "app_id"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "app_id="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    const-string v18, ""

    .line 848
    .local v18, "versionName":Ljava/lang/String;
    :try_start_a0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v18, v0
    :try_end_b4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a0 .. :try_end_b4} :catch_38a

    .line 852
    :goto_b4
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "client_version"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/samsung/privilege/AppSetting;->AUTH_BUZZEBEES_PREFIX(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "client_version="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/samsung/privilege/AppSetting;->AUTH_BUZZEBEES_PREFIX(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    new-instance v9, Lcom/samsung/privilege/util/DeviceHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 858
    invoke-static {}, Lcheat/FoxCore;->ranImei()Ljava/lang/String;

    move-result-object v10

    .line 859
    .local v10, "device_id":Ljava/lang/String;
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "uuid"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v10}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "uuid="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 865
    .local v5, "AndroidVersion":Ljava/lang/String;
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "os"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "android "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "os=android "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "samsung"

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "GT-I9100"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 873
    .local v16, "platform":Ljava/lang/String;
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "platform"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "platform="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "sponsorId"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/samsung/privilege/AppSetting;->SPONSOR_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "sponsorId="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/samsung/privilege/AppSetting;->SPONSOR_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    invoke-virtual {v9}, Lcom/samsung/privilege/util/DeviceHelper;->getAndroidID()Ljava/lang/String;

    move-result-object v6

    .line 884
    .local v6, "android_id":Ljava/lang/String;
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "mac_address"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v6}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "mac_address="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/privilege/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 890
    .local v7, "carrier":Ljava/lang/String;
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "carrier"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v7}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "carrier="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    if-eqz p1, :cond_3a9

    .line 896
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "contact_number"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "contact_number="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "otp"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "otp="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "refcode"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "refcode="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    :goto_2e0
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "transfer_points"

    const-string v21, "manual"

    invoke-direct/range {v19 .. v21}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "transfer_points=manual"

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "device_locale"

    const-string v21, "1033"

    invoke-direct/range {v19 .. v21}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "device_locale=1033"

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/privilege/util/InfoData;->GetInfoData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 964
    .local v13, "info":Ljava/lang/String;
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "info"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v13}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "info="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "api/auth/device_login"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 969
    .local v17, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "url="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    new-instance v19, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;-><init>(Lcom/samsung/privilege/MainActivity;)V

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v15, v1, v2}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 982
    return-void

    .line 849
    .end local v5    # "AndroidVersion":Ljava/lang/String;
    .end local v6    # "android_id":Ljava/lang/String;
    .end local v7    # "carrier":Ljava/lang/String;
    .end local v9    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .end local v10    # "device_id":Ljava/lang/String;
    .end local v13    # "info":Ljava/lang/String;
    .end local v16    # "platform":Ljava/lang/String;
    .end local v17    # "url":Ljava/lang/String;
    :catch_38a
    move-exception v11

    .line 850
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Can\'t get versionName:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b4

    .line 907
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5    # "AndroidVersion":Ljava/lang/String;
    .restart local v6    # "android_id":Ljava/lang/String;
    .restart local v7    # "carrier":Ljava/lang/String;
    .restart local v9    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .restart local v10    # "device_id":Ljava/lang/String;
    .restart local v16    # "platform":Ljava/lang/String;
    :cond_3a9
    invoke-virtual {v9}, Lcom/samsung/privilege/util/DeviceHelper;->getPhoneNumber()Ljava/lang/String;

    move-result-object v8

    .line 908
    .local v8, "contact_number":Ljava/lang/String;
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "contact_number"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v8}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "contact_number="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2e0

    .line 832
    .end local v5    # "AndroidVersion":Ljava/lang/String;
    .end local v6    # "android_id":Ljava/lang/String;
    .end local v7    # "carrier":Ljava/lang/String;
    .end local v8    # "contact_number":Ljava/lang/String;
    .end local v9    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .end local v10    # "device_id":Ljava/lang/String;
    .end local v15    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    .end local v16    # "platform":Ljava/lang/String;
    .end local v18    # "versionName":Ljava/lang/String;
    :catch_3d9
    move-exception v19

    goto/16 :goto_56
.end method

.method public doRequestOTP(Landroid/view/View;)V
    .registers 24
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 483
    const/4 v14, 0x1

    .line 485
    .local v14, "is_login_otp":Z
    if-eqz v14, :cond_f1

    .line 486
    new-instance v10, Landroid/app/Dialog;

    const v3, 0x1030010

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 488
    .local v10, "dialogOtp":Landroid/app/Dialog;
    const v3, 0x7f0300e3

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 490
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/privilege/MainActivity;->isRequestingOTP:Z

    .line 492
    const v3, 0x7f0c031e

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 493
    .local v17, "textOtpHeader":Landroid/widget/TextView;
    const v3, 0x7f0c031f

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 494
    .local v5, "editOtpPhoneNumber":Landroid/widget/EditText;
    const v3, 0x7f0c0321

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 495
    .local v18, "textOtpRequest":Landroid/widget/TextView;
    const v3, 0x7f0c0324

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    .line 496
    .local v12, "editOtpNumber":Landroid/widget/EditText;
    const v3, 0x7f0c0326

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 497
    .local v16, "textOtpCancel":Landroid/widget/TextView;
    const v3, 0x7f0c0328

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 499
    .local v19, "textOtpSubmit":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "fonts/kit55p.ttf"

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v13

    .line 500
    .local v13, "fontDefault":Landroid/graphics/Typeface;
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 501
    invoke-virtual {v5, v13}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 502
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 503
    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 504
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 505
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 514
    const v3, 0x7f0c0322

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 515
    .local v9, "textOtpRefCode":Landroid/widget/TextView;
    const v3, 0x7f0c0323

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 516
    .local v7, "layoutOtpNumber":Landroid/widget/RelativeLayout;
    const v3, 0x7f0c0320

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 517
    .local v6, "layoutOtpRequest":Landroid/widget/RelativeLayout;
    const v3, 0x7f0c0327

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 518
    .local v8, "layoutOtpSubmit":Landroid/widget/RelativeLayout;
    const v3, 0x7f0c0325

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout;

    .line 520
    .local v15, "layoutOtpCancel":Landroid/widget/RelativeLayout;
    new-instance v3, Lcom/samsung/privilege/MainActivity$2;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/samsung/privilege/MainActivity$2;-><init>(Lcom/samsung/privilege/MainActivity;Landroid/widget/EditText;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/app/Dialog;)V

    invoke-virtual {v6, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 658
    new-instance v3, Lcom/samsung/privilege/MainActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6}, Lcom/samsung/privilege/MainActivity$3;-><init>(Lcom/samsung/privilege/MainActivity;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 669
    new-instance v3, Lcom/samsung/privilege/MainActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v9, v12, v5}, Lcom/samsung/privilege/MainActivity$4;-><init>(Lcom/samsung/privilege/MainActivity;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v8, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 691
    new-instance v3, Lcom/samsung/privilege/MainActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v8}, Lcom/samsung/privilege/MainActivity$5;-><init>(Lcom/samsung/privilege/MainActivity;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v12, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 702
    new-instance v3, Lcom/samsung/privilege/MainActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v10}, Lcom/samsung/privilege/MainActivity$6;-><init>(Lcom/samsung/privilege/MainActivity;Landroid/app/Dialog;)V

    invoke-virtual {v15, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 714
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    .line 715
    .local v11, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x11

    iput v3, v11, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 716
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 718
    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    .line 720
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/MainActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v4, "OTP"

    invoke-virtual {v3, v4}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    .line 724
    .end local v5    # "editOtpPhoneNumber":Landroid/widget/EditText;
    .end local v6    # "layoutOtpRequest":Landroid/widget/RelativeLayout;
    .end local v7    # "layoutOtpNumber":Landroid/widget/RelativeLayout;
    .end local v8    # "layoutOtpSubmit":Landroid/widget/RelativeLayout;
    .end local v9    # "textOtpRefCode":Landroid/widget/TextView;
    .end local v10    # "dialogOtp":Landroid/app/Dialog;
    .end local v11    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v12    # "editOtpNumber":Landroid/widget/EditText;
    .end local v13    # "fontDefault":Landroid/graphics/Typeface;
    .end local v15    # "layoutOtpCancel":Landroid/widget/RelativeLayout;
    .end local v16    # "textOtpCancel":Landroid/widget/TextView;
    .end local v17    # "textOtpHeader":Landroid/widget/TextView;
    .end local v18    # "textOtpRequest":Landroid/widget/TextView;
    .end local v19    # "textOtpSubmit":Landroid/widget/TextView;
    :goto_f0
    return-void

    .line 722
    :cond_f1
    const/4 v3, 0x0

    const-string v4, ""

    const-string v20, ""

    const-string v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/samsung/privilege/MainActivity;->doLoginDevice(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 177
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 178
    iget-object v3, p0, Lcom/samsung/privilege/MainActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v3, p1, p2, p3}, Lcom/facebook/UiLifecycleHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 180
    const/4 v3, -0x1

    if-ne p2, v3, :cond_32

    if-nez p1, :cond_32

    .line 181
    const-string v3, "exit_app"

    invoke-virtual {p3, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 182
    .local v0, "exit_app":Z
    if-eqz v0, :cond_19

    .line 183
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->finish()V

    .line 185
    :cond_19
    const-string v3, "restart_app"

    invoke-virtual {p3, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 186
    .local v2, "restart_app":Z
    if-eqz v2, :cond_32

    .line 187
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v5}, Lcom/samsung/privilege/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 189
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->finish()V

    .line 192
    .end local v0    # "exit_app":Z
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "restart_app":Z
    :cond_32
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 95
    iget-object v6, p0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    const-string v7, "public void onCreate(Bundle savedInstanceState) {"

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/AppSetting;->NOTIFICATION_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/samsung/privilege/AppSetting;->APP_NOTIFICATION_ID:Ljava/lang/String;

    .line 100
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/MainActivity;->requestWindowFeature(I)Z

    .line 102
    sput-object p0, Lcom/samsung/privilege/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    .line 104
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lcom/samsung/privilege/MainActivity;->gHandler:Landroid/os/Handler;

    .line 106
    new-instance v6, Lcom/facebook/UiLifecycleHelper;

    iget-object v7, p0, Lcom/samsung/privilege/MainActivity;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-direct {v6, p0, v7}, Lcom/facebook/UiLifecycleHelper;-><init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V

    iput-object v6, p0, Lcom/samsung/privilege/MainActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    .line 107
    iget-object v6, p0, Lcom/samsung/privilege/MainActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v6, p1}, Lcom/facebook/UiLifecycleHelper;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const v6, 0x7f0300f9

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/MainActivity;->setContentView(I)V

    .line 113
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/MainActivity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 116
    iget-object v6, p0, Lcom/samsung/privilege/MainActivity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/privilege/AppSetting;->GA_TRACKING_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/MainActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 120
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 121
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    iget-object v6, p0, Lcom/samsung/privilege/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    const v7, 0x7f0c0358

    invoke-virtual {v1, v7}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v7

    aput-object v7, v6, v8

    .line 123
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    .line 124
    .local v5, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_64
    iget-object v6, p0, Lcom/samsung/privilege/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    array-length v6, v6

    if-lt v2, v6, :cond_96

    .line 127
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 129
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "token":Ljava/lang/String;
    if-eqz v4, :cond_157

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_157

    .line 131
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "campaign_id"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 132
    .local v0, "campaign_id":I
    if-lez v0, :cond_a0

    .line 133
    invoke-direct {p0, v0}, Lcom/samsung/privilege/MainActivity;->gotoCampaignDetail(I)V

    .line 158
    .end local v0    # "campaign_id":I
    :goto_95
    return-void

    .line 125
    .end local v4    # "token":Ljava/lang/String;
    :cond_96
    iget-object v6, p0, Lcom/samsung/privilege/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    .line 135
    .restart local v0    # "campaign_id":I
    .restart local v4    # "token":Ljava/lang/String;
    :cond_a0
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c2

    .line 136
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3, v8}, Lcom/samsung/privilege/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 138
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->finish()V

    goto :goto_95

    .line 140
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_c2
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/UserLogin;->GetFirstName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_13d

    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/UserLogin;->GetFirstName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13d

    .line 141
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/UserLogin;->GetLastName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_13d

    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/UserLogin;->GetLastName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13d

    .line 142
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/UserLogin;->GetBirthday(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_13d

    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/UserLogin;->GetBirthday(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13d

    .line 143
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/UserLogin;->GetGender(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_13d

    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/UserLogin;->GetGender(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13d

    .line 144
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3, v8}, Lcom/samsung/privilege/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 146
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->finish()V

    goto/16 :goto_95

    .line 148
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_13d
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/samsung/privilege/activity/RegisterActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v6, "msg_newbie"

    iget-object v7, p0, Lcom/samsung/privilege/MainActivity;->NewbieBadge:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    invoke-virtual {p0, v3}, Lcom/samsung/privilege/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 151
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->finish()V

    goto/16 :goto_95

    .line 156
    .end local v0    # "campaign_id":I
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_157
    iget-object v6, p0, Lcom/samsung/privilege/MainActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v7, "Login"

    invoke-virtual {v6, v7}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    goto/16 :goto_95
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 196
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 197
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onDestroy()V

    .line 198
    const v0, 0x7f0c007c

    invoke-static {p0, v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindReferences(Landroid/app/Activity;I)V

    .line 199
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 170
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 171
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onPause()V

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/MainActivity;->isResumed:Z

    .line 173
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    const-string v1, "public void onResume() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 164
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onResume()V

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/MainActivity;->isResumed:Z

    .line 166
    return-void
.end method

.method protected onResumeFragments()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 231
    iget-object v1, p0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    const-string v2, "protected void onResumeFragments() {"

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V

    .line 233
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 235
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 236
    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/privilege/MainActivity;->onSessionStateChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 241
    :goto_1f
    return-void

    .line 239
    :cond_20
    invoke-direct {p0, v3, v3}, Lcom/samsung/privilege/MainActivity;->showFragment(IZ)V

    goto :goto_1f
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 225
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 226
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/UiLifecycleHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 227
    return-void
.end method
