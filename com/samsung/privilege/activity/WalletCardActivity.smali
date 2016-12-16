.class public Lcom/samsung/privilege/activity/WalletCardActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "WalletCardActivity.java"


# static fields
.field private static aF:Z

.field private static aG:Z

.field private static ao:Ljava/lang/String;


# instance fields
.field A:Landroid/widget/TextView;

.field B:Landroid/widget/TextView;

.field C:Landroid/widget/RelativeLayout;

.field D:Landroid/widget/ScrollView;

.field public E:Landroid/widget/LinearLayout;

.field public F:Landroid/widget/LinearLayout;

.field public G:Landroid/widget/LinearLayout;

.field H:Landroid/widget/TextView;

.field I:Landroid/widget/TextView;

.field J:Landroid/widget/TextView;

.field public K:Landroid/widget/TextView;

.field public L:Landroid/widget/TextView;

.field public M:Landroid/widget/TextView;

.field N:Landroid/widget/TextView;

.field O:Landroid/widget/TextView;

.field P:Landroid/widget/ProgressBar;

.field Q:Landroid/widget/ImageView;

.field R:Landroid/widget/TextView;

.field S:Landroid/widget/TextView;

.field T:Landroid/widget/RelativeLayout;

.field U:Landroid/widget/TextView;

.field protected V:Landroid/os/CountDownTimer;

.field W:Landroid/widget/ImageView;

.field X:Landroid/widget/TextView;

.field Y:Landroid/widget/LinearLayout;

.field Z:Landroid/widget/TextView;

.field a:Landroid/widget/ProgressBar;

.field private aA:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

.field private aB:I

.field private aC:Z

.field private aD:Z

.field private aE:Z

.field private aH:Ljava/lang/String;

.field private aI:Z

.field private aJ:Z

.field private aK:Z

.field aa:Landroid/widget/TextView;

.field ab:Landroid/widget/TextView;

.field ac:Landroid/widget/LinearLayout;

.field ad:Landroid/widget/LinearLayout;

.field ae:Landroid/widget/ImageView;

.field af:Landroid/widget/LinearLayout;

.field ag:Landroid/widget/LinearLayout;

.field public ah:Landroid/widget/RelativeLayout;

.field ai:Landroid/widget/TextView;

.field public aj:Landroid/widget/RelativeLayout;

.field ak:Landroid/widget/RelativeLayout;

.field al:Landroid/widget/RelativeLayout;

.field am:Landroid/widget/RelativeLayout;

.field an:Landroid/widget/LinearLayout;

.field private ap:Landroid/os/Handler;

.field private aq:Landroid/app/ProgressDialog;

.field private ar:Lcom/facebook/CallbackManager;

.field private as:Lcom/bzbs/bean/DashboardItem;

.field private at:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private au:Landroid/support/v7/widget/RecyclerView;

.field private av:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

.field private aw:Landroid/support/v7/widget/RecyclerView;

.field private ax:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

.field private ay:Landroid/support/v7/widget/RecyclerView;

.field private az:Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/LinearLayout;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/RelativeLayout;

.field f:Landroid/widget/RelativeLayout;

.field g:Landroid/widget/LinearLayout;

.field h:Landroid/widget/LinearLayout;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field k:Landroid/widget/TextView;

.field l:Landroid/widget/ProgressBar;

.field m:Landroid/widget/ImageView;

.field n:Landroid/widget/RelativeLayout;

.field o:Landroid/widget/TextView;

.field p:Landroid/widget/ProgressBar;

.field q:Landroid/widget/ImageView;

.field r:Landroid/widget/RelativeLayout;

.field s:Landroid/widget/TextView;

.field t:Landroid/widget/ProgressBar;

.field u:Landroid/widget/ImageView;

.field v:Landroid/widget/RelativeLayout;

.field w:Landroid/widget/TextView;

.field x:Landroid/widget/ProgressBar;

.field y:Landroid/widget/ImageView;

.field z:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 93
    const-class v0, Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/activity/WalletCardActivity;->ao:Ljava/lang/String;

    .line 1193
    sput-boolean v1, Lcom/samsung/privilege/activity/WalletCardActivity;->aF:Z

    .line 1395
    sput-boolean v1, Lcom/samsung/privilege/activity/WalletCardActivity;->aG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    .line 120
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aB:I

    .line 200
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aC:Z

    .line 228
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aD:Z

    .line 229
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aE:Z

    .line 1666
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aH:Ljava/lang/String;

    .line 1667
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aI:Z

    .line 1989
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aJ:Z

    .line 2306
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aK:Z

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WalletCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aq:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ap:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WalletCardActivity;Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;)Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->av:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WalletCardActivity;Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;)Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ax:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WalletCardActivity;Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;)Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->az:Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;

    return-object p1
