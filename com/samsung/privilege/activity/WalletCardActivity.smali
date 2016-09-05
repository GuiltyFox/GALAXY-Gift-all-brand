.class public Lcom/samsung/privilege/activity/WalletCardActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "WalletCardActivity.java"


# static fields
.field private static ad:Ljava/lang/String;

.field private static av:Z


# instance fields
.field A:Landroid/widget/TextView;

.field public B:Landroid/widget/TextView;

.field public C:Landroid/widget/TextView;

.field public D:Landroid/widget/TextView;

.field E:Landroid/widget/TextView;

.field F:Landroid/widget/TextView;

.field G:Landroid/widget/ProgressBar;

.field H:Landroid/widget/ImageView;

.field I:Landroid/widget/TextView;

.field J:Landroid/widget/TextView;

.field K:Landroid/widget/RelativeLayout;

.field L:Landroid/widget/TextView;

.field protected M:Landroid/os/CountDownTimer;

.field N:Landroid/widget/ImageView;

.field O:Landroid/widget/TextView;

.field P:Landroid/widget/LinearLayout;

.field Q:Landroid/widget/TextView;

.field R:Landroid/widget/TextView;

.field S:Landroid/widget/TextView;

.field T:Landroid/widget/LinearLayout;

.field U:Landroid/widget/LinearLayout;

.field V:Landroid/widget/ImageView;

.field W:Landroid/widget/LinearLayout;

.field X:Landroid/widget/LinearLayout;

.field public Y:Landroid/widget/RelativeLayout;

.field Z:Landroid/widget/TextView;

.field a:Landroid/widget/ProgressBar;

.field public aa:Landroid/widget/RelativeLayout;

.field ab:Landroid/widget/RelativeLayout;

.field ac:Landroid/widget/LinearLayout;

.field private ae:Landroid/os/Handler;

.field private af:Landroid/app/ProgressDialog;

.field private ag:Lcom/facebook/CallbackManager;

.field private ah:Ljava/lang/String;

.field private ai:Ljava/lang/String;

.field private aj:Ljava/lang/String;

.field private ak:Ljava/lang/String;

.field private al:Ljava/lang/String;

.field private am:Ljava/lang/String;

.field private an:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private ao:Landroid/support/v7/widget/RecyclerView;

.field private ap:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

.field private aq:Landroid/support/v7/widget/RecyclerView;

.field private ar:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

.field private as:I

.field private at:Z

.field private au:Z

.field private aw:Ljava/lang/String;

.field private ax:Z

.field private ay:Z

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/LinearLayout;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/RelativeLayout;

.field f:Landroid/widget/RelativeLayout;

.field g:Landroid/widget/LinearLayout;

.field h:Landroid/widget/LinearLayout;

.field public i:Landroid/widget/TextView;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/ProgressBar;

.field l:Landroid/widget/ImageView;

.field m:Landroid/widget/RelativeLayout;

.field n:Landroid/widget/TextView;

.field o:Landroid/widget/ProgressBar;

.field p:Landroid/widget/ImageView;

.field q:Landroid/widget/RelativeLayout;

.field r:Landroid/widget/TextView;

.field s:Landroid/widget/TextView;

.field t:Landroid/widget/RelativeLayout;

.field u:Landroid/widget/ScrollView;

.field public v:Landroid/widget/LinearLayout;

.field public w:Landroid/widget/LinearLayout;

.field public x:Landroid/widget/LinearLayout;

.field y:Landroid/widget/TextView;

.field z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 82
    const-class v0, Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/activity/WalletCardActivity;->ad:Ljava/lang/String;

    .line 962
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/privilege/activity/WalletCardActivity;->av:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 89
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ah:Ljava/lang/String;

    .line 90
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ai:Ljava/lang/String;

    .line 91
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aj:Ljava/lang/String;

    .line 92
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ak:Ljava/lang/String;

    .line 93
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->al:Ljava/lang/String;

    .line 94
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->am:Ljava/lang/String;

    .line 102
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:I

    .line 171
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->at:Z

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Z

    .line 1209
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aw:Ljava/lang/String;

    .line 1210
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ax:Z

    .line 1514
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ay:Z

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WalletCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->af:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WalletCardActivity;Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;)Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ap:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WalletCardActivity;Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;)Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ar:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    return-object p1
.end method

