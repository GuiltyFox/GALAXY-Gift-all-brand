.class public Lcom/samsung/privilege/activity/WalletCardActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "WalletCardActivity.java"


# static fields
.field private static aL:Z

.field private static aM:Z

.field private static aN:Z

.field private static aq:Ljava/lang/String;


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

.field K:Landroid/widget/RelativeLayout;

.field L:Landroid/webkit/WebView;

.field public M:Landroid/widget/TextView;

.field public N:Landroid/widget/TextView;

.field public O:Landroid/widget/TextView;

.field P:Landroid/widget/TextView;

.field Q:Landroid/widget/TextView;

.field R:Landroid/widget/ProgressBar;

.field S:Landroid/widget/ImageView;

.field T:Landroid/widget/TextView;

.field U:Landroid/widget/TextView;

.field V:Landroid/widget/RelativeLayout;

.field W:Landroid/widget/TextView;

.field protected X:Landroid/os/CountDownTimer;

.field Y:Landroid/widget/ImageView;

.field Z:Landroid/widget/TextView;

.field a:Landroid/widget/ProgressBar;

.field private aA:Landroid/support/v7/widget/RecyclerView;

.field private aB:Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;

.field private aC:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

.field private aD:I

.field private aE:Z

.field private aF:I

.field private aG:Ljava/lang/String;

.field private aH:Z

.field private aI:Z

.field private aJ:Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;

.field private aK:Landroid/os/CountDownTimer;

.field private aO:Ljava/lang/String;

.field private aP:Z

.field private aQ:Z

.field private aR:Z

.field aa:Landroid/widget/LinearLayout;

.field ab:Landroid/widget/TextView;

.field ac:Landroid/widget/TextView;

.field ad:Landroid/widget/TextView;

.field ae:Landroid/widget/LinearLayout;

.field af:Landroid/widget/LinearLayout;

.field ag:Landroid/widget/ImageView;

.field ah:Landroid/widget/LinearLayout;

.field ai:Landroid/widget/LinearLayout;

.field public aj:Landroid/widget/RelativeLayout;

.field ak:Landroid/widget/TextView;

.field public al:Landroid/widget/RelativeLayout;

.field am:Landroid/widget/RelativeLayout;

.field an:Landroid/widget/RelativeLayout;

.field ao:Landroid/widget/RelativeLayout;

.field ap:Landroid/widget/LinearLayout;

.field private ar:Landroid/os/Handler;

.field private as:Landroid/app/ProgressDialog;

.field private at:Lcom/facebook/CallbackManager;

.field private au:Lcom/bzbs/bean/DashboardItem;

.field private av:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private aw:Landroid/support/v7/widget/RecyclerView;

.field private ax:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

.field private ay:Landroid/support/v7/widget/RecyclerView;

.field private az:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

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

    .line 96
    const-class v0, Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/activity/WalletCardActivity;->aq:Ljava/lang/String;

    .line 1457
    sput-boolean v1, Lcom/samsung/privilege/activity/WalletCardActivity;->aL:Z

    .line 1714
    sput-boolean v1, Lcom/samsung/privilege/activity/WalletCardActivity;->aM:Z

    .line 1831
    sput-boolean v1, Lcom/samsung/privilege/activity/WalletCardActivity;->aN:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    .line 123
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aD:I

    .line 205
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aE:Z

    .line 207
    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aF:I

    .line 209
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aG:Ljava/lang/String;

    .line 237
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aH:Z

    .line 238
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aI:Z

    .line 2349
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aO:Ljava/lang/String;

    .line 2350
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aP:Z

    .line 2686
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aQ:Z

    .line 3003
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aR:Z

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WalletCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ar:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WalletCardActivity;Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;)Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ax:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WalletCardActivity;Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;)Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->az:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WalletCardActivity;Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;)Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aB:Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;

    return-object p1
.end method

.method private a(I)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 2688
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aQ:Z

    if-ne v0, v4, :cond_9

    .line 2812
    :goto_8
    return-void

    .line 2692
    :cond_9
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2693
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->am:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2694
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->an:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2695
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ao:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2696
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2698
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ax:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    if-eqz v0, :cond_32

    .line 2699
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ax:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2700
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ax:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->notifyDataSetChanged()V

    .line 2703
    :cond_32
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ar:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$30;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$30;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2712
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

    .line 2713
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

    .line 2714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&byConfig=true&config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_promotion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2715
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2716
    if-eqz v1, :cond_112

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_112

    .line 2722
    :goto_a1
    if-lez p1, :cond_bb

    .line 2723
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

    .line 2726
    :cond_bb
    sget-object v1, Lcom/samsung/privilege/activity/WalletCardActivity;->aq:Ljava/lang/String;

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

    .line 2727
    iput-boolean v4, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aQ:Z

    .line 2728
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 2729
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 2730
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v4, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 2731
    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 2732
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2733
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 2734
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$31;

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/samsung/privilege/activity/WalletCardActivity$31;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;JI)V

    .line 2735
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2811
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_8

    .line 2719
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

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)Ljava/lang/String;

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
    .line 1939
    const v0, 0x7f05004c

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 1940
    new-instance v0, Lcom/samsung/privilege/activity/WalletCardActivity$23;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/WalletCardActivity$23;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Landroid/view/View;Landroid/view/View;ZZ)V

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1990
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 1991
    invoke-virtual {p1, v6}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1992
    invoke-virtual {p1, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1993
    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WalletCardActivity;I)V
    .registers 2

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/WalletCardActivity;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WalletCardActivity;Landroid/view/View;Landroid/view/View;ZZ)V
    .registers 5

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Landroid/view/View;Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/WalletCardActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;J)V
    .registers 4

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;Ljava/lang/String;D)V
    .registers 6

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Ljava/lang/String;Ljava/lang/String;D)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;Z)V
    .registers 3

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/WalletCardActivity;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1996
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ar:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$24;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/WalletCardActivity$24;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2003
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 2352
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aP:Z

    if-ne v0, v4, :cond_8

    .line 2480
    :goto_7
    return-void

    .line 2356
    :cond_8
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->x:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2357
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->am:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2358
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->an:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2359
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ao:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2360
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2362
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->az:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    if-eqz v0, :cond_31

    .line 2363
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->az:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2364
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->az:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;->notifyDataSetChanged()V

    .line 2368
    :cond_31
    :try_start_31
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Landroid/app/ProgressDialog;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2369
    if-eqz v0, :cond_5c

    .line 2370
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 2371
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2372
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_5c} :catch_ee

    .line 2378
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

    .line 2381
    if-lez p2, :cond_97

    .line 2383
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

    .line 2386
    :cond_97
    sget-object v1, Lcom/samsung/privilege/activity/WalletCardActivity;->aq:Ljava/lang/String;

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

    .line 2387
    iput-boolean v4, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aP:Z

    .line 2388
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 2389
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 2390
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v4, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 2391
    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 2392
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2393
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 2394
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$28;

    invoke-direct {v1, p0, v2, v3, p2}, Lcom/samsung/privilege/activity/WalletCardActivity$28;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;JI)V

    .line 2395
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2479
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_7

    .line 2374
    :catch_ee
    move-exception v0

    goto/16 :goto_5c