.end method

.method private a(I)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 1991
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aJ:Z

    if-ne v0, v4, :cond_9

    .line 2115
    :goto_8
    return-void

    .line 1995
    :cond_9
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1996
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ak:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1997
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->al:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1998
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->am:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1999
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->an:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2001
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->av:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    if-eqz v0, :cond_32

    .line 2002
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->av:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2003
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->av:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->notifyDataSetChanged()V

    .line 2006
    :cond_32
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ap:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$25;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$25;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/campaign"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2016
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?device_app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2017
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&byConfig=true&config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_promotion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2018
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2019
    if-eqz v1, :cond_112

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_112

    .line 2025
    :goto_a1
    if-lez p1, :cond_bb

    .line 2026
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&$skip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2029
    :cond_bb
    sget-object v1, Lcom/samsung/privilege/activity/WalletCardActivity;->ao:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadPromotion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2030
    iput-boolean v4, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aJ:Z

    .line 2031
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 2032
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 2033
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v4, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 2034
    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 2035
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2036
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 2037
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$26;

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/samsung/privilege/activity/WalletCardActivity$26;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;JI)V

    .line 2038
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2114
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_8

    .line 2022
    :cond_112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&device_locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a1
.end method

.method private a(Landroid/view/View;Landroid/view/View;ZZ)V
    .registers 12

    .prologue
    .line 1480
    const v0, 0x7f05004c

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 1481
    new-instance v0, Lcom/samsung/privilege/activity/WalletCardActivity$20;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/WalletCardActivity$20;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Landroid/view/View;Landroid/view/View;ZZ)V

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1531
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 1532
    invoke-virtual {p1, v6}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1533
    invoke-virtual {p1, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1534
    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WalletCardActivity;I)V
    .registers 2

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/WalletCardActivity;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WalletCardActivity;Landroid/view/View;Landroid/view/View;ZZ)V
    .registers 5

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Landroid/view/View;Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;Ljava/lang/String;D)V
    .registers 6

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Ljava/lang/String;Ljava/lang/String;D)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 9

    .prologue
    const v6, 0x7f0903ad

    const v5, 0x7f090389

    const/4 v4, 0x4

    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 754
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 755
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->T:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 756
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 757
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->x:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 758
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 759
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 760
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 761
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->I:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 764
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->H:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->H:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 768
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->N:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_image_active:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 769
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->O:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_image_inactive:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 771
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->K:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-boolean v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_hide_tabbar:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_211

    .line 774
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 778
    :goto_66
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 779
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-boolean v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_disable_payment:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_218

    .line 780
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 781
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 782
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 783
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 784
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ah:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 793
    :goto_8b
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->I:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 796
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->L:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 797
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_233

    .line 798
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->I:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xc

    const/16 v3, 0x10

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 803
    :goto_e6
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_cardid_color:Ljava/lang/String;

    if-eqz v0, :cond_113

    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_cardid_color:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_113

    .line 804
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->I:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_cardid_color:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 805
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_cardid_color:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 807
    :cond_113
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_cardid_shadow:Ljava/lang/String;

    if-eqz v0, :cond_14c

    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_cardid_shadow:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14c

    .line 808
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->I:Landroid/widget/TextView;

    const/high16 v1, 0x3fc00000    # 1.5f

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-object v4, v4, Lcom/bzbs/bean/DashboardItem;->wallet_cardid_shadow:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 809
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->j:Landroid/widget/TextView;

    const/high16 v1, 0x3fc00000    # 1.5f

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-object v4, v4, Lcom/bzbs/bean/DashboardItem;->wallet_cardid_shadow:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 812
    :cond_14c
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->b(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_image_active:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 814
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->v(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 815
    if-eqz v0, :cond_23a

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23a

    .line 816
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->i:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 817
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->j:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 823
    :goto_1de
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->c:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$11;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$11;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 837
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$12;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$12;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1096
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->z:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$13;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$13;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1129
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ad:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$14;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$14;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1142
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->Y:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$15;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$15;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1154
    return-void

    .line 776
    :cond_211
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_66

    .line 786
    :cond_218
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 787
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 788
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 789
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 790
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ah:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_8b

    .line 800
    :cond_233
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->I:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e6

    .line 819
    :cond_23a
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->i:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " 0.00 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 820
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->j:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " 0.00 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1de
.end method

.method private a(Ljava/lang/String;I)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 1669
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aI:Z

    if-ne v0, v4, :cond_8

    .line 1782
    :goto_7
    return-void

    .line 1673
    :cond_8
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->x:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1674
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ak:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1675
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->al:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1676
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->am:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1677
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->an:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1679
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ax:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    if-eqz v0, :cond_31

    .line 1680
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ax:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1681
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ax:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;->notifyDataSetChanged()V

    .line 1685
    :cond_31
    :try_start_31
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aq:Landroid/app/ProgressDialog;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1686
    if-eqz v0, :cond_5c

    .line 1687
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 1688
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1689
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_5c} :catch_e5

    .line 1695
    :cond_5c
    :goto_5c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->V:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "card/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/history"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1698
    if-lez p2, :cond_97

    .line 1700
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?$skip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1703
    :cond_97
    sget-object v1, Lcom/samsung/privilege/activity/WalletCardActivity;->ao:Ljava/lang/String;

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

    .line 1704
    iput-boolean v4, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aI:Z

    .line 1705
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 1706
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 1707
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 1708
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1709
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 1710
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$23;

    invoke-direct {v1, p0, p2}, Lcom/samsung/privilege/activity/WalletCardActivity$23;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;I)V

    .line 1711
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1781
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_7

    .line 1691
    :catch_e5
    move-exception v0

    goto/16 :goto_5c
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;D)V
    .registers 14

    .prologue
    .line 1281
    new-instance v2, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v2, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1283
    const v0, 0x7f040135

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1285
    const v0, 0x7f1001c5

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1286
    const v0, 0x7f1001c6

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1287
    const v0, 0x7f1000cd

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1289
    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v3, "#,###,##0.##"

    invoke-direct {v1, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3, p4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f090162

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f0903b9

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1292
    const v0, 0x7f10016d

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1293
    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$17;

    invoke-direct {v1, p0, v2}, Lcom/samsung/privilege/activity/WalletCardActivity$17;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1299
    const v0, 0x7f100586

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 1300
    new-instance v0, Lcom/samsung/privilege/activity/WalletCardActivity$18;

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/privilege/activity/WalletCardActivity$18;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Landroid/app/Dialog;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1388
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1389
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1390
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1392
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1393
    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WalletCardActivity;Z)Z
    .registers 2

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aE:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aH:Ljava/lang/String;

    return-object p1
