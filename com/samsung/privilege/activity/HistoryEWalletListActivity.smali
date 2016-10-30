.class public Lcom/samsung/privilege/activity/HistoryEWalletListActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "HistoryEWalletListActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/os/Handler;

.field private c:Landroid/app/ProgressDialog;

.field private d:Landroid/graphics/Typeface;

.field private e:Landroid/support/v7/widget/RecyclerView;

.field private f:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private g:Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:I


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

    iput-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->a:Ljava/lang/String;

    .line 70
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->h:Z

    .line 71
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->f:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;)Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->g:Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;

    return-object p1
.end method

.method private a(I)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 360
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->h:Z

    if-ne v0, v4, :cond_6

    .line 454
    :goto_5
    return-void

    .line 364
    :cond_6
    const-string/jumbo v0, ""

    const v1, 0x7f090281

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->c:Landroid/app/ProgressDialog;

    .line 367
    :try_start_16
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->c:Landroid/app/ProgressDialog;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 368
    if-eqz v0, :cond_41

    .line 369
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 370
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 371
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_41} :catch_d5

    .line 377
    :cond_41
    :goto_41
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "cardId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->V:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "card/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/history"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    if-lez p1, :cond_87

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?$skip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    :cond_87
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->a:Ljava/lang/String;

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

    .line 387
    iput-boolean v4, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->h:Z

    .line 388
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 389
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 390
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 391
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 392
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 393
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$6;-><init>(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;I)V

    .line 394
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_5

    .line 373
    :catch_d5
    move-exception v0

    goto/16 :goto_41
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;I)V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->b:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$1;-><init>(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;Z)Z
    .registers 2

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;I)I
    .registers 2

    .prologue
    .line 57
    iput p1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->k:I

    return p1
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)Z
    .registers 2

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;Z)Z
    .registers 2

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;I)I
    .registers 2

    .prologue
    .line 57
    iput p1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->l:I

    return p1
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)Z
    .registers 2

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->i:Z

    return v0
.end method

.method static synthetic d(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->k:I

    return v0
.end method

.method static synthetic d(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;I)I
    .registers 2

    .prologue
    .line 57
    iput p1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->j:I

    return p1
.end method

.method static synthetic e(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->j:I

    return v0
.end method

.method static synthetic f(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->l:I

    return v0
.end method

.method private f()V
    .registers 3

    .prologue
    .line 110
    const v0, 0x7f100160

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->e:Landroid/support/v7/widget/RecyclerView;

    .line 111
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->e:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 113
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->f:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 114
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->f:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 115
    return-void
.end method

.method static synthetic g(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->g:Lcom/samsung/privilege/activity/HistoryEWalletListActivity$HistoryAdapter;

    return-object v0
.end method

.method private g()V
    .registers 4

    .prologue
    .line 122
    const v0, 0x7f100111

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 123
    new-instance v1, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$2;-><init>(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 130
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->e:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$3;-><init>(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 146
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->e:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bzbs/event/RecyclerItemClickListener;

    new-instance v2, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$4;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity$4;-><init>(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)V

    invoke-direct {v1, p0, v2}, Lcom/bzbs/event/RecyclerItemClickListener;-><init>(Landroid/content/Context;Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 174
    return-void
.end method

.method static synthetic h(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->c:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic k(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)Landroid/support/v7/widget/RecyclerView;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->e:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic l(Lcom/samsung/privilege/activity/HistoryEWalletListActivity;)Landroid/graphics/Typeface;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->d:Landroid/graphics/Typeface;

    return-object v0
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->finish()V

    .line 119
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v0, 0x7f040036

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->setContentView(I)V

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->b:Landroid/os/Handler;

    .line 82
    const v0, 0x7f1000b5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

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

    iput-object v0, p0, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->d:Landroid/graphics/Typeface;

    .line 86
    invoke-direct {p0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->f()V

    .line 87
    invoke-direct {p0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->g()V

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

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;)V

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

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/HistoryEWalletListActivity;->a(I)V

    .line 97
    return-void
.end method
