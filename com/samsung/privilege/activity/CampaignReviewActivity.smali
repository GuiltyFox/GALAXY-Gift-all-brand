.class public Lcom/samsung/privilege/activity/CampaignReviewActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CampaignReviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private gDialog:Landroid/app/ProgressDialog;

.field private loading:Z

.field private mFont:Landroid/graphics/Typeface;

.field private mHandler:Landroid/os/Handler;

.field private mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private mRecyclerHistory:Landroid/support/v7/widget/RecyclerView;

.field private mReviewAdapter:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;

.field private out_of_data:Z

.field private paramCampaign:Lcom/bzbs/bean/Campaign;

.field private pastVisiblesItems:I

.field private totalItemCount:I

.field private visibleItemCount:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 58
    const-class v0, Lcom/samsung/privilege/activity/CampaignReviewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->TAG:Ljava/lang/String;

    .line 71
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->loading:Z

    .line 72
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->out_of_data:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/privilege/activity/CampaignReviewActivity;I)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignReviewActivity;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->loadCampaignReview(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/privilege/activity/CampaignReviewActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignReviewActivity;

    .prologue
    .line 56
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->visibleItemCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignReviewActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/privilege/activity/CampaignReviewActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignReviewActivity;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->visibleItemCount:I

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignReviewActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->gDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Landroid/support/v7/widget/RecyclerView;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignReviewActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->mRecyclerHistory:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/privilege/activity/CampaignReviewActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignReviewActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignReviewActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/privilege/activity/CampaignReviewActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignReviewActivity;

    .prologue
    .line 56
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->totalItemCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/privilege/activity/CampaignReviewActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignReviewActivity;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->totalItemCount:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignReviewActivity;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->loading:Z

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/privilege/activity/CampaignReviewActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignReviewActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->loading:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignReviewActivity;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->out_of_data:Z

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/privilege/activity/CampaignReviewActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignReviewActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->out_of_data:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/privilege/activity/CampaignReviewActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignReviewActivity;

    .prologue
    .line 56
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->pastVisiblesItems:I

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/privilege/activity/CampaignReviewActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignReviewActivity;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->pastVisiblesItems:I

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignReviewActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->mReviewAdapter:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/privilege/activity/CampaignReviewActivity;Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;)Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignReviewActivity;
    .param p1, "x1"    # Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->mReviewAdapter:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;

    return-object p1
.end method

