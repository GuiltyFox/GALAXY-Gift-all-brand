.class public Lcom/samsung/privilege/activity/NotificationActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "NotificationActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/os/Handler;

.field private c:Landroid/graphics/Typeface;

.field private d:Landroid/support/v7/widget/RecyclerView;

.field private e:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private f:Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter;

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I


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

    iput-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity;->a:Ljava/lang/String;

    .line 51
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/NotificationActivity;->g:Z

    .line 52
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/NotificationActivity;->h:Z

    .line 54
    const/16 v0, 0x19

    iput v0, p0, Lcom/samsung/privilege/activity/NotificationActivity;->j:I

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/NotificationActivity;I)I
    .registers 2

    .prologue
    .line 38
    iput p1, p0, Lcom/samsung/privilege/activity/NotificationActivity;->i:I

    return p1
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/NotificationActivity;Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter;)Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter;
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/samsung/privilege/activity/NotificationActivity;->f:Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/NotificationActivity;)V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/samsung/privilege/activity/NotificationActivity;->h()V

    return-void
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/NotificationActivity;)Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity;->f:Lcom/samsung/privilege/activity/NotificationActivity$NotificationAdapter;

    return-object v0
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/NotificationActivity;)Landroid/support/v7/widget/RecyclerView;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity;->d:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic d(Lcom/samsung/privilege/activity/NotificationActivity;)Landroid/graphics/Typeface;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity;->c:Landroid/graphics/Typeface;

    return-object v0
.end method

.method private f()V
    .registers 3

    .prologue
    .line 96
    const v0, 0x7f100189

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity;->d:Landroid/support/v7/widget/RecyclerView;

    .line 97
    iget-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity;->d:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 99
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity;->e:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 100
    iget-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/NotificationActivity;->e:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 101
    return-void
.end method

.method private g()V
    .registers 3

    .prologue
    .line 104
    const v0, 0x7f10011d

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 105
    new-instance v1, Lcom/samsung/privilege/activity/NotificationActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/NotificationActivity$2;-><init>(Lcom/samsung/privilege/activity/NotificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 111
    return-void
.end method

.method private h()V
    .registers 5

    .prologue
    .line 140
    const v0, 0x7f10011d

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 141
    new-instance v1, Lcom/samsung/privilege/activity/NotificationActivity$5;

    invoke-direct {v1, p0, v0}, Lcom/samsung/privilege/activity/NotificationActivity$5;-><init>(Lcom/samsung/privilege/activity/NotificationActivity;Landroid/support/v4/widget/SwipeRefreshLayout;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 150
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f04003b

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/NotificationActivity;->setContentView(I)V

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity;->b:Landroid/os/Handler;

    .line 63
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/NotificationActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/NotificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/NotificationActivity;->c:Landroid/graphics/Typeface;

    .line 65
    invoke-direct {p0}, Lcom/samsung/privilege/activity/NotificationActivity;->f()V

    .line 66
    invoke-direct {p0}, Lcom/samsung/privilege/activity/NotificationActivity;->g()V

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

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;I)Z

    .line 83
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 74
    invoke-direct {p0}, Lcom/samsung/privilege/activity/NotificationActivity;->h()V

    .line 76
    return-void
.end method