.end method

.method private b(I)V
    .registers 7

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 2308
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aK:Z

    if-ne v0, v4, :cond_9

    .line 2437
    :goto_8
    return-void

    .line 2312
    :cond_9
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2313
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->al:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2314
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ak:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2315
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->an:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2317
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->av:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    if-eqz v0, :cond_2d

    .line 2318
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->av:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2319
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->av:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->notifyDataSetChanged()V

    .line 2322
    :cond_2d
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ap:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$28;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$28;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/place"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?device_app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&center=13.75427724,100.57242441"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&agencyid=104477"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&distance=10000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&mode=nearby"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&require_campaign=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2338
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2339
    if-eqz v1, :cond_155

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_155

    .line 2345
    :goto_e4
    if-lez p1, :cond_fe

    .line 2346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&$skip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2349
    :cond_fe
    sget-object v1, Lcom/samsung/privilege/activity/WalletCardActivity;->ao:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadQueue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2350
    iput-boolean v4, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aK:Z

    .line 2351
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 2352
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 2353
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v4, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 2354
    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 2355
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2356
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 2357
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$29;

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/samsung/privilege/activity/WalletCardActivity$29;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;JI)V

    .line 2358
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2436
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_8

    .line 2342
    :cond_155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&device_locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e4
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/WalletCardActivity;)V
    .registers 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->i()V

    return-void
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/WalletCardActivity;I)V
    .registers 2

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(I)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ap:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$21;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/WalletCardActivity$21;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1544
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v6, 0x1

    .line 1195
    sget-boolean v0, Lcom/samsung/privilege/activity/WalletCardActivity;->aF:Z

    if-ne v0, v6, :cond_6

    .line 1278
    :goto_5
    return-void

    .line 1198
    :cond_6
    sput-boolean v6, Lcom/samsung/privilege/activity/WalletCardActivity;->aF:Z

    .line 1200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->V:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wallet/validate_initial_topup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1201
    sget-object v1, Lcom/samsung/privilege/activity/WalletCardActivity;->ao:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doCheckPrivilege="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 1205
    new-instance v2, Lcom/bzbs/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 1206
    invoke-virtual {v2}, Lcom/bzbs/util/DeviceHelper;->d()Ljava/lang/String;

    move-result-object v2

    .line 1208
    const-string/jumbo v3, "imei"

    invoke-virtual {v1, v3, v2}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1209
    sget-object v3, Lcom/samsung/privilege/activity/WalletCardActivity;->ao:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "imei="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    const-string/jumbo v2, "issuer"

    invoke-virtual {v1, v2, p1}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1212
    sget-object v2, Lcom/samsung/privilege/activity/WalletCardActivity;->ao:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "issuer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    const-string/jumbo v2, ""

    const v3, 0x7f090282

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3, v6, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aq:Landroid/app/ProgressDialog;

    .line 1218
    new-instance v2, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 1219
    invoke-virtual {v2, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    sget-boolean v3, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 1220
    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    .line 1221
    invoke-virtual {v2, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1222
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1223
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 1224
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/privilege/activity/WalletCardActivity$16;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1277
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_5
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/WalletCardActivity;Z)Z
    .registers 2

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aC:Z

    return p1
.end method

.method static synthetic b(Z)Z
    .registers 1

    .prologue
    .line 91
    sput-boolean p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aF:Z

    return p0
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/WalletCardActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/WalletCardActivity;)Z
    .registers 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aE:Z

    return v0
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/WalletCardActivity;Z)Z
    .registers 2

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aI:Z

    return p1
