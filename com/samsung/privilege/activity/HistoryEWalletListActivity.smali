.class public Lcom/samsung/privilege/activity/HistoryEWalletListActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "HistoryEWalletListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private gDialog:Landroid/app/ProgressDialog;

.field private loading:Z

.field private mFont:Landroid/graphics/Typeface;

.field private mHandler:Landroid/os/Handler;

.field private mHistoryAdapter:Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;

.field private mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private mRecyclerHistory:Landroid/support/v7/widget/RecyclerView;

.field private out_of_data:Z

.field private pastVisiblesItems:I

.field private totalItemCount:I

.field private visibleItemCount:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 59
    const-class v0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->TAG:Ljava/lang/String;

    .line 70
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->loading:Z

    .line 71
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->out_of_data:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;I)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/HistoryEWalletListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->loadHistory(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    .prologue
    .line 57
    iget v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->visibleItemCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/HistoryEWalletListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->visibleItemCount:I

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->gDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)Landroid/support/v7/widget/RecyclerView;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->mRecyclerHistory:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/HistoryEWalletListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)Landroid/graphics/Typeface;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->mFont:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    .prologue
    .line 57
    iget v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->totalItemCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/HistoryEWalletListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->totalItemCount:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->loading:Z

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/HistoryEWalletListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->loading:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->out_of_data:Z

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/HistoryEWalletListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->out_of_data:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    .prologue
    .line 57
    iget v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->pastVisiblesItems:I

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/HistoryEWalletListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->pastVisiblesItems:I

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->mHistoryAdapter:Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;)Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/HistoryEWalletListActivity;
    .param p1, "x1"    # Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->mHistoryAdapter:Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;

    return-object p1
.end method

.method static synthetic access$800(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/HistoryEWalletListActivity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/privilege/activity/HistoryEWalletListActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->goBookingHistory(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private appInstalledOrNot(Ljava/lang/String;)Z
    .registers 6
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 178
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 180
    .local v0, "app_installed":Z
    const/4 v3, 0x1

    :try_start_6
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_9} :catch_b

    .line 181
    const/4 v0, 0x1

    .line 185
    :goto_a
    return v0

    .line 182
    :catch_b
    move-exception v1

    .line 183
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private bindingEvent()V
    .registers 5

    .prologue
    .line 122
    const v1, 0x7f100106

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 123
    .local v0, "swipeRefreshLayout":Landroid/support/v4/widget/SwipeRefreshLayout;
    new-instance v1, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$2;-><init>(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 130
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->mRecyclerHistory:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$3;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$3;-><init>(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 146
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->mRecyclerHistory:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/bzbs/event/RecyclerItemClickListener;

    new-instance v3, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$4;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$4;-><init>(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)V

    invoke-direct {v2, p0, v3}, Lcom/bzbs/event/RecyclerItemClickListener;-><init>(Landroid/content/Context;Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 174
    return-void
.end method

.method private getPurchaseItem(Ljava/lang/String;Z)V
    .registers 10
    .param p1, "strRedeemKey"    # Ljava/lang/String;
    .param p2, "isRefreshData"    # Z

    .prologue
    const/4 v6, 0x1

    .line 189
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "strTokenBuzzeBees":Ljava/lang/String;
    if-eqz v1, :cond_73

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_73

    .line 191
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

    .line 192
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->TAG:Ljava/lang/String;

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

    .line 196
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 197
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    const-string/jumbo v3, ""

    const v4, 0x7f09026e

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4, v6, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 198
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$5;

    invoke-direct {v4, p0, p1, p2}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$5;-><init>(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;Ljava/lang/String;Z)V

    invoke-virtual {v0, v3, v2, v4}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 326
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
    .line 329
    if-eqz p1, :cond_ac

    const-string/jumbo v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ac

    .line 331
    move-object v2, p1

    .line 334
    .local v2, "url":Ljava/lang/String;
    :try_start_c
    new-instance v0, Lcom/bzbs/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 335
    .local v0, "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    const-string/jumbo v3, "<deviceId>"

    invoke-static {}, Lcheat/FoxCore;->ranImei()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 336
    const-string/jumbo v3, "<uid>"

    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/Profile;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2e} :catch_e2

    move-result-object v2

    .line 341
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

    .line 342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 344
    :cond_55
    const-string/jumbo v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 345
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

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getApplicationContext()Landroid/content/Context;

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

    .line 350
    :goto_90
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/samsung/privilege/activity/WebViewBookingActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 351
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    const-string/jumbo v3, "enable_webview_back"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 353
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 358
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "url":Ljava/lang/String;
    :cond_ac
    :goto_ac
    return-void

    .line 347
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

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getApplicationContext()Landroid/content/Context;

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

    .line 354
    :catch_e0
    move-exception v3

    goto :goto_ac

    .line 337
    :catch_e2
    move-exception v3

    goto/16 :goto_2f
.end method

.method private initialLayout()V
    .registers 3

    .prologue
    .line 110
    const v0, 0x7f10014c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->mRecyclerHistory:Landroid/support/v7/widget/RecyclerView;

    .line 111
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->mRecyclerHistory:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 113
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 114
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->mRecyclerHistory:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 115
    return-void
.end method

.method private loadHistory(I)V
    .registers 11
    .param p1, "skip"    # I

    .prologue
    const/4 v8, 0x1

    .line 361
    iget-boolean v5, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->loading:Z

    if-ne v5, v8, :cond_6

    .line 452
    :goto_5
    return-void

    .line 365
    :cond_6
    const-string/jumbo v5, ""

    const v6, 0x7f09026e

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6, v8, v8}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 368
    :try_start_16
    iget-object v5, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->gDialog:Landroid/app/ProgressDialog;

    const v6, 0x102000b

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 369
    .local v3, "mMessageView":Landroid/widget/TextView;
    if-eqz v3, :cond_41

    .line 370
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 371
    .local v2, "font":Landroid/graphics/Typeface;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 372
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_41} :catch_d5

    .line 378
    .end local v2    # "font":Landroid/graphics/Typeface;
    .end local v3    # "mMessageView":Landroid/widget/TextView;
    :cond_41
    :goto_41
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "cardId"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "cardId":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/bzbs/data/AppSetting;->API_URL_WALLET:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "api/card/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/history"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 380
    .local v4, "url":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "?token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/UserLogin;->GetTokenWallet(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 382
    if-lez p1, :cond_a7

    .line 383
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "&$skip="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 386
    :cond_a7
    new-instance v1, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 387
    .local v1, "client":Lcom/loopj/android/http/AsyncHttpClient;
    iget-object v5, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "url="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iput-boolean v8, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->loading:Z

    .line 389
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$6;

    invoke-direct {v6, p0, p1}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$6;-><init>(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;I)V

    invoke-virtual {v1, v5, v4, v6}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    goto/16 :goto_5

    .line 374
    .end local v0    # "cardId":Ljava/lang/String;
    .end local v1    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v4    # "url":Ljava/lang/String;
    :catch_d5
    move-exception v5

    goto/16 :goto_41
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$1;-><init>(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    return-void
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->finish()V

    .line 119
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v0, 0x7f040032

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->setContentView(I)V

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->mHandler:Landroid/os/Handler;

    .line 82
    const v0, 0x7f1000b6

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 84
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "fonts/kit55p.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->mFont:Landroid/graphics/Typeface;

    .line 86
    invoke-direct {p0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->initialLayout()V

    .line 87
    invoke-direct {p0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->bindingEvent()V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet History "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "Issuer"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsScreen(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 94
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->loadHistory(I)V

    .line 97
    return-void
.end method
