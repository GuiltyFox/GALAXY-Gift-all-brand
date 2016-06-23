.class public Lcom/samsung/privilege/activity/NotificationActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "NotificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter;
    }
.end annotation


# instance fields
.field private ITEMS_PER_PAGE:I

.field private TAG:Ljava/lang/String;

.field private gDialog:Landroid/app/ProgressDialog;

.field private loading:Z

.field private mFont:Landroid/graphics/Typeface;

.field private mHandler:Landroid/os/Handler;

.field private mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private mNotificationAdapter:Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter;

.field private mRecyclerNotification:Landroid/support/v7/widget/RecyclerView;

.field private out_of_data:Z

.field private pastVisiblesItems:I

.field private totalItemCount:I

.field private visibleItemCount:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 40
    const-class v0, Lcom/samsung/privilege/activity/NotificationActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity;->TAG:Ljava/lang/String;

    .line 51
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/NotificationActivity;->loading:Z

    .line 52
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/NotificationActivity;->out_of_data:Z

    .line 54
    const/16 v0, 0x19

    iput v0, p0, Lcom/samsung/privilege/activity/NotificationActivity;->ITEMS_PER_PAGE:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/privilege/activity/NotificationActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/privilege/activity/NotificationActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/samsung/privilege/activity/NotificationActivity;->loadNotificationPush()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/privilege/activity/NotificationActivity;I)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/NotificationActivity;
    .param p1, "x1"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/NotificationActivity;->loadNotificationPull(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/privilege/activity/NotificationActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/NotificationActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/privilege/activity/NotificationActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/NotificationActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity;->gDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/privilege/activity/NotificationActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/NotificationActivity;

    .prologue
    .line 38
    iget v0, p0, Lcom/samsung/privilege/activity/NotificationActivity;->ITEMS_PER_PAGE:I

    return v0
.end method

.method static synthetic access$1300(Lcom/samsung/privilege/activity/NotificationActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/NotificationActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/NotificationActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/privilege/activity/NotificationActivity;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/NotificationActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/privilege/activity/NotificationActivity;)Landroid/graphics/Typeface;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/NotificationActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity;->mFont:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/privilege/activity/NotificationActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/NotificationActivity;

    .prologue
    .line 38
    iget v0, p0, Lcom/samsung/privilege/activity/NotificationActivity;->visibleItemCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/privilege/activity/NotificationActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/NotificationActivity;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/samsung/privilege/activity/NotificationActivity;->visibleItemCount:I

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/privilege/activity/NotificationActivity;)Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/NotificationActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/privilege/activity/NotificationActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/NotificationActivity;

    .prologue
    .line 38
    iget v0, p0, Lcom/samsung/privilege/activity/NotificationActivity;->totalItemCount:I

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/privilege/activity/NotificationActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/NotificationActivity;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/samsung/privilege/activity/NotificationActivity;->totalItemCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/privilege/activity/NotificationActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/NotificationActivity;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/NotificationActivity;->loading:Z

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/privilege/activity/NotificationActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/NotificationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/NotificationActivity;->loading:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/privilege/activity/NotificationActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/NotificationActivity;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/NotificationActivity;->out_of_data:Z

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/privilege/activity/NotificationActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/NotificationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/NotificationActivity;->out_of_data:Z

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/privilege/activity/NotificationActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/NotificationActivity;

    .prologue
    .line 38
    iget v0, p0, Lcom/samsung/privilege/activity/NotificationActivity;->pastVisiblesItems:I

    return v0
.end method

.method static synthetic access$702(Lcom/samsung/privilege/activity/NotificationActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/NotificationActivity;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/samsung/privilege/activity/NotificationActivity;->pastVisiblesItems:I

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/privilege/activity/NotificationActivity;)Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/NotificationActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity;->mNotificationAdapter:Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter;

    return-object v0
.end method

.method static synthetic access$802(Lcom/samsung/privilege/activity/NotificationActivity;Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter;)Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/NotificationActivity;
    .param p1, "x1"    # Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/samsung/privilege/activity/NotificationActivity;->mNotificationAdapter:Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter;

    return-object p1
.end method