.end method

.method private a(Ljava/lang/String;J)V
    .registers 12

    .prologue
    .line 932
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->a:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 933
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->V:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 934
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->l:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 935
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->x:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 936
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->f:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 937
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->e:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 938
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->G:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 939
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->I:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 942
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->H:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->H:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 946
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->P:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_image_active:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 947
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->Q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_image_inactive:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 949
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->M:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 951
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-boolean v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_hide_tabbar:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_38d

    .line 952
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 956
    :goto_6b
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->E:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 957
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-boolean v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_disable_payment:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_395

    .line 958
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 959
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 960
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->j:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 961
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->G:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 962
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aj:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 971
    :goto_9a
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->N:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 973
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_card_layout_html:Ljava/lang/String;

    if-eqz v0, :cond_3b6

    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_card_layout_html:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b6

    .line 976
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->K:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 977
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->L:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 978
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->I:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 981
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_118

    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x8

    const/16 v2, 0xc

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0x10

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 985
    :cond_118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0903b2

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "dd MMM yyyy"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/util/LanguageSetting;->b(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    const-wide/16 v4, 0x6270

    sub-long v4, p2, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 987
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->x(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 988
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0903cd

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0903a5

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 990
    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_card_layout_html:Ljava/lang/String;

    .line 991
    const-string/jumbo v3, "<card_id>"

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 992
    const-string/jumbo v3, "<expire_date>"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 993
    const-string/jumbo v2, "<balance>"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 995
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0903df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 996
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0903de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 997
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "<head><style>@font-face {font-family: \'verdana\';src: url(\'file:///android_asset/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\');}body,td,font {font-family: \'verdana\';font-size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ";font-style:normal;}big {font-size:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";}</style></head>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 999
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<html style=\"height: 100%;\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<body style=\"height: auto\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1000
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->L:Landroid/webkit/WebView;

    const/4 v1, 0x0

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->L:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 1002
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_242

    .line 1003
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->L:Landroid/webkit/WebView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1016
    :cond_242
    :goto_242
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-boolean v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_disable_amount:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_256

    .line 1017
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->i:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1018
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->j:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1021
    :cond_256
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_cardid_color:Ljava/lang/String;

    if-eqz v0, :cond_283

    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_cardid_color:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_283

    .line 1022
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->I:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_cardid_color:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1023
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_cardid_color:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1025
    :cond_283
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_cardid_shadow:Ljava/lang/String;

    if-eqz v0, :cond_2bc

    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_cardid_shadow:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2bc

    .line 1026
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->I:Landroid/widget/TextView;

    const/high16 v1, 0x3fc00000    # 1.5f

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v4, v4, Lcom/bzbs/bean/DashboardItem;->wallet_cardid_shadow:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1027
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->j:Landroid/widget/TextView;

    const/high16 v1, 0x3fc00000    # 1.5f

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v4, v4, Lcom/bzbs/bean/DashboardItem;->wallet_cardid_shadow:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1030
    :cond_2bc
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->b(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_image_active:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 1032
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->x(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1033
    if-eqz v0, :cond_42b

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42b

    .line 1034
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->i:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0903cd

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

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

    const v3, 0x7f0903a5

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1035
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->j:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0903cd

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

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

    const v2, 0x7f0903a5

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1041
    :goto_35a
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->c:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$11;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$11;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1055
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$12;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$12;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1324
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->z:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$13;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$13;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1357
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->af:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$14;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$14;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1370
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aa:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$15;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$15;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1382
    return-void

    .line 954
    :cond_38d
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6b

    .line 964
    :cond_395
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 965
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 966
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->j:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 967
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->G:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 968
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aj:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_9a

    .line 1006
    :cond_3b6
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->K:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1007
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->L:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1008
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->I:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1009
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_424

    .line 1010
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->I:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    const/16 v3, 0x8

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x8

    const/16 v3, 0xc

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

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

    goto/16 :goto_242

    .line 1012
    :cond_424
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->I:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_242

    .line 1037
    :cond_42b
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->i:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0903cd

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " 0.00 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0903a5

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1038
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->j:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0903cd

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " 0.00 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0903a5

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_35a
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;D)V
    .registers 14

    .prologue
    .line 1576
    new-instance v2, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v2, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1578
    const v0, 0x7f04013c

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1580
    const v0, 0x7f1001db

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1581
    const v0, 0x7f1001dc

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1582
    const v0, 0x7f1000cf

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1584
    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v3, "#,###,##0.##"

    invoke-direct {v1, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1585
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3, p4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f090163

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f0903da

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1587
    const v0, 0x7f10016f

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1588
    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$19;

    invoke-direct {v1, p0, v2}, Lcom/samsung/privilege/activity/WalletCardActivity$19;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1594
    const v0, 0x7f1005a1

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 1595
    new-instance v0, Lcom/samsung/privilege/activity/WalletCardActivity$20;

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/privilege/activity/WalletCardActivity$20;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Landroid/app/Dialog;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1707
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1708
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1709
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1711
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1712
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    const/4 v6, 0x1

    .line 1459
    sget-boolean v0, Lcom/samsung/privilege/activity/WalletCardActivity;->aL:Z

    if-ne v0, v6, :cond_6

    .line 1573
    :goto_5
    return-void

    .line 1462
    :cond_6
    sput-boolean v6, Lcom/samsung/privilege/activity/WalletCardActivity;->aL:Z

    .line 1464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->V:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wallet/validate_initial_topup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1465
    sget-object v0, Lcom/samsung/privilege/activity/WalletCardActivity;->aq:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doCheckPrivilege="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    new-instance v4, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v4}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 1469
    new-instance v0, Lcom/bzbs/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 1470
    invoke-virtual {v0}, Lcom/bzbs/util/DeviceHelper;->d()Ljava/lang/String;

    move-result-object v0

    .line 1472
    const-string/jumbo v2, "imei"

    invoke-virtual {v4, v2, v0}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1473
    sget-object v2, Lcom/samsung/privilege/activity/WalletCardActivity;->aq:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "imei="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    const-string/jumbo v0, "issuer"

    invoke-virtual {v4, v0, p1}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1476
    sget-object v0, Lcom/samsung/privilege/activity/WalletCardActivity;->aq:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "issuer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    if-eqz p3, :cond_b1

    const-string/jumbo v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b1

    .line 1479
    const-string/jumbo v0, "contact_number"

    invoke-virtual {v4, v0, p3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1480
    sget-object v0, Lcom/samsung/privilege/activity/WalletCardActivity;->aq:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "contact_number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    :cond_b1
    const/16 v0, 0x14

    .line 1487
    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_timeout:I

    if-lez v2, :cond_bd

    .line 1488
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_timeout:I

    .line 1491
    :cond_bd
    const-string/jumbo v2, ""

    const v3, 0x7f090283

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3, v6, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Landroid/app/ProgressDialog;

    .line 1492
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 1493
    new-instance v5, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v5}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 1494
    invoke-virtual {v5, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v5

    sget-boolean v6, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 1495
    invoke-virtual {v5, v6}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v5

    .line 1496
    invoke-virtual {v5, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 1497
    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 1498
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-object v4, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 1499
    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 1500
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(I)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 1501
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->c(I)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 1502
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(I)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v6

    new-instance v0, Lcom/samsung/privilege/activity/WalletCardActivity$18;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/WalletCardActivity$18;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;JLjava/lang/String;Ljava/lang/String;)V

    .line 1503
    invoke-virtual {v6, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1572
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_5
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WalletCardActivity;Z)Z
    .registers 2

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aI:Z

    return p1
.end method

.method static synthetic a(Z)Z
    .registers 1

    .prologue
    .line 94
    sput-boolean p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aL:Z

    return p0
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aG:Ljava/lang/String;

    return-object p1
.end method

.method private b(I)V
    .registers 7

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 3005
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aR:Z

    if-ne v0, v4, :cond_9

    .line 3134
    :goto_8
    return-void

    .line 3009
    :cond_9
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3010
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->an:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3011
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->am:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3012
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3014
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ax:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    if-eqz v0, :cond_2d

    .line 3015
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ax:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3016
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ax:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->notifyDataSetChanged()V

    .line 3019
    :cond_2d
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ar:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$33;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$33;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3028
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

    .line 3029
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

    .line 3030
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&center=13.75427724,100.57242441"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3031
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&agencyid=104477"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3032
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&distance=10000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3033
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&mode=nearby"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3034
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&require_campaign=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3035
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 3036
    if-eqz v1, :cond_155

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_155

    .line 3042
    :goto_e4
    if-lez p1, :cond_fe

    .line 3043
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

    .line 3046
    :cond_fe
    sget-object v1, Lcom/samsung/privilege/activity/WalletCardActivity;->aq:Ljava/lang/String;

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

    .line 3047
    iput-boolean v4, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aR:Z

    .line 3048
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 3049
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 3050
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v4, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 3051
    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 3052
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 3053
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 3054
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$34;

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/samsung/privilege/activity/WalletCardActivity$34;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;JI)V

    .line 3055
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 3133
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_8

    .line 3039
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

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e4
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/WalletCardActivity;I)V
    .registers 2

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(I)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 2158
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

    .line 2159
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_cardtype:Ljava/lang/String;

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_cardtype:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 2160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&cardtype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_cardtype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2162
    :cond_45
    sget-object v1, Lcom/samsung/privilege/activity/WalletCardActivity;->aq:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "process_wallet_verify_success_redeem_campaign(getWalletCardList)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2163
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 2164
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 2165
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 2166
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2167
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 2168
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$26;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/WalletCardActivity$26;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;)V

    .line 2169
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2238
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 2239
    return-void
.end method

.method private b(Ljava/lang/String;Z)V
    .registers 7

    .prologue
    .line 2242
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

    .line 2243
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_cardtype:Ljava/lang/String;

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_cardtype:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 2244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&cardtype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_cardtype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2246
    :cond_45
    sget-object v1, Lcom/samsung/privilege/activity/WalletCardActivity;->aq:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "process_wallet_get_campaign_detail(getWalletCardList)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2247
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 2248
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 2249
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 2250
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2251
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 2252
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$27;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/privilege/activity/WalletCardActivity$27;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;Z)V

    .line 2253
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2345
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 2346
    return-void
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/WalletCardActivity;)Z
    .registers 2

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aI:Z

    return v0
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/WalletCardActivity;Z)Z
    .registers 2

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aE:Z

    return p1