.end method

.method static synthetic c(Z)Z
    .registers 1

    .prologue
    .line 91
    sput-boolean p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aG:Z

    return p0
.end method

.method static synthetic d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/facebook/CallbackManager;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ar:Lcom/facebook/CallbackManager;

    return-object v0
.end method

.method static synthetic d(Lcom/samsung/privilege/activity/WalletCardActivity;Z)Z
    .registers 2

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aJ:Z

    return p1
.end method

.method static synthetic e(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    return-object v0
.end method

.method static synthetic e(Lcom/samsung/privilege/activity/WalletCardActivity;Z)Z
    .registers 2

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aK:Z

    return p1
.end method

.method static synthetic f()Ljava/lang/String;
    .registers 1

    .prologue
    .line 91
    sget-object v0, Lcom/samsung/privilege/activity/WalletCardActivity;->ao:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/samsung/privilege/activity/WalletCardActivity;)V
    .registers 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->k()V

    return-void
.end method

.method private g()V
    .registers 3

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "wallet_dashboard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/DashboardItem;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    .line 460
    return-void
.end method

.method static synthetic g(Lcom/samsung/privilege/activity/WalletCardActivity;)V
    .registers 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->l()V

    return-void
.end method

.method private h()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x2

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 463
    const v0, 0x7f100200

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->a:Landroid/widget/ProgressBar;

    .line 464
    const v0, 0x7f1001fd

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->b:Landroid/widget/ImageView;

    .line 466
    const v0, 0x7f100145

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->c:Landroid/widget/LinearLayout;

    .line 467
    const v0, 0x7f100146

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->d:Landroid/widget/TextView;

    .line 469
    const v0, 0x7f1001fc

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->e:Landroid/widget/RelativeLayout;

    .line 470
    const v0, 0x7f1001fb

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->f:Landroid/widget/RelativeLayout;

    .line 472
    const v0, 0x7f100203

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->g:Landroid/widget/LinearLayout;

    .line 473
    const v0, 0x7f100143

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->h:Landroid/widget/LinearLayout;

    .line 474
    const v0, 0x7f1001fa

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->i:Landroid/widget/TextView;

    .line 475
    const v0, 0x7f1001ff

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->j:Landroid/widget/TextView;

    .line 476
    const v0, 0x7f100164

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->k:Landroid/widget/TextView;

    .line 477
    const v0, 0x7f100208

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->l:Landroid/widget/ProgressBar;

    .line 478
    const v0, 0x7f100206

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->m:Landroid/widget/ImageView;

    .line 479
    const v0, 0x7f100204

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->n:Landroid/widget/RelativeLayout;

    .line 480
    const v0, 0x7f100207

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->o:Landroid/widget/TextView;

    .line 481
    const v0, 0x7f10020d

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->p:Landroid/widget/ProgressBar;

    .line 482
    const v0, 0x7f10020b

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->q:Landroid/widget/ImageView;

    .line 483
    const v0, 0x7f100209

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->r:Landroid/widget/RelativeLayout;

    .line 484
    const v0, 0x7f10020c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->s:Landroid/widget/TextView;

    .line 485
    const v0, 0x7f100212

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->t:Landroid/widget/ProgressBar;

    .line 486
    const v0, 0x7f100210

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->u:Landroid/widget/ImageView;

    .line 487
    const v0, 0x7f10020e

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->v:Landroid/widget/RelativeLayout;

    .line 488
    const v0, 0x7f100211

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->w:Landroid/widget/TextView;

    .line 489
    const v0, 0x7f100216

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->x:Landroid/widget/ProgressBar;

    .line 490
    const v0, 0x7f100215

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->y:Landroid/widget/ImageView;

    .line 491
    const v0, 0x7f100213

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->z:Landroid/widget/RelativeLayout;

    .line 492
    const v0, 0x7f10015c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->A:Landroid/widget/TextView;

    .line 493
    const v0, 0x7f10015d

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->B:Landroid/widget/TextView;

    .line 494
    const v0, 0x7f1001f7

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->C:Landroid/widget/RelativeLayout;

    .line 496
    const v0, 0x7f1001f0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->D:Landroid/widget/ScrollView;

    .line 497
    const v0, 0x7f100217

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->E:Landroid/widget/LinearLayout;

    .line 498
    const v0, 0x7f100218

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->F:Landroid/widget/LinearLayout;

    .line 499
    const v0, 0x7f10021a

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->G:Landroid/widget/LinearLayout;

    .line 500
    const v0, 0x7f100219

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->H:Landroid/widget/TextView;

    .line 501
    const v0, 0x7f1001fe

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->I:Landroid/widget/TextView;

    .line 502
    const v0, 0x7f10021b

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->J:Landroid/widget/TextView;

    .line 504
    const v0, 0x7f10021e

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->K:Landroid/widget/TextView;

    .line 505
    const v0, 0x7f10021f

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->L:Landroid/widget/TextView;

    .line 506
    const v0, 0x7f100220

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->M:Landroid/widget/TextView;

    .line 507
    const v0, 0x7f100221

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->N:Landroid/widget/TextView;

    .line 508
    const v0, 0x7f100222

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->O:Landroid/widget/TextView;

    .line 509
    const v0, 0x7f100223

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->P:Landroid/widget/ProgressBar;

    .line 511
    const v0, 0x7f1006d2

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->Q:Landroid/widget/ImageView;

    .line 512
    const v0, 0x7f1006d3

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->R:Landroid/widget/TextView;

    .line 513
    const v0, 0x7f1006d4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->S:Landroid/widget/TextView;

    .line 515
    const v0, 0x7f10021c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->T:Landroid/widget/RelativeLayout;

    .line 516
    const v0, 0x7f10021d

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->U:Landroid/widget/TextView;

    .line 519
    const v0, 0x7f10014d

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->W:Landroid/widget/ImageView;

    .line 520
    const v0, 0x7f10014e

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->X:Landroid/widget/TextView;

    .line 521
    const v0, 0x7f1006d0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->Y:Landroid/widget/LinearLayout;

    .line 522
    const v0, 0x7f100153

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->Z:Landroid/widget/TextView;

    .line 523
    const v0, 0x7f100154

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aa:Landroid/widget/TextView;

    .line 524
    const v0, 0x7f10012f

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ab:Landroid/widget/TextView;

    .line 525
    const v0, 0x7f10014c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ac:Landroid/widget/LinearLayout;

    .line 526
    const v0, 0x7f10012c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ad:Landroid/widget/LinearLayout;

    .line 527
    const v0, 0x7f10014b

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ae:Landroid/widget/ImageView;

    .line 528
    const v0, 0x7f10014f

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->af:Landroid/widget/LinearLayout;

    .line 529
    const v0, 0x7f100151

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ag:Landroid/widget/LinearLayout;

    .line 530
    const v0, 0x7f100201

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ah:Landroid/widget/RelativeLayout;

    .line 531
    const v0, 0x7f100202

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ai:Landroid/widget/TextView;

    .line 532
    const v0, 0x7f1006d5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aj:Landroid/widget/RelativeLayout;

    .line 535
    const v0, 0x7f1001f1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ak:Landroid/widget/RelativeLayout;

    .line 536
    const v0, 0x7f1001f3

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->al:Landroid/widget/RelativeLayout;

    .line 537
    const v0, 0x7f1001f5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->am:Landroid/widget/RelativeLayout;

    .line 538
    const v0, 0x7f1001f6

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->an:Landroid/widget/LinearLayout;

    .line 540
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    .line 541
    packed-switch v0, :pswitch_data_3b2

    .line 555
    iput v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aB:I

    .line 558
    :goto_2e1
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_queue:Ljava/lang/String;

    const-string/jumbo v1, "DEMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_370

    .line 559
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 560
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 575
    :goto_2fd
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->at:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 577
    const v0, 0x7f1001f8

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Landroid/support/v7/widget/RecyclerView;

    .line 578
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 579
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->at:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 580
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 582
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    iget v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aB:I

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->at:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 583
    const v0, 0x7f1001f2

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aw:Landroid/support/v7/widget/RecyclerView;

    .line 584
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aw:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->at:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 585
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aw:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 587
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {v0, p0, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->at:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 588
    const v0, 0x7f1001f4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ay:Landroid/support/v7/widget/RecyclerView;

    .line 589
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ay:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->at:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 590
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ay:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 591
    return-void

    .line 543
    :pswitch_35f
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aB:I

    goto/16 :goto_2e1

    .line 546
    :pswitch_364
    iput v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aB:I

    goto/16 :goto_2e1

    .line 549
    :pswitch_368
    iput v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aB:I

    goto/16 :goto_2e1

    .line 552
    :pswitch_36c
    iput v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aB:I

    goto/16 :goto_2e1

    .line 562
    :cond_370
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_dashboard_header:Ljava/lang/String;

    if-eqz v0, :cond_3a0

    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_dashboard_header:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a0

    .line 563
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 564
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 565
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 567
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_dashboard_header:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->j()V

    goto/16 :goto_2fd

    .line 570
    :cond_3a0
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 571
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 572
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_2fd

    .line 541
    nop

    :pswitch_data_3b2
    .packed-switch 0x1
        :pswitch_36c
        :pswitch_368
        :pswitch_364
        :pswitch_35f
    .end packed-switch
.end method

.method static synthetic h(Lcom/samsung/privilege/activity/WalletCardActivity;)V
    .registers 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->j()V

    return-void
.end method

.method static synthetic i(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aq:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private i()V
    .registers 8

    .prologue
    const v6, 0x7f090389

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/16 v3, 0x8

    .line 594
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 595
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->T:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 596
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 597
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 598
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->x:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 599
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 600
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 601
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 602
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->I:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 609
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->N:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_image_active:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->O:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_image_inactive:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->K:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-boolean v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_hide_tabbar:Z

    if-ne v0, v2, :cond_158

    .line 615
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 619
    :goto_5b
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 620
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 621
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 622
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 623
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->I:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 625
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 626
    if-eqz v0, :cond_16d

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16d

    .line 627
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-boolean v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_verify_imei:Z

    if-ne v0, v2, :cond_15f

    .line 628
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->H:Landroid/widget/TextView;

    const v1, 0x7f09038e

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    :goto_99
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 633
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 640
    :goto_a3
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->b(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_image_inactive:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 642
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->i:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0903ad

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " 0.00 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->j:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0903ad

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " 0.00 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_12f

    .line 646
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->U:Landroid/widget/TextView;

    const v1, 0x7f0900c4

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 648
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 649
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 650
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->T:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 653
    :cond_12f
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->n:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$7;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$7;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 671
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->r:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$8;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$8;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 689
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->v:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$9;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$9;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 707
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->F:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$10;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$10;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 751
    return-void

    .line 617
    :cond_158
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_5b

    .line 630
    :cond_15f
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->H:Landroid/widget/TextView;

    const v1, 0x7f09038a

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_99

    .line 635
    :cond_16d
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->H:Landroid/widget/TextView;

    const v1, 0x7f090392

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 637
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_a3
.end method

.method private j()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    .line 1157
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->am:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1158
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->al:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1159
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ak:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1160
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->an:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1162
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->av:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    if-eqz v0, :cond_26

    .line 1163
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->av:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1164
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->av:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->notifyDataSetChanged()V

    .line 1169
    :cond_26
    new-instance v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-direct {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aA:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    .line 1175
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1176
    const-string/jumbo v1, "header"

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_dashboard_header:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    const-string/jumbo v1, "cat"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->u(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 1180
    const/4 v2, 0x1

    if-ne v1, v2, :cond_78

    .line 1181
    const-string/jumbo v1, "dashboard_key"

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_dashboard_key_activated:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    :goto_5e
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aA:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1190
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f100174

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aA:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->a()I

    .line 1191
    return-void

    .line 1183
    :cond_78
    const-string/jumbo v1, "dashboard_key"

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_dashboard_key_inactivate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e
.end method

.method static synthetic j(Lcom/samsung/privilege/activity/WalletCardActivity;)Z
    .registers 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aC:Z

    return v0
.end method

.method static synthetic k(Lcom/samsung/privilege/activity/WalletCardActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aH:Ljava/lang/String;

    return-object v0
.end method

.method private k()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 1941
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ak:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1942
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->al:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1943
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->am:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1944
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->an:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1946
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->av:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    if-eqz v0, :cond_26

    .line 1947
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->av:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1948
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->av:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->notifyDataSetChanged()V

    .line 1951
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cache_wallet_promotion_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_promotion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LocalFileHelper;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1952
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 1953
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ap:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/privilege/activity/WalletCardActivity$24;

    invoke-direct {v2, p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity$24;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1987
    :goto_59
    return-void

    .line 1985
    :cond_5a
    invoke-direct {p0, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(I)V

    goto :goto_59
.end method

.method static synthetic l(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->av:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    return-object v0
.end method

.method private l()V
    .registers 4

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 2259
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->al:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2260
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ak:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2261
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->an:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2263
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->av:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    if-eqz v0, :cond_21

    .line 2264
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->av:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2265
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->av:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->notifyDataSetChanged()V

    .line 2268
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cache_wallet_queue_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_queue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LocalFileHelper;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2269
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 2270
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ap:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/privilege/activity/WalletCardActivity$27;

    invoke-direct {v2, p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity$27;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2304
    :goto_54
    return-void

    .line 2302
    :cond_55
    invoke-direct {p0, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->b(I)V

    goto :goto_54
.end method

.method static synthetic m(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/support/v7/widget/RecyclerView;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private m()V
    .registers 6

    .prologue
    .line 2440
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 2441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->V:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "modules/queue/user?date="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&current=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2443
    sget-object v1, Lcom/samsung/privilege/activity/WalletCardActivity;->ao:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkQueue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2444
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 2445
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 2446
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v4, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 2447
    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 2448
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2449
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 2450
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$30;

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/privilege/activity/WalletCardActivity$30;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;J)V

    .line 2451
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2499
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 2500
    return-void
.end method

.method static synthetic n(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ax:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    return-object v0
.end method

.method static synthetic o(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/support/v7/widget/RecyclerView;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aw:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic p(Lcom/samsung/privilege/activity/WalletCardActivity;)I
    .registers 2

    .prologue
    .line 91
    iget v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aB:I

    return v0
.end method

.method static synthetic q(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->az:Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;

    return-object v0
.end method

.method static synthetic r(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/support/v7/widget/RecyclerView;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ay:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic s(Lcom/samsung/privilege/activity/WalletCardActivity;)V
    .registers 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->m()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v6, 0x1

    .line 1397
    sget-boolean v0, Lcom/samsung/privilege/activity/WalletCardActivity;->aG:Z

    if-ne v0, v6, :cond_6

    .line 1477
    :goto_5
    return-void

    .line 1400
    :cond_6
    sput-boolean v6, Lcom/samsung/privilege/activity/WalletCardActivity;->aG:Z

    .line 1402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->V:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wallet/create"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1403
    sget-object v1, Lcom/samsung/privilege/activity/WalletCardActivity;->ao:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doActivate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 1407
    new-instance v2, Lcom/bzbs/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 1408
    invoke-virtual {v2}, Lcom/bzbs/util/DeviceHelper;->d()Ljava/lang/String;

    move-result-object v2

    .line 1410
    const-string/jumbo v3, "imei"

    invoke-virtual {v1, v3, v2}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1411
    sget-object v3, Lcom/samsung/privilege/activity/WalletCardActivity;->ao:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "imei="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    const-string/jumbo v2, "issuer"

    invoke-virtual {v1, v2, p1}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1414
    sget-object v2, Lcom/samsung/privilege/activity/WalletCardActivity;->ao:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "issuer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    const-string/jumbo v2, ""

    const v3, 0x7f090282

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3, v6, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aq:Landroid/app/ProgressDialog;

    .line 1417
    new-instance v2, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 1418
    invoke-virtual {v2, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    sget-boolean v3, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 1419
    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    .line 1420
    invoke-virtual {v2, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1421
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1422
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 1423
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$19;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$19;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    .line 1424
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1476
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_5
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 377
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 378
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 380
    if-eqz v1, :cond_e8

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e8

    .line 381
    if-eqz v0, :cond_3a

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 382
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 383
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Ljava/lang/String;)Z

    .line 384
    const-string/jumbo v0, ""

    .line 388
    :cond_3a
    if-eqz v0, :cond_8b

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 390
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->i()V

    .line 391
    const-string/jumbo v0, "getWalletCardList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 392
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Z)V

    .line 447
    :cond_55
    :goto_55
    return-void

    .line 393
    :cond_56
    const-string/jumbo v0, "doActivateCard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 394
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-boolean v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_verify_imei:Z

    if-ne v0, v3, :cond_79

    .line 395
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->K:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55

    .line 444
    :catch_77
    move-exception v0

    goto :goto_55

    .line 397
    :cond_79
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->K:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55

    .line 401
    :cond_8b
    if-ne p2, v3, :cond_55

    .line 403
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 404
    const v0, 0x7f040134

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 406
    const v0, 0x7f100169

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 407
    const v2, 0x7f0903a9

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    const v0, 0x7f1005ac

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 410
    new-instance v2, Lcom/samsung/privilege/activity/WalletCardActivity$5;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity$5;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    const v0, 0x7f1005ae

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 422
    new-instance v2, Lcom/samsung/privilege/activity/WalletCardActivity$6;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity$6;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 429
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 430
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 432
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_55

    .line 436
    :cond_e8
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_queue:Ljava/lang/String;

    const-string/jumbo v1, "DEMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 437
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    goto/16 :goto_55

    .line 438
    :cond_fc
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_dashboard_header:Ljava/lang/String;

    if-eqz v0, :cond_116

    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_dashboard_header:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_116

    .line 439
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    goto/16 :goto_55

    .line 441
    :cond_116
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11b} :catch_77

    goto/16 :goto_55
.end method

.method public a(Z)V
    .registers 6

    .prologue
    .line 1551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->V:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "card?mode=user_all"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1552
    sget-object v1, Lcom/samsung/privilege/activity/WalletCardActivity;->ao:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getWalletCardList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->a:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1554
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 1555
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 1556
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 1557
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1558
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 1559
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$22;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/WalletCardActivity$22;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Z)V

    .line 1560
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1662
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 1663
    return-void
.end method

.method public doBack(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 1547
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->finish()V

    .line 1548
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .prologue
    .line 371
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 372
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ar:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 373
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    .prologue
    .line 204
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 206
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 208
    const v0, 0x7f040056

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->setContentView(I)V

    .line 209
    const v0, 0x10300f0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->setTheme(I)V

    .line 211
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ap:Landroid/os/Handler;

    .line 213
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ar:Lcom/facebook/CallbackManager;

    .line 215
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->g()V

    .line 216
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->h()V

    .line 217
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->i()V

    .line 219
    new-instance v0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ax:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    .line 220
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aw:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ax:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 222
    const-string/jumbo v0, "getWalletCardList"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Ljava/lang/String;Z)V

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet Profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 356
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 358
    invoke-static {}, Lcom/bzbs/event/WalletEvents;->a()V

    .line 359
    invoke-static {}, Lcom/bzbs/event/LoginEvents;->a()V

    .line 360
    invoke-static {}, Lcom/bzbs/event/QueueEvents;->a()V

    .line 361
    invoke-static {}, Lcom/bzbs/event/DashboardEvents;->a()V

    .line 363
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aC:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 364
    invoke-static {p0}, Lcom/samsung/privilege/util/ScreenUtil;->d(Landroid/app/Activity;)V

    .line 365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aC:Z

    .line 367
    :cond_1a
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 233
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 235
    new-instance v0, Lcom/samsung/privilege/activity/WalletCardActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$1;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    invoke-static {v0}, Lcom/bzbs/event/WalletEvents;->a(Lcom/bzbs/event/WalletEvents$WalletListener;)V

    .line 267
    new-instance v0, Lcom/samsung/privilege/activity/WalletCardActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$2;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->a(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 312
    new-instance v0, Lcom/samsung/privilege/activity/WalletCardActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$3;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    invoke-static {v0}, Lcom/bzbs/event/QueueEvents;->a(Lcom/bzbs/event/QueueEvents$QueueListener;)V

    .line 326
    new-instance v0, Lcom/samsung/privilege/activity/WalletCardActivity$4;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$4;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    invoke-static {v0}, Lcom/bzbs/event/DashboardEvents;->a(Lcom/bzbs/event/DashboardEvents$DashboardListener;)V

    .line 348
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aD:Z

    if-nez v0, :cond_2b

    .line 349
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Z)V

    .line 351
    :cond_2b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aD:Z

    .line 352
    return-void
.end method