.method static synthetic access$900(Lcom/samsung/privilege/activity/NotificationActivity;)Landroid/support/v7/widget/RecyclerView;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/NotificationActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity;->mRecyclerNotification:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private bindingEventNotificationPull()V
    .registers 4

    .prologue
    .line 114
    const v1, 0x7f100107

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 115
    .local v0, "swipeRefreshLayout":Landroid/support/v4/widget/SwipeRefreshLayout;
    new-instance v1, Lcom/samsung/privilege/activity/NotificationActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/NotificationActivity$3;-><init>(Lcom/samsung/privilege/activity/NotificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 122
    iget-object v1, p0, Lcom/samsung/privilege/activity/NotificationActivity;->mRecyclerNotification:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/samsung/privilege/activity/NotificationActivity$4;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/NotificationActivity$4;-><init>(Lcom/samsung/privilege/activity/NotificationActivity;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 137
    return-void
.end method

.method private bindingEventNotificationPush()V
    .registers 3

    .prologue
    .line 104
    const v1, 0x7f100107

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 105
    .local v0, "swipeRefreshLayout":Landroid/support/v4/widget/SwipeRefreshLayout;
    new-instance v1, Lcom/samsung/privilege/activity/NotificationActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/NotificationActivity$2;-><init>(Lcom/samsung/privilege/activity/NotificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 111
    return-void
.end method

.method private initialLayout()V
    .registers 3

    .prologue
    .line 96
    const v0, 0x7f100177

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity;->mRecyclerNotification:Landroid/support/v7/widget/RecyclerView;

    .line 97
    iget-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity;->mRecyclerNotification:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 99
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 100
    iget-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity;->mRecyclerNotification:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/NotificationActivity;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 101
    return-void
.end method

.method private loadNotificationPull(I)V
    .registers 10
    .param p1, "skip"    # I

    .prologue
    const/4 v7, 0x1

    .line 153
    iget-boolean v4, p0, Lcom/samsung/privilege/activity/NotificationActivity;->loading:Z

    if-ne v4, v7, :cond_6

    .line 247
    :goto_5
    return-void

    .line 157
    :cond_6
    const-string/jumbo v4, ""

    const v5, 0x7f09026f

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/NotificationActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5, v7, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/NotificationActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 160
    :try_start_16
    iget-object v4, p0, Lcom/samsung/privilege/activity/NotificationActivity;->gDialog:Landroid/app/ProgressDialog;

    const v5, 0x102000b

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 161
    .local v2, "mMessageView":Landroid/widget/TextView;
    if-eqz v2, :cond_41

    .line 162
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/NotificationActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/NotificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 163
    .local v1, "font":Landroid/graphics/Typeface;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 164
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/NotificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_41} :catch_d6

    .line 171
    .end local v1    # "font":Landroid/graphics/Typeface;
    .end local v2    # "mMessageView":Landroid/widget/TextView;
    :cond_41
    :goto_41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "api/noti"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 172
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

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/NotificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 175
    const-string/jumbo v3, "http://api.buzzebees.com/api/noti?format=json&token=.rYehwp3YEGMXJO7feQiEOln7XAbbmlBJdeaxxDPf8oCQeIas6aGknLNMIS2R-WMYGGOoQG5qcHMHs1qtcXQsVeY4Rl9Oy4xLZfyc0itI7J_96stK4FjjKOTiZhiJ7jHb"

    .line 177
    if-lez p1, :cond_a8

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&$skip="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 181
    :cond_a8
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 182
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    iget-object v4, p0, Lcom/samsung/privilege/activity/NotificationActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loadNotificationPull="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iput-boolean v7, p0, Lcom/samsung/privilege/activity/NotificationActivity;->loading:Z

    .line 184
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/NotificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/samsung/privilege/activity/NotificationActivity$6;

    invoke-direct {v5, p0, p1}, Lcom/samsung/privilege/activity/NotificationActivity$6;-><init>(Lcom/samsung/privilege/activity/NotificationActivity;I)V

    invoke-virtual {v0, v4, v3, v5}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    goto/16 :goto_5

    .line 166
    .end local v0    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v3    # "url":Ljava/lang/String;
    :catch_d6
    move-exception v4

    goto/16 :goto_41
.end method

.method private loadNotificationPush()V
    .registers 5

    .prologue
    .line 140
    const v1, 0x7f100107

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 141
    .local v0, "swipeRefreshLayout":Landroid/support/v4/widget/SwipeRefreshLayout;
    new-instance v1, Lcom/samsung/privilege/activity/NotificationActivity$5;

    invoke-direct {v1, p0, v0}, Lcom/samsung/privilege/activity/NotificationActivity$5;-><init>(Lcom/samsung/privilege/activity/NotificationActivity;Landroid/support/v4/widget/SwipeRefreshLayout;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 150
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/NotificationActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/NotificationActivity$1;-><init>(Lcom/samsung/privilege/activity/NotificationActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f040039

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/NotificationActivity;->setContentView(I)V

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity;->mHandler:Landroid/os/Handler;

    .line 63
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/NotificationActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/NotificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity;->mFont:Landroid/graphics/Typeface;

    .line 65
    invoke-direct {p0}, Lcom/samsung/privilege/activity/NotificationActivity;->initialLayout()V

    .line 66
    invoke-direct {p0}, Lcom/samsung/privilege/activity/NotificationActivity;->bindingEventNotificationPush()V

    .line 68
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 80
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 82
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/NotificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->SetNotificationUnReadCount(Landroid/content/Context;I)Z

    .line 83
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 74
    invoke-direct {p0}, Lcom/samsung/privilege/activity/NotificationActivity;->loadNotificationPush()V

    .line 76
    return-void
.end method