.method private a(I)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1516
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ay:Z

    if-ne v0, v4, :cond_7

    .line 1670
    :goto_6
    return-void

    .line 1520
    :cond_7
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1521
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ab:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1522
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ac:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1524
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ap:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    if-eqz v0, :cond_28

    .line 1525
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ap:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1526
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ap:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->notifyDataSetChanged()V

    .line 1529
    :cond_28
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ae:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$15;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$15;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1538
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

    .line 1539
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

    .line 1540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&byConfig=true&config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->am:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1541
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1542
    if-eqz v1, :cond_106

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_106

    .line 1548
    :goto_95
    if-lez p1, :cond_af

    .line 1549
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

    .line 1552
    :cond_af
    sget-object v1, Lcom/samsung/privilege/activity/WalletCardActivity;->ad:Ljava/lang/String;

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

    .line 1553
    iput-boolean v4, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ay:Z

    .line 1554
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 1555
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 1556
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v4, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 1557
    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 1558
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1559
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 1560
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$16;

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/samsung/privilege/activity/WalletCardActivity$16;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;JI)V

    .line 1561
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1669
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_6

    .line 1545
    :cond_106
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

    goto/16 :goto_95
.end method

.method private a(Landroid/view/View;Landroid/view/View;ZZ)V
    .registers 12

    .prologue
    .line 1039
    const v0, 0x7f05004c

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 1040
    new-instance v0, Lcom/samsung/privilege/activity/WalletCardActivity$11;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/WalletCardActivity$11;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Landroid/view/View;Landroid/view/View;ZZ)V

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1086
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 1087
    invoke-virtual {p1, v6}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1088
    invoke-virtual {p1, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1089
    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WalletCardActivity;)V
    .registers 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->i()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WalletCardActivity;Landroid/view/View;Landroid/view/View;ZZ)V
    .registers 5

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Landroid/view/View;Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 236
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 239
    if-eqz v1, :cond_54

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    .line 240
    if-eqz v0, :cond_39

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 241
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 242
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Ljava/lang/String;)Z

    .line 243
    const-string/jumbo v0, ""

    .line 247
    :cond_39
    if-eqz v0, :cond_70

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    .line 249
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->i()V

    .line 250
    const-string/jumbo v0, "getWalletCardList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 251
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->b(Z)V

    .line 292
    :cond_54
    :goto_54
    return-void

    .line 252
    :cond_55
    const-string/jumbo v0, "doActivateCard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 253
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->B:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ah:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54

    .line 289
    :catch_6e
    move-exception v0

    goto :goto_54

    .line 257
    :cond_70
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 258
    const v0, 0x7f04012e

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 260
    const v0, 0x7f100169

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 261
    const v2, 0x7f090384

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    const v0, 0x7f100589

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 264
    new-instance v2, Lcom/samsung/privilege/activity/WalletCardActivity$1;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity$1;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    const v0, 0x7f10058b

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 276
    new-instance v2, Lcom/samsung/privilege/activity/WalletCardActivity$2;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity$2;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 283
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 284
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 286
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c9} :catch_6e

    goto :goto_54
.end method

.method private a(Ljava/lang/String;I)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1212
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ax:Z

    if-ne v0, v4, :cond_7

    .line 1323
    :goto_6
    return-void

    .line 1216
    :cond_7
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1217
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ab:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1218
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ac:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1220
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ar:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    if-eqz v0, :cond_27

    .line 1221
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ar:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1222
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ar:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;->notifyDataSetChanged()V

    .line 1226
    :cond_27
    :try_start_27
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->af:Landroid/app/ProgressDialog;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1227
    if-eqz v0, :cond_52

    .line 1228
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 1229
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1230
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_52} :catch_db

    .line 1236
    :cond_52
    :goto_52
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

    .line 1239
    if-lez p2, :cond_8d

    .line 1241
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

    .line 1244
    :cond_8d
    sget-object v1, Lcom/samsung/privilege/activity/WalletCardActivity;->ad:Ljava/lang/String;

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

    .line 1245
    iput-boolean v4, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ax:Z

    .line 1246
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 1247
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 1248
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 1249
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1250
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 1251
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$14;

    invoke-direct {v1, p0, p2}, Lcom/samsung/privilege/activity/WalletCardActivity$14;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;I)V

    .line 1252
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1322
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_6

    .line 1232
    :catch_db
    move-exception v0

    goto/16 :goto_52
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WalletCardActivity;Z)Z
    .registers 2

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->at:Z

    return p1
