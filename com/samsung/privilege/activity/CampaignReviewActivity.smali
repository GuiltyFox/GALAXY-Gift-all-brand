.class public Lcom/samsung/privilege/activity/CampaignReviewActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CampaignReviewActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/bzbs/bean/Campaign;

.field private c:Landroid/os/Handler;

.field private d:Landroid/app/ProgressDialog;

.field private e:Landroid/graphics/Typeface;

.field private f:Landroid/support/v7/widget/RecyclerView;

.field private g:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private h:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:I


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

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->a:Ljava/lang/String;

    .line 71
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->i:Z

    .line 72
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->j:Z

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->g:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/CampaignReviewActivity;Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;)Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;
    .registers 2

    .prologue
    .line 56
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->h:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;

    return-object p1
.end method

.method private a(I)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 334
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->i:Z

    if-ne v0, v4, :cond_6

    .line 432
    :goto_5
    return-void

    .line 338
    :cond_6
    const-string/jumbo v0, ""

    const v1, 0x7f090281

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->d:Landroid/app/ProgressDialog;

    .line 341
    :try_start_16
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->d:Landroid/app/ProgressDialog;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 342
    if-eqz v0, :cond_41

    .line 343
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 344
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 345
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_41} :catch_ca

    .line 356
    :cond_41
    :goto_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/campaign/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->b:Lcom/bzbs/bean/Campaign;

    iget-object v1, v1, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/buzz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?format=json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    if-lez p1, :cond_7c

    .line 364
    :cond_7c
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iput-boolean v4, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->i:Z

    .line 366
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 367
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 368
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 369
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 370
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 371
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/CampaignReviewActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/CampaignReviewActivity$6;-><init>(Lcom/samsung/privilege/activity/CampaignReviewActivity;I)V

    .line 372
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 431
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_5

    .line 347
    :catch_ca
    move-exception v0

    goto/16 :goto_41
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/CampaignReviewActivity;I)V
    .registers 2

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/CampaignReviewActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->c:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignReviewActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/CampaignReviewActivity$1;-><init>(Lcom/samsung/privilege/activity/CampaignReviewActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/CampaignReviewActivity;Z)Z
    .registers 2

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/CampaignReviewActivity;I)I
    .registers 2

    .prologue
    .line 56
    iput p1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->l:I

    return p1
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Z
    .registers 2

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/CampaignReviewActivity;Z)Z
    .registers 2

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->i:Z

    return p1
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/CampaignReviewActivity;I)I
    .registers 2

    .prologue
    .line 56
    iput p1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->m:I

    return p1
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Z
    .registers 2

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->j:Z

    return v0
.end method

.method static synthetic d(Lcom/samsung/privilege/activity/CampaignReviewActivity;)I
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->l:I

    return v0
.end method

.method static synthetic d(Lcom/samsung/privilege/activity/CampaignReviewActivity;I)I
    .registers 2

    .prologue
    .line 56
    iput p1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->k:I

    return p1
.end method

.method static synthetic e(Lcom/samsung/privilege/activity/CampaignReviewActivity;)I
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->k:I

    return v0
.end method

.method static synthetic f(Lcom/samsung/privilege/activity/CampaignReviewActivity;)I
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->m:I

    return v0
.end method

.method private f()V
    .registers 3

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "campaign"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/Campaign;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->b:Lcom/bzbs/bean/Campaign;

    .line 108
    return-void
.end method

.method static synthetic g(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->h:Lcom/samsung/privilege/activity/CampaignReviewActivity$ReviewAdapter;

    return-object v0
.end method

.method private g()V
    .registers 3

    .prologue
    .line 111
    const v0, 0x7f100112

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->f:Landroid/support/v7/widget/RecyclerView;

    .line 112
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->f:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 114
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->g:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 115
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->f:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->g:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 116
    return-void
.end method

.method static synthetic h(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method private h()V
    .registers 4

    .prologue
    .line 119
    const v0, 0x7f100111

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 120
    new-instance v1, Lcom/samsung/privilege/activity/CampaignReviewActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity$2;-><init>(Lcom/samsung/privilege/activity/CampaignReviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 127
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->f:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignReviewActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity$3;-><init>(Lcom/samsung/privilege/activity/CampaignReviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 143
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->f:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bzbs/event/RecyclerItemClickListener;

    new-instance v2, Lcom/samsung/privilege/activity/CampaignReviewActivity$4;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity$4;-><init>(Lcom/samsung/privilege/activity/CampaignReviewActivity;)V

    invoke-direct {v1, p0, v2}, Lcom/bzbs/event/RecyclerItemClickListener;-><init>(Landroid/content/Context;Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 156
    return-void
.end method

.method static synthetic i(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->d:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic k(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Landroid/support/v7/widget/RecyclerView;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->f:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 760
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->finish()V

    .line 761
    return-void
.end method

.method public doReview(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->b:Lcom/bzbs/bean/Campaign;

    invoke-static {p0, v0, v1}, Lcom/bzbs/marketplace/dialog/util/DialogUtils;->a(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/bean/Campaign;)V

    .line 769
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v0, 0x7f040027

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->setContentView(I)V

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->c:Landroid/os/Handler;

    .line 82
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "fonts/kit55p.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity;->e:Landroid/graphics/Typeface;

    .line 84
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->f()V

    .line 85
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->g()V

    .line 86
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->h()V

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

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->a(I)V

    .line 94
    return-void
.end method