.end method

.method static synthetic b(Z)Z
    .registers 1

    .prologue
    .line 94
    sput-boolean p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aM:Z

    return p0
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/WalletCardActivity;)V
    .registers 1

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->k()V

    return-void
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/WalletCardActivity;Z)Z
    .registers 2

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aP:Z

    return p1
.end method

.method static synthetic c(Z)Z
    .registers 1

    .prologue
    .line 94
    sput-boolean p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aN:Z

    return p0
.end method

.method static synthetic d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    return-object v0
.end method

.method static synthetic d(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aO:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/samsung/privilege/activity/WalletCardActivity;Z)Z
    .registers 2

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aQ:Z

    return p1
.end method

.method static synthetic e(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/os/CountDownTimer;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aK:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic e(Lcom/samsung/privilege/activity/WalletCardActivity;Z)Z
    .registers 2

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aR:Z

    return p1
.end method

.method static synthetic f(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .registers 1

    .prologue
    .line 94
    sget-object v0, Lcom/samsung/privilege/activity/WalletCardActivity;->aq:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .registers 7

    .prologue
    .line 425
    const-string/jumbo v0, ""

    const v1, 0x7f090283

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Landroid/app/ProgressDialog;

    .line 426
    new-instance v0, Lcom/samsung/privilege/activity/WalletCardActivity$4;

    const-wide/32 v2, 0xc350

    const-wide/16 v4, 0x1388

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/WalletCardActivity$4;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;JJ)V

    .line 491
    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WalletCardActivity$4;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aK:Landroid/os/CountDownTimer;

    .line 492
    return-void
.end method

.method static synthetic g(Lcom/samsung/privilege/activity/WalletCardActivity;)V
    .registers 1

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->h()V

    return-void
.end method

.method static synthetic h(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/facebook/CallbackManager;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->at:Lcom/facebook/CallbackManager;

    return-object v0
.end method

.method private h()V
    .registers 2

    .prologue
    .line 526
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 527
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->finish()V

    .line 528
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 532
    :goto_a
    return-void

    .line 529
    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method private i()V
    .registers 3

    .prologue
    .line 626
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "wallet_dashboard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/DashboardItem;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    .line 636
    return-void
.end method

.method static synthetic i(Lcom/samsung/privilege/activity/WalletCardActivity;)V
    .registers 1

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->n()V

    return-void
.end method

.method private j()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x2

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 639
    const v0, 0x7f100219

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->a:Landroid/widget/ProgressBar;

    .line 640
    const v0, 0x7f100212

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->b:Landroid/widget/ImageView;

    .line 642
    const v0, 0x7f100147

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->c:Landroid/widget/LinearLayout;

    .line 643
    const v0, 0x7f100148

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->d:Landroid/widget/TextView;

    .line 645
    const v0, 0x7f100211

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->e:Landroid/widget/RelativeLayout;

    .line 646
    const v0, 0x7f100210

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->f:Landroid/widget/RelativeLayout;

    .line 648
    const v0, 0x7f10021c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->g:Landroid/widget/LinearLayout;

    .line 649
    const v0, 0x7f100145

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->h:Landroid/widget/LinearLayout;

    .line 650
    const v0, 0x7f10020f

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->i:Landroid/widget/TextView;

    .line 651
    const v0, 0x7f100218

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->j:Landroid/widget/TextView;

    .line 652
    const v0, 0x7f100166

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->k:Landroid/widget/TextView;

    .line 653
    const v0, 0x7f100221

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->l:Landroid/widget/ProgressBar;

    .line 654
    const v0, 0x7f10021f

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->m:Landroid/widget/ImageView;

    .line 655
    const v0, 0x7f10021d

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->n:Landroid/widget/RelativeLayout;

    .line 656
    const v0, 0x7f100220

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->o:Landroid/widget/TextView;

    .line 657
    const v0, 0x7f100226

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->p:Landroid/widget/ProgressBar;

    .line 658
    const v0, 0x7f100224

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->q:Landroid/widget/ImageView;

    .line 659
    const v0, 0x7f100222

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->r:Landroid/widget/RelativeLayout;

    .line 660
    const v0, 0x7f100225

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->s:Landroid/widget/TextView;

    .line 661
    const v0, 0x7f10022b

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->t:Landroid/widget/ProgressBar;

    .line 662
    const v0, 0x7f100229

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->u:Landroid/widget/ImageView;

    .line 663
    const v0, 0x7f100227

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->v:Landroid/widget/RelativeLayout;

    .line 664
    const v0, 0x7f10022a

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->w:Landroid/widget/TextView;

    .line 665
    const v0, 0x7f10022f

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->x:Landroid/widget/ProgressBar;

    .line 666
    const v0, 0x7f10022e

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->y:Landroid/widget/ImageView;

    .line 667
    const v0, 0x7f10022c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->z:Landroid/widget/RelativeLayout;

    .line 668
    const v0, 0x7f10015e

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->A:Landroid/widget/TextView;

    .line 669
    const v0, 0x7f10015f

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->B:Landroid/widget/TextView;

    .line 670
    const v0, 0x7f10020c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->C:Landroid/widget/RelativeLayout;

    .line 672
    const v0, 0x7f100205

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->D:Landroid/widget/ScrollView;

    .line 673
    const v0, 0x7f100230

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->E:Landroid/widget/LinearLayout;

    .line 674
    const v0, 0x7f100231

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->F:Landroid/widget/LinearLayout;

    .line 675
    const v0, 0x7f100233

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->G:Landroid/widget/LinearLayout;

    .line 676
    const v0, 0x7f100232

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->H:Landroid/widget/TextView;

    .line 677
    const v0, 0x7f100216

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->I:Landroid/widget/TextView;

    .line 678
    const v0, 0x7f100234

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->J:Landroid/widget/TextView;

    .line 679
    const v0, 0x7f100213

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->K:Landroid/widget/RelativeLayout;

    .line 680
    const v0, 0x7f100215

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->L:Landroid/webkit/WebView;

    .line 682
    const v0, 0x7f100237

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->M:Landroid/widget/TextView;

    .line 683
    const v0, 0x7f100238

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->N:Landroid/widget/TextView;

    .line 684
    const v0, 0x7f100239

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->O:Landroid/widget/TextView;

    .line 685
    const v0, 0x7f10023a

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->P:Landroid/widget/TextView;

    .line 686
    const v0, 0x7f10023b

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->Q:Landroid/widget/TextView;

    .line 687
    const v0, 0x7f10023c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->R:Landroid/widget/ProgressBar;

    .line 689
    const v0, 0x7f1006fe

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->S:Landroid/widget/ImageView;

    .line 690
    const v0, 0x7f1006ff

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->T:Landroid/widget/TextView;

    .line 691
    const v0, 0x7f100700

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->U:Landroid/widget/TextView;

    .line 693
    const v0, 0x7f100235

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->V:Landroid/widget/RelativeLayout;

    .line 694
    const v0, 0x7f100236

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->W:Landroid/widget/TextView;

    .line 697
    const v0, 0x7f10014f

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->Y:Landroid/widget/ImageView;

    .line 698
    const v0, 0x7f100150

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->Z:Landroid/widget/TextView;

    .line 699
    const v0, 0x7f1006fc

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aa:Landroid/widget/LinearLayout;

    .line 700
    const v0, 0x7f100155

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ab:Landroid/widget/TextView;

    .line 701
    const v0, 0x7f100156

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ac:Landroid/widget/TextView;

    .line 702
    const v0, 0x7f100131

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ad:Landroid/widget/TextView;

    .line 703
    const v0, 0x7f10014e

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ae:Landroid/widget/LinearLayout;

    .line 704
    const v0, 0x7f10012e

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->af:Landroid/widget/LinearLayout;

    .line 705
    const v0, 0x7f10014d

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ag:Landroid/widget/ImageView;

    .line 706
    const v0, 0x7f100151

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ah:Landroid/widget/LinearLayout;

    .line 707
    const v0, 0x7f100153

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ai:Landroid/widget/LinearLayout;

    .line 708
    const v0, 0x7f10021a

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aj:Landroid/widget/RelativeLayout;

    .line 709
    const v0, 0x7f10021b

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ak:Landroid/widget/TextView;

    .line 710
    const v0, 0x7f100701

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->al:Landroid/widget/RelativeLayout;

    .line 713
    const v0, 0x7f100206

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->am:Landroid/widget/RelativeLayout;

    .line 714
    const v0, 0x7f100208

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->an:Landroid/widget/RelativeLayout;

    .line 715
    const v0, 0x7f10020a

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ao:Landroid/widget/RelativeLayout;

    .line 716
    const v0, 0x7f10020b

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ap:Landroid/widget/LinearLayout;

    .line 718
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    .line 719
    packed-switch v0, :pswitch_data_3c8

    .line 733
    iput v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aD:I

    .line 736
    :goto_2f7
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_queue:Ljava/lang/String;

    const-string/jumbo v1, "DEMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_386

    .line 737
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 738
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 739
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 753
    :goto_313
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->av:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 755
    const v0, 0x7f10020d

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aw:Landroid/support/v7/widget/RecyclerView;

    .line 756
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aw:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 757
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aw:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->av:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 758
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aw:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 760
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    iget v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aD:I

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->av:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 761
    const v0, 0x7f100207

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ay:Landroid/support/v7/widget/RecyclerView;

    .line 762
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ay:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->av:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 763
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ay:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 765
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {v0, p0, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->av:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 766
    const v0, 0x7f100209

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aA:Landroid/support/v7/widget/RecyclerView;

    .line 767
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aA:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->av:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 768
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aA:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 769
    return-void

    .line 721
    :pswitch_375
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aD:I

    goto/16 :goto_2f7

    .line 724
    :pswitch_37a
    iput v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aD:I

    goto/16 :goto_2f7

    .line 727
    :pswitch_37e
    iput v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aD:I

    goto/16 :goto_2f7

    .line 730
    :pswitch_382
    iput v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aD:I

    goto/16 :goto_2f7

    .line 740
    :cond_386
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_dashboard_header:Ljava/lang/String;

    if-eqz v0, :cond_3b6

    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_dashboard_header:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b6

    .line 741
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 742
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 743
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 745
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_dashboard_header:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 746
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->l()V

    goto/16 :goto_313

    .line 748
    :cond_3b6
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 749
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 750
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_313

    .line 719
    nop

    :pswitch_data_3c8
    .packed-switch 0x1
        :pswitch_382
        :pswitch_37e
        :pswitch_37a
        :pswitch_375
    .end packed-switch
.end method

.method static synthetic j(Lcom/samsung/privilege/activity/WalletCardActivity;)V
    .registers 1

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->o()V

    return-void
.end method

.method private k()V
    .registers 8

    .prologue
    const v6, 0x7f0903a5

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/16 v3, 0x8

    .line 772
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 773
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->V:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 774
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 775
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 776
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->x:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 777
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 778
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 779
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 780
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->I:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 787
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->P:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_image_active:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->Q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_image_inactive:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 790
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->M:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 792
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-boolean v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_hide_tabbar:Z

    if-ne v0, v2, :cond_158

    .line 793
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 797
    :goto_5b
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 798
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 799
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 800
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 801
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->I:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 803
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 804
    if-eqz v0, :cond_16d

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16d

    .line 805
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-boolean v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_verify_imei:Z

    if-ne v0, v2, :cond_15f

    .line 806
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->H:Landroid/widget/TextView;

    const v1, 0x7f0903aa

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 810
    :goto_99
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 811
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 818
    :goto_a3
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->b(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_image_inactive:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 820
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->i:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0903cd

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

    .line 821
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->j:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0903cd

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

    .line 823
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_12f

    .line 824
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->W:Landroid/widget/TextView;

    const v1, 0x7f0900c5

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 826
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 827
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 828
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->V:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 831
    :cond_12f
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->n:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$7;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$7;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 849
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->r:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$8;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$8;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 867
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->v:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$9;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$9;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 885
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->F:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$10;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$10;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 929
    return-void

    .line 795
    :cond_158
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_5b

    .line 808
    :cond_15f
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->H:Landroid/widget/TextView;

    const v1, 0x7f0903a6

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_99

    .line 813
    :cond_16d
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->H:Landroid/widget/TextView;

    const v1, 0x7f0903ae

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 814
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 815
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_a3
.end method

.method static synthetic k(Lcom/samsung/privilege/activity/WalletCardActivity;)V
    .registers 1

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->l()V

    return-void
.end method

.method private l()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    .line 1385
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ao:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1386
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->an:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1387
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->am:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1388
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1390
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ax:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    if-eqz v0, :cond_26

    .line 1391
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ax:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1392
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ax:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->notifyDataSetChanged()V

    .line 1397
    :cond_26
    new-instance v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-direct {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aC:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    .line 1403
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1404
    const-string/jumbo v1, "header"

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_dashboard_header:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    const-string/jumbo v1, "cat"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/bzbs/data/UserLogin;->w(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 1408
    const/4 v2, 0x1

    if-ne v1, v2, :cond_78

    .line 1409
    const-string/jumbo v1, "dashboard_key"

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_dashboard_key_activated:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    :goto_5e
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aC:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1418
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f100176

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aC:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->b()I

    .line 1419
    return-void

    .line 1411
    :cond_78
    const-string/jumbo v1, "dashboard_key"

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_dashboard_key_inactivate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e
.end method

.method static synthetic l(Lcom/samsung/privilege/activity/WalletCardActivity;)Z
    .registers 2

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aE:Z

    return v0
.end method

.method static synthetic m(Lcom/samsung/privilege/activity/WalletCardActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aG:Ljava/lang/String;

    return-object v0
.end method

.method private m()V
    .registers 5

    .prologue
    .line 1422
    new-instance v2, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v2, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1424
    const v0, 0x7f04013a

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1426
    const v0, 0x7f1001e3

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1428
    const v1, 0x7f1005a1

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 1429
    new-instance v3, Lcom/samsung/privilege/activity/WalletCardActivity$16;

    invoke-direct {v3, p0, v0, v2}, Lcom/samsung/privilege/activity/WalletCardActivity$16;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1443
    const v0, 0x7f10016f

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1444
    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$17;

    invoke-direct {v1, p0, v2}, Lcom/samsung/privilege/activity/WalletCardActivity$17;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1451
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1452
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1453
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1454
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1455
    return-void
.end method

.method static synthetic n(Lcom/samsung/privilege/activity/WalletCardActivity;)I
    .registers 2

    .prologue
    .line 94
    iget v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aF:I

    return v0
.end method

.method private n()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 2638
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->am:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2639
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->an:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2640
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ao:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2641
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2643
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ax:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    if-eqz v0, :cond_26

    .line 2644
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ax:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2645
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ax:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->notifyDataSetChanged()V

    .line 2648
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cache_wallet_promotion_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_promotion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LocalFileHelper;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2649
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 2650
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ar:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/privilege/activity/WalletCardActivity$29;

    invoke-direct {v2, p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity$29;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2684
    :goto_59
    return-void

    .line 2682
    :cond_5a
    invoke-direct {p0, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(I)V

    goto :goto_59
.end method

.method static synthetic o(Lcom/samsung/privilege/activity/WalletCardActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aO:Ljava/lang/String;

    return-object v0
.end method

.method private o()V
    .registers 4

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 2956
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->an:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2957
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->am:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2958
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2960
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ax:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    if-eqz v0, :cond_21

    .line 2961
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ax:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2962
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ax:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->notifyDataSetChanged()V

    .line 2965
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cache_wallet_queue_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_queue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LocalFileHelper;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2966
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 2967
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ar:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/privilege/activity/WalletCardActivity$32;

    invoke-direct {v2, p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity$32;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3001
    :goto_54
    return-void

    .line 2999
    :cond_55
    invoke-direct {p0, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->b(I)V

    goto :goto_54
.end method

.method static synthetic p(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ax:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    return-object v0
.end method

.method private p()V
    .registers 6

    .prologue
    .line 3137
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 3138
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

    .line 3140
    sget-object v1, Lcom/samsung/privilege/activity/WalletCardActivity;->aq:Ljava/lang/String;

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

    .line 3141
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 3142
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 3143
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v4, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 3144
    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 3145
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 3146
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 3147
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$35;

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/privilege/activity/WalletCardActivity$35;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;J)V

    .line 3148
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 3196
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 3197
    return-void
.end method

.method static synthetic q(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/support/v7/widget/RecyclerView;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aw:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic r(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->az:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    return-object v0
.end method

.method static synthetic s(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/support/v7/widget/RecyclerView;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ay:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic t(Lcom/samsung/privilege/activity/WalletCardActivity;)I
    .registers 2

    .prologue
    .line 94
    iget v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aD:I

    return v0
.end method

.method static synthetic u(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aB:Lcom/samsung/privilege/activity/WalletCardActivity$QueueAdapter;

    return-object v0
.end method

.method static synthetic v(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/support/v7/widget/RecyclerView;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aA:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic w(Lcom/samsung/privilege/activity/WalletCardActivity;)V
    .registers 1

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->p()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v5, 0x1

    .line 1716
    sget-boolean v0, Lcom/samsung/privilege/activity/WalletCardActivity;->aM:Z

    if-ne v0, v5, :cond_6

    .line 1829
    :goto_5
    return-void

    .line 1719
    :cond_6
    sput-boolean v5, Lcom/samsung/privilege/activity/WalletCardActivity;->aM:Z

    .line 1721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->V:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "membercard/verify_authen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1722
    sget-object v0, Lcom/samsung/privilege/activity/WalletCardActivity;->aq:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doVerifyAuthen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    new-instance v4, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v4}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 1735
    const/16 v0, 0x14

    .line 1736
    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_timeout:I

    if-lez v2, :cond_48

    .line 1737
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_timeout:I

    .line 1740
    :cond_48
    const-string/jumbo v2, ""

    const v3, 0x7f090283

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Landroid/app/ProgressDialog;

    .line 1741
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 1742
    new-instance v5, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v5}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 1743
    invoke-virtual {v5, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v5

    sget-boolean v6, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 1744
    invoke-virtual {v5, v6}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v5

    .line 1745
    invoke-virtual {v5, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 1746
    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 1747
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-object v4, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 1748
    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 1749
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(I)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 1750
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->c(I)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 1751
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(I)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v6

    new-instance v0, Lcom/samsung/privilege/activity/WalletCardActivity$21;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/WalletCardActivity$21;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;JLjava/lang/String;Ljava/lang/String;)V

    .line 1752
    invoke-virtual {v6, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1828
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_5
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 9

    .prologue
    const/4 v5, 0x1

    .line 535
    sget-object v0, Lcom/samsung/privilege/activity/WalletCardActivity;->aq:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkTokenWallet->next_flow_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",show_logout_dialog="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    :try_start_25
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 538
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 540
    sget-object v2, Lcom/samsung/privilege/activity/WalletCardActivity;->aq:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tokenBzBs->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    sget-object v2, Lcom/samsung/privilege/activity/WalletCardActivity;->aq:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tokenWallet->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    if-eqz v1, :cond_149

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_149

    .line 544
    if-eqz v0, :cond_90

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    .line 545
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 546
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 547
    const-string/jumbo v0, ""

    .line 551
    :cond_90
    if-eqz v0, :cond_ec

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ec

    .line 553
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->k()V

    .line 554
    const-string/jumbo v0, "getWalletCardList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 555
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(ZZ)V

    .line 613
    :cond_ac
    :goto_ac
    return-void

    .line 556
    :cond_ad
    const-string/jumbo v0, "doActivateCard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 557
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-boolean v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_verify_authen:Z

    if-ne v0, v5, :cond_d0

    .line 558
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->M:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ac

    .line 610
    :catch_ce
    move-exception v0

    goto :goto_ac

    .line 559
    :cond_d0
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-boolean v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_verify_imei:Z

    if-ne v0, v5, :cond_da

    .line 560
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->m()V

    goto :goto_ac

    .line 563
    :cond_da
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->M:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ac

    .line 567
    :cond_ec
    if-ne p2, v5, :cond_ac

    .line 569
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 570
    const v0, 0x7f04013b

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 572
    const v0, 0x7f10016b

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 573
    const v2, 0x7f0903c9

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    const v0, 0x7f1005c7

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 576
    new-instance v2, Lcom/samsung/privilege/activity/WalletCardActivity$5;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity$5;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 587
    const v0, 0x7f1005c9

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 588
    new-instance v2, Lcom/samsung/privilege/activity/WalletCardActivity$6;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity$6;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 594
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 595
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 596
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 598
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_ac

    .line 602
    :cond_149
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_queue:Ljava/lang/String;

    const-string/jumbo v1, "DEMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15d

    .line 603
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    goto/16 :goto_ac

    .line 604
    :cond_15d
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_dashboard_header:Ljava/lang/String;

    if-eqz v0, :cond_177

    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_dashboard_header:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_177

    .line 605
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    goto/16 :goto_ac

    .line 607
    :cond_177
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z
    :try_end_17c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_17c} :catch_ce

    goto/16 :goto_ac
.end method

.method public a(ZZ)V
    .registers 8

    .prologue
    .line 2010
    sget-object v0, Lcom/samsung/privilege/activity/WalletCardActivity;->aq:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getWalletCardList->only_update_balance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",call_after_check_status_success="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
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

    .line 2013
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_cardtype:Ljava/lang/String;

    if-eqz v1, :cond_69

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_cardtype:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 2014
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&cardtype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_cardtype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2016
    :cond_69
    sget-object v1, Lcom/samsung/privilege/activity/WalletCardActivity;->aq:Ljava/lang/String;

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

    .line 2018
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->a:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2019
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 2020
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 2021
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v4, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 2022
    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 2023
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2024
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 2025
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$25;

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/samsung/privilege/activity/WalletCardActivity$25;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;JZ)V

    .line 2026
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2154
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 2155
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v6, 0x1

    .line 1833
    sget-boolean v0, Lcom/samsung/privilege/activity/WalletCardActivity;->aN:Z

    if-ne v0, v6, :cond_6

    .line 1936
    :goto_5
    return-void

    .line 1836
    :cond_6
    sput-boolean v6, Lcom/samsung/privilege/activity/WalletCardActivity;->aN:Z

    .line 1838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->V:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wallet/create"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1839
    sget-object v0, Lcom/samsung/privilege/activity/WalletCardActivity;->aq:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doActivate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    new-instance v4, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v4}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 1843
    new-instance v0, Lcom/bzbs/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 1844
    invoke-virtual {v0}, Lcom/bzbs/util/DeviceHelper;->d()Ljava/lang/String;

    move-result-object v0

    .line 1846
    const-string/jumbo v2, "imei"

    invoke-virtual {v4, v2, v0}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1847
    sget-object v2, Lcom/samsung/privilege/activity/WalletCardActivity;->aq:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "imei="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    const-string/jumbo v0, "issuer"

    invoke-virtual {v4, v0, p1}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1850
    sget-object v0, Lcom/samsung/privilege/activity/WalletCardActivity;->aq:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "issuer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    const/16 v0, 0x14

    .line 1853
    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_timeout:I

    if-lez v2, :cond_93

    .line 1854
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget v0, v0, Lcom/bzbs/bean/DashboardItem;->wallet_timeout:I

    .line 1857
    :cond_93
    const-string/jumbo v2, ""

    const v3, 0x7f090283

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3, v6, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:Landroid/app/ProgressDialog;

    .line 1858
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 1859
    new-instance v5, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v5}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 1860
    invoke-virtual {v5, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v5

    sget-boolean v6, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 1861
    invoke-virtual {v5, v6}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v5

    .line 1862
    invoke-virtual {v5, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 1863
    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 1864
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-object v4, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 1865
    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 1866
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(I)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 1867
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->c(I)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 1868
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(I)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v6

    new-instance v0, Lcom/samsung/privilege/activity/WalletCardActivity$22;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/WalletCardActivity$22;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;JLjava/lang/String;Ljava/lang/String;)V

    .line 1869
    invoke-virtual {v6, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1935
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_5
.end method

.method public doBack(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 2006
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->finish()V

    .line 2007
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .prologue
    .line 402
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 403
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->at:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 405
    const/4 v0, -0x1

    if-ne p2, v0, :cond_12

    iget v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aF:I

    if-ne p1, v0, :cond_12

    .line 419
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->g()V

    .line 421
    :cond_12
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 215
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 217
    const v0, 0x7f040058

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->setContentView(I)V

    .line 218
    const v0, 0x10300f0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->setTheme(I)V

    .line 220
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ar:Landroid/os/Handler;

    .line 222
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->at:Lcom/facebook/CallbackManager;

    .line 224
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->i()V

    .line 225
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->j()V

    .line 226
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->k()V

    .line 228
    new-instance v0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->az:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    .line 229
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ay:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->az:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 231
    const-string/jumbo v0, "getWalletCardList"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Ljava/lang/String;Z)V

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

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

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet Profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Lcom/bzbs/bean/DashboardItem;

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 385
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 387
    sget-object v0, Lcom/samsung/privilege/activity/WalletCardActivity;->aq:Ljava/lang/String;

    const-string/jumbo v1, "public void onPause() {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-static {}, Lcom/bzbs/event/WalletEvents;->a()V

    .line 390
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aJ:Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->b(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 391
    invoke-static {}, Lcom/bzbs/event/QueueEvents;->a()V

    .line 392
    invoke-static {}, Lcom/bzbs/event/DashboardEvents;->a()V

    .line 394
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aE:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    .line 395
    invoke-static {p0}, Lcom/samsung/privilege/util/ScreenUtil;->d(Landroid/app/Activity;)V

    .line 396
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aE:Z

    .line 398
    :cond_24
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 242
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 244
    sget-object v0, Lcom/samsung/privilege/activity/WalletCardActivity;->aq:Ljava/lang/String;

    const-string/jumbo v1, "public void onResume() {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    new-instance v0, Lcom/samsung/privilege/activity/WalletCardActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$1;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    invoke-static {v0}, Lcom/bzbs/event/WalletEvents;->a(Lcom/bzbs/event/WalletEvents$WalletListener;)V

    .line 278
    new-instance v0, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Lcom/samsung/privilege/activity/WalletCardActivity$1;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aJ:Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;

    .line 279
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aJ:Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->a(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 281
    new-instance v0, Lcom/samsung/privilege/activity/WalletCardActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$2;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    invoke-static {v0}, Lcom/bzbs/event/QueueEvents;->a(Lcom/bzbs/event/QueueEvents$QueueListener;)V

    .line 295
    new-instance v0, Lcom/samsung/privilege/activity/WalletCardActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$3;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    invoke-static {v0}, Lcom/bzbs/event/DashboardEvents;->a(Lcom/bzbs/event/DashboardEvents$DashboardListener;)V

    .line 318
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aH:Z

    if-nez v0, :cond_39

    .line 319
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(ZZ)V

    .line 321
    :cond_39
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aH:Z

    .line 322
    return-void
.end method