.end method

.method static synthetic a(Z)Z
    .registers 1

    .prologue
    .line 80
    sput-boolean p0, Lcom/samsung/privilege/activity/WalletCardActivity;->av:Z

    return p0
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ae:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/WalletCardActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/WalletCardActivity;Z)V
    .registers 2

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/WalletCardActivity;->b(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 9

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0xc

    const/4 v4, 0x4

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 589
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 590
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->K:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 591
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 592
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 593
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 594
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 595
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 596
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 599
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 601
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->Z:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 603
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->E:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ak:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->F:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->al:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->B:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ah:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 609
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 610
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 611
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 612
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 613
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 616
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->C:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v6, :cond_162

    .line 618
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->z:Landroid/widget/TextView;

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

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    :goto_cb
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->b(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ak:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 625
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ah:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->v(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 626
    if-eqz v0, :cond_169

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_169

    .line 627
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->i:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f090387

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

    const v2, 0x7f090369

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    :goto_12f
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->c:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$5;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$5;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 646
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$6;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$6;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 908
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->q:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$7;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$7;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 935
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->U:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$8;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$8;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 948
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->P:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$9;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$9;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 960
    return-void

    .line 620
    :cond_162
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_cb

    .line 629
    :cond_169
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->i:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090387

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " 0.00 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f090369

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12f
.end method

.method private b(Z)V
    .registers 6

    .prologue
    .line 1106
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

    .line 1107
    sget-object v1, Lcom/samsung/privilege/activity/WalletCardActivity;->ad:Ljava/lang/String;

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

    .line 1108
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->a:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1109
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 1110
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 1111
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 1112
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1113
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 1114
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$13;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/WalletCardActivity$13;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Z)V

    .line 1115
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1206
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 1207
    return-void
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/facebook/CallbackManager;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ag:Lcom/facebook/CallbackManager;

    return-object v0
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aw:Ljava/lang/String;

    return-object p1
.end method

.method private c(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ae:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$12;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/WalletCardActivity$12;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1099
    return-void
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/WalletCardActivity;Z)Z
    .registers 2

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ax:Z

    return p1
.end method

.method static synthetic d(Lcom/samsung/privilege/activity/WalletCardActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ah:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/WalletCardActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/samsung/privilege/activity/WalletCardActivity;Z)Z
    .registers 2

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ay:Z

    return p1
.end method

.method static synthetic e(Lcom/samsung/privilege/activity/WalletCardActivity;)V
    .registers 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->j()V

    return-void
.end method

.method static synthetic f()Ljava/lang/String;
    .registers 1

    .prologue
    .line 80
    sget-object v0, Lcom/samsung/privilege/activity/WalletCardActivity;->ad:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/samsung/privilege/activity/WalletCardActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ai:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->af:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private g()V
    .registers 3

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "wallet_issuer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ah:Ljava/lang/String;

    .line 370
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "wallet_issuer_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ai:Ljava/lang/String;

    .line 371
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "wallet_ga_label"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aj:Ljava/lang/String;

    .line 372
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "wallet_image_active"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ak:Ljava/lang/String;

    .line 373
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "wallet_image_inactive"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->al:Ljava/lang/String;

    .line 374
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "wallet_promotion"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->am:Ljava/lang/String;

    .line 375
    return-void
.end method

.method private h()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 378
    const v0, 0x7f1001f9

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->a:Landroid/widget/ProgressBar;

    .line 379
    const v0, 0x7f1001f7

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->b:Landroid/widget/ImageView;

    .line 381
    const v0, 0x7f100145

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->c:Landroid/widget/LinearLayout;

    .line 382
    const v0, 0x7f100146

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->d:Landroid/widget/TextView;

    .line 384
    const v0, 0x7f1001f6

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->e:Landroid/widget/RelativeLayout;

    .line 385
    const v0, 0x7f1001f5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->f:Landroid/widget/RelativeLayout;

    .line 387
    const v0, 0x7f1001fc

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->g:Landroid/widget/LinearLayout;

    .line 388
    const v0, 0x7f100143

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->h:Landroid/widget/LinearLayout;

    .line 389
    const v0, 0x7f1001f4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->i:Landroid/widget/TextView;

    .line 390
    const v0, 0x7f100164

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->j:Landroid/widget/TextView;

    .line 391
    const v0, 0x7f100201

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->k:Landroid/widget/ProgressBar;

    .line 392
    const v0, 0x7f1001ff

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->l:Landroid/widget/ImageView;

    .line 393
    const v0, 0x7f1001fd

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->m:Landroid/widget/RelativeLayout;

    .line 394
    const v0, 0x7f100200

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->n:Landroid/widget/TextView;

    .line 395
    const v0, 0x7f100205

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->o:Landroid/widget/ProgressBar;

    .line 396
    const v0, 0x7f100204

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->p:Landroid/widget/ImageView;

    .line 397
    const v0, 0x7f100202

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->q:Landroid/widget/RelativeLayout;

    .line 398
    const v0, 0x7f10015c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->r:Landroid/widget/TextView;

    .line 399
    const v0, 0x7f10015d

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->s:Landroid/widget/TextView;

    .line 400
    const v0, 0x7f1001f1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->t:Landroid/widget/RelativeLayout;

    .line 402
    const v0, 0x7f1001ed

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->u:Landroid/widget/ScrollView;

    .line 403
    const v0, 0x7f100206

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->v:Landroid/widget/LinearLayout;

    .line 404
    const v0, 0x7f100207

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->w:Landroid/widget/LinearLayout;

    .line 405
    const v0, 0x7f100209

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->x:Landroid/widget/LinearLayout;

    .line 406
    const v0, 0x7f100208

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->y:Landroid/widget/TextView;

    .line 407
    const v0, 0x7f1001f8

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->z:Landroid/widget/TextView;

    .line 408
    const v0, 0x7f10020a

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->A:Landroid/widget/TextView;

    .line 410
    const v0, 0x7f10020d

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->B:Landroid/widget/TextView;

    .line 411
    const v0, 0x7f10020e

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->C:Landroid/widget/TextView;

    .line 412
    const v0, 0x7f10020f

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->D:Landroid/widget/TextView;

    .line 413
    const v0, 0x7f100210

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->E:Landroid/widget/TextView;

    .line 414
    const v0, 0x7f100211

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->F:Landroid/widget/TextView;

    .line 415
    const v0, 0x7f100212

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->G:Landroid/widget/ProgressBar;

    .line 417
    const v0, 0x7f1006a3

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->H:Landroid/widget/ImageView;

    .line 418
    const v0, 0x7f1006a4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->I:Landroid/widget/TextView;

    .line 419
    const v0, 0x7f1006a5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->J:Landroid/widget/TextView;

    .line 421
    const v0, 0x7f10020b

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->K:Landroid/widget/RelativeLayout;

    .line 422
    const v0, 0x7f10020c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->L:Landroid/widget/TextView;

    .line 425
    const v0, 0x7f10014d

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->N:Landroid/widget/ImageView;

    .line 426
    const v0, 0x7f10014e

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->O:Landroid/widget/TextView;

    .line 427
    const v0, 0x7f1006a1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->P:Landroid/widget/LinearLayout;

    .line 428
    const v0, 0x7f100153

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->Q:Landroid/widget/TextView;

    .line 429
    const v0, 0x7f100154

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->R:Landroid/widget/TextView;

    .line 430
    const v0, 0x7f10012f

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->S:Landroid/widget/TextView;

    .line 431
    const v0, 0x7f10014c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->T:Landroid/widget/LinearLayout;

    .line 432
    const v0, 0x7f10012c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->U:Landroid/widget/LinearLayout;

    .line 433
    const v0, 0x7f10014b

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->V:Landroid/widget/ImageView;

    .line 434
    const v0, 0x7f10014f

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->W:Landroid/widget/LinearLayout;

    .line 435
    const v0, 0x7f100151

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->X:Landroid/widget/LinearLayout;

    .line 436
    const v0, 0x7f1001fa

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->Y:Landroid/widget/RelativeLayout;

    .line 437
    const v0, 0x7f1001fb

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->Z:Landroid/widget/TextView;

    .line 438
    const v0, 0x7f1006a6

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aa:Landroid/widget/RelativeLayout;

    .line 441
    const v0, 0x7f1001ee

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ab:Landroid/widget/RelativeLayout;

    .line 442
    const v0, 0x7f1001f0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ac:Landroid/widget/LinearLayout;

    .line 444
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    .line 445
    packed-switch v0, :pswitch_data_2b8

    .line 459
    iput v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:I

    .line 462
    :goto_265
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->an:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 464
    const v0, 0x7f1001f2

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ao:Landroid/support/v7/widget/RecyclerView;

    .line 465
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ao:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 466
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ao:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->an:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 467
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ao:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 469
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    iget v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:I

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->an:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 470
    const v0, 0x7f1001ef

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aq:Landroid/support/v7/widget/RecyclerView;

    .line 471
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aq:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->an:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 472
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aq:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 473
    return-void

    .line 447
    :pswitch_2aa
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:I

    goto :goto_265

    .line 450
    :pswitch_2ae
    iput v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:I

    goto :goto_265

    .line 453
    :pswitch_2b1
    iput v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:I

    goto :goto_265

    .line 456
    :pswitch_2b4
    iput v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:I

    goto :goto_265

    .line 445
    nop

    :pswitch_data_2b8
    .packed-switch 0x1
        :pswitch_2b4
        :pswitch_2b1
        :pswitch_2ae
        :pswitch_2aa
    .end packed-switch
.end method

.method static synthetic h(Lcom/samsung/privilege/activity/WalletCardActivity;)Z
    .registers 2

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->at:Z

    return v0
.end method

.method static synthetic i(Lcom/samsung/privilege/activity/WalletCardActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aw:Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    const/16 v3, 0x8

    .line 476
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->K:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 479
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 480
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 481
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 488
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->Z:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 490
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->E:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ak:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->F:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->al:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->B:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ah:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 502
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 503
    if-eqz v0, :cond_11c

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11c

    .line 504
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->y:Landroid/widget/TextView;

    const v1, 0x7f09036a

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 506
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 513
    :goto_a2
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->b(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->al:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 515
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->i:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090387

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " 0.00 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f090369

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_107

    .line 518
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->L:Landroid/widget/TextView;

    const v1, 0x7f0900c4

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 521
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->K:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 525
    :cond_107
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->m:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$3;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 544
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->w:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$4;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$4;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 586
    return-void

    .line 508
    :cond_11c
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->y:Landroid/widget/TextView;

    const v1, 0x7f090370

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_a2
.end method

.method static synthetic j(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ap:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    return-object v0
.end method

.method private j()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1480
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ab:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1481
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ac:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1483
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ap:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    if-eqz v0, :cond_1c

    .line 1484
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ap:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1485
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ap:Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WalletCardActivity$HistoryAdapter;->notifyDataSetChanged()V

    .line 1488
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cache_wallet_promotion_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->am:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LocalFileHelper;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1489
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9a

    .line 1491
    :try_start_43
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bzbs/bean/Campaign;->GetArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1493
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ar:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    if-eqz v1, :cond_89

    .line 1494
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ar:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1495
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ar:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;->a(Ljava/util/List;)V

    .line 1496
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ar:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;->notifyDataSetChanged()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_61} :catch_98

    .line 1505
    :goto_61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cache_wallet_promotion_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->am:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LocalFileHelper;->c(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v0

    .line 1506
    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_88

    .line 1507
    invoke-direct {p0, v4}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(I)V

    .line 1512
    :cond_88
    :goto_88
    return-void

    .line 1498
    :cond_89
    :try_start_89
    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    invoke-direct {v1, p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/util/List;)V

    iput-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ar:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    .line 1499
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aq:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ar:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_97} :catch_98

    goto :goto_61

    .line 1501
    :catch_98
    move-exception v0

    goto :goto_61

    .line 1510
    :cond_9a
    invoke-direct {p0, v4}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(I)V

    goto :goto_88
.end method

.method static synthetic k(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/support/v7/widget/RecyclerView;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ao:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic l(Lcom/samsung/privilege/activity/WalletCardActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->am:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ar:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    return-object v0
.end method

.method static synthetic n(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/support/v7/widget/RecyclerView;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aq:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic o(Lcom/samsung/privilege/activity/WalletCardActivity;)I
    .registers 2

    .prologue
    .line 80
    iget v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->as:I

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v6, 0x1

    .line 964
    sget-boolean v0, Lcom/samsung/privilege/activity/WalletCardActivity;->av:Z

    if-ne v0, v6, :cond_6

    .line 1036
    :goto_5
    return-void

    .line 967
    :cond_6
    sput-boolean v6, Lcom/samsung/privilege/activity/WalletCardActivity;->av:Z

    .line 969
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

    .line 970
    sget-object v1, Lcom/samsung/privilege/activity/WalletCardActivity;->ad:Ljava/lang/String;

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

    .line 972
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 977
    new-instance v2, Lcom/bzbs/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 978
    invoke-virtual {v2}, Lcom/bzbs/util/DeviceHelper;->d()Ljava/lang/String;

    move-result-object v2

    .line 980
    const-string/jumbo v3, "imei"

    invoke-virtual {v1, v3, v2}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 981
    sget-object v3, Lcom/samsung/privilege/activity/WalletCardActivity;->ad:Ljava/lang/String;

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

    .line 983
    const-string/jumbo v2, "issuer"

    invoke-virtual {v1, v2, p1}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 984
    sget-object v2, Lcom/samsung/privilege/activity/WalletCardActivity;->ad:Ljava/lang/String;

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

    .line 986
    const-string/jumbo v2, ""

    const v3, 0x7f090280

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3, v6, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->af:Landroid/app/ProgressDialog;

    .line 987
    new-instance v2, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 988
    invoke-virtual {v2, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    sget-boolean v3, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 989
    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    .line 990
    invoke-virtual {v2, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 991
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 992
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 993
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$10;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$10;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    .line 994
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1035
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_5
.end method

.method public doBack(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 1102
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->finish()V

    .line 1103
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .prologue
    .line 229
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 230
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ag:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 232
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 177
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 179
    const v0, 0x7f040056

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->setContentView(I)V

    .line 180
    const v0, 0x10300f0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->setTheme(I)V

    .line 182
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ae:Landroid/os/Handler;

    .line 184
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ag:Lcom/facebook/CallbackManager;

    .line 186
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->g()V

    .line 187
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->h()V

    .line 188
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WalletCardActivity;->i()V

    .line 190
    new-instance v0, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ar:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    .line 191
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->aq:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ar:Lcom/samsung/privilege/activity/WalletCardActivity$PromotionAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 193
    const-string/jumbo v0, "getWalletCardList"

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Ljava/lang/String;)V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ah:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ah:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ah:Ljava/lang/String;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet Profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->ah:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 216
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 218
    invoke-static {}, Lcom/bzbs/event/WalletEvents;->a()V

    .line 219
    invoke-static {}, Lcom/bzbs/event/LoginEvents;->a()V

    .line 221
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->at:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 222
    invoke-static {p0}, Lcom/samsung/privilege/util/ScreenUtil;->d(Landroid/app/Activity;)V

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->at:Z

    .line 225
    :cond_14
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 203
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 205
    new-instance v0, Lcom/samsung/privilege/activity/WalletCardActivity$CheckWalletListener;

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity$CheckWalletListener;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Lcom/samsung/privilege/activity/WalletCardActivity$1;)V

    invoke-static {v0}, Lcom/bzbs/event/WalletEvents;->a(Lcom/bzbs/event/WalletEvents$WalletListener;)V

    .line 206
    new-instance v0, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;Lcom/samsung/privilege/activity/WalletCardActivity$1;)V

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->a(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 208
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Z

    if-nez v0, :cond_1c

    .line 209
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->b(Z)V

    .line 211
    :cond_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity;->au:Z

    .line 212
    return-void
.end method