.method static synthetic access$800(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignReviewActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/privilege/activity/CampaignReviewActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignReviewActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->goBookingHistory(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private appInstalledOrNot(Ljava/lang/String;)Z
    .registers 6
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 160
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 162
    .local v0, "app_installed":Z
    const/4 v3, 0x1

    :try_start_6
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_9} :catch_b

    .line 163
    const/4 v0, 0x1

    .line 167
    :goto_a
    return v0

    .line 164
    :catch_b
    move-exception v1

    .line 165
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private bindingEvent()V
    .registers 5

    .prologue
    .line 119
    const v1, 0x7f100106

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 120
    .local v0, "swipeRefreshLayout":Landroid/support/v4/widget/SwipeRefreshLayout;
    new-instance v1, Lcom/samsung/privilege/activity/CampaignReviewActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity$2;-><init>(Lcom/samsung/privilege/activity/CampaignReviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 127
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->mRecyclerHistory:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/samsung/privilege/activity/CampaignReviewActivity$3;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity$3;-><init>(Lcom/samsung/privilege/activity/CampaignReviewActivity;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 143
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->mRecyclerHistory:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/bzbs/event/RecyclerItemClickListener;

    new-instance v3, Lcom/samsung/privilege/activity/CampaignReviewActivity$4;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity$4;-><init>(Lcom/samsung/privilege/activity/CampaignReviewActivity;)V

    invoke-direct {v2, p0, v3}, Lcom/bzbs/event/RecyclerItemClickListener;-><init>(Landroid/content/Context;Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 156
    return-void
.end method

.method private getPurchaseItem(Ljava/lang/String;)V
    .registers 9
    .param p1, "strRedeemKey"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 171
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "strTokenBuzzeBees":Ljava/lang/String;
    if-eqz v1, :cond_73

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_73

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "api/redeem/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "?token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(getPurchaseItem) url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 179
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    const-string/jumbo v3, ""

    const v4, 0x7f09026e

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4, v6, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 180
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/samsung/privilege/activity/CampaignReviewActivity$5;

    invoke-direct {v4, p0, p1}, Lcom/samsung/privilege/activity/CampaignReviewActivity$5;-><init>(Lcom/samsung/privilege/activity/CampaignReviewActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v2, v4}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 300
    .end local v0    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v2    # "url":Ljava/lang/String;
    :cond_73
    return-void
.end method

.method private goBookingHistory(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "urlWebsite"    # Ljava/lang/String;
    .param p2, "redeem_key"    # Ljava/lang/String;

    .prologue
    .line 303
    if-eqz p1, :cond_ac

    const-string/jumbo v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ac

    .line 305
    move-object v2, p1

    .line 308
    .local v2, "url":Ljava/lang/String;
    :try_start_c
    new-instance v0, Lcom/bzbs/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 309
    .local v0, "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    const-string/jumbo v3, "<deviceId>"

    invoke-static {}, Lcheat/FoxCore;->ranImei()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 310
    const-string/jumbo v3, "<uid>"

    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/Profile;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2e} :catch_e2

    move-result-object v2

    .line 315
    .end local v0    # "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    :goto_2f
    :try_start_2f
    const-string/jumbo v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_55

    const-string/jumbo v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_55

    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 318
    :cond_55
    const-string/jumbo v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&redeem_key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&return_url=bzbs_return_url&cancel_url=bzbs_cancel_url"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 324
    :goto_90
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/samsung/privilege/activity/WebViewBookingActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 325
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const-string/jumbo v3, "enable_webview_back"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 327
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 332
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "url":Ljava/lang/String;
    :cond_ac
    :goto_ac
    return-void

    .line 321
    .restart local v2    # "url":Ljava/lang/String;
    :cond_ad
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "?redeem_key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&return_url=bzbs_return_url&cancel_url=bzbs_cancel_url"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_de} :catch_e0

    move-result-object v2

    goto :goto_90

    .line 328
    :catch_e0
    move-exception v3

    goto :goto_ac

    .line 311
    :catch_e2
    move-exception v3

    goto/16 :goto_2f
.end method

.method private initialLayout()V
    .registers 3

    .prologue
    .line 111
    const v0, 0x7f100107

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->mRecyclerHistory:Landroid/support/v7/widget/RecyclerView;

    .line 112
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->mRecyclerHistory:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 114
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 115
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->mRecyclerHistory:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 116
    return-void
.end method

.method private initialParam()V
    .registers 3

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "campaign"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/Campaign;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    .line 108
    return-void
.end method

.method private loadCampaignReview(I)V
    .registers 10
    .param p1, "skip"    # I

    .prologue
    const/4 v7, 0x1

    .line 335
    iget-boolean v4, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->loading:Z

    if-ne v4, v7, :cond_6

    .line 418
    :goto_5
    return-void

    .line 339
    :cond_6
    const-string/jumbo v4, ""

    const v5, 0x7f09026e

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5, v7, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 342
    :try_start_16
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->gDialog:Landroid/app/ProgressDialog;

    const v5, 0x102000b

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 343
    .local v2, "mMessageView":Landroid/widget/TextView;
    if-eqz v2, :cond_41

    .line 344
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 345
    .local v1, "font":Landroid/graphics/Typeface;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 346
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_41} :catch_ca

    .line 357
    .end local v1    # "font":Landroid/graphics/Typeface;
    .end local v2    # "mMessageView":Landroid/widget/TextView;
    :cond_41
    :goto_41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "api/campaign/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v5, v5, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/buzz"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 358
    .local v3, "url":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "?format=json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 359
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 361
    if-lez p1, :cond_9c

    .line 365
    :cond_9c
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 366
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "url="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iput-boolean v7, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->loading:Z

    .line 368
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/samsung/privilege/activity/CampaignReviewActivity$6;

    invoke-direct {v5, p0, p1}, Lcom/samsung/privilege/activity/CampaignReviewActivity$6;-><init>(Lcom/samsung/privilege/activity/CampaignReviewActivity;I)V

    invoke-virtual {v0, v4, v3, v5}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    goto/16 :goto_5

    .line 348
    .end local v0    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v3    # "url":Ljava/lang/String;
    :catch_ca
    move-exception v4

    goto/16 :goto_41
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignReviewActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/CampaignReviewActivity$1;-><init>(Lcom/samsung/privilege/activity/CampaignReviewActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    return-void
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->finish()V

    .line 745
    return-void
.end method

.method public doReview(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    invoke-static {p0, v0, v1}, Lcom/bzbs/marketplace/dialog/util/DialogUtils;->getDialogReviewGift(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/bean/Campaign;)V

    .line 753
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v0, 0x7f040023

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->setContentView(I)V

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->mHandler:Landroid/os/Handler;

    .line 82
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "fonts/kit55p.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->mFont:Landroid/graphics/Typeface;

    .line 84
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->initialParam()V

    .line 85
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->initialLayout()V

    .line 86
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->bindingEvent()V

    .line 87
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 91
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->loadCampaignReview(I)V

    .line 94
    return-void
.end method
