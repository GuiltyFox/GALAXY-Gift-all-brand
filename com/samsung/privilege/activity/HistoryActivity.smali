.class public Lcom/samsung/privilege/activity/HistoryActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "HistoryActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/os/Handler;

.field private c:Landroid/app/ProgressDialog;

.field private d:Landroid/support/v7/widget/RecyclerView;

.field private e:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private f:Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 67
    const-class v0, Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity;->a:Ljava/lang/String;

    .line 76
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/HistoryActivity;->g:Z

    .line 77
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/HistoryActivity;->h:Z

    .line 125
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/privilege/activity/HistoryActivity;->l:J

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/HistoryActivity;J)J
    .registers 4

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/samsung/privilege/activity/HistoryActivity;->l:J

    return-wide p1
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/HistoryActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 65
    iput-object p1, p0, Lcom/samsung/privilege/activity/HistoryActivity;->c:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/HistoryActivity;)Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity;->e:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/HistoryActivity;Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;)Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;
    .registers 2

    .prologue
    .line 65
    iput-object p1, p0, Lcom/samsung/privilege/activity/HistoryActivity;->f:Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;

    return-object p1
.end method

.method private a(I)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 768
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/HistoryActivity;->g:Z

    if-ne v0, v4, :cond_6

    .line 864
    :goto_5
    return-void

    .line 772
    :cond_6
    const-string/jumbo v0, ""

    const v1, 0x7f0900e6

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity;->c:Landroid/app/ProgressDialog;

    .line 775
    :try_start_16
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity;->c:Landroid/app/ProgressDialog;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 776
    if-eqz v0, :cond_41

    .line 777
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 778
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 779
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_41} :catch_bf

    .line 790
    :cond_41
    :goto_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->W:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/redeem?config=purchase&byConfig=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 792
    if-lez p1, :cond_71

    .line 793
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

    .line 796
    :cond_71
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity;->a:Ljava/lang/String;

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

    .line 797
    iput-boolean v4, p0, Lcom/samsung/privilege/activity/HistoryActivity;->g:Z

    .line 798
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 799
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->V:Z

    .line 800
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 801
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 802
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 803
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/HistoryActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/HistoryActivity$6;-><init>(Lcom/samsung/privilege/activity/HistoryActivity;I)V

    .line 804
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 863
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_5

    .line 781
    :catch_bf
    move-exception v0

    goto :goto_41
.end method

.method private a(Lcom/bzbs/bean/Purchasing;Z)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 484
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 485
    if-eqz v0, :cond_75

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_75

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->W:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "api/redeem/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/bzbs/bean/Purchasing;->RedeemKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 487
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(getPurchaseItem) url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    new-instance v1, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 490
    const-string/jumbo v2, ""

    const v3, 0x7f0900e6

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/activity/HistoryActivity;->c:Landroid/app/ProgressDialog;

    .line 491
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;

    invoke-direct {v3, p0, p1, p2}, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;-><init>(Lcom/samsung/privilege/activity/HistoryActivity;Lcom/bzbs/bean/Purchasing;Z)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 493
    :cond_75
    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/HistoryActivity;I)V
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/HistoryActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/HistoryActivity;Lcom/bzbs/bean/Purchasing;Z)V
    .registers 3

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/HistoryActivity;->a(Lcom/bzbs/bean/Purchasing;Z)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/HistoryActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/HistoryActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity;->b:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/HistoryActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/HistoryActivity$1;-><init>(Lcom/samsung/privilege/activity/HistoryActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 736
    if-eqz p1, :cond_ab

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    .line 741
    :try_start_b
    new-instance v0, Lcom/bzbs/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 742
    const-string/jumbo v1, "<deviceId>"

    invoke-virtual {v0}, Lcom/bzbs/util/DeviceHelper;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 743
    const-string/jumbo v0, "<uid>"

    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/Profile;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2d} :catch_ac

    move-result-object v0

    .line 748
    :goto_2e
    :try_start_2e
    const-string/jumbo v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_54

    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_54

    .line 749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 751
    :cond_54
    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 752
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&redeem_key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&return_url=bzbs_return_url&cancel_url=bzbs_cancel_url"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 757
    :goto_8f
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/WebViewBookingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 758
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 759
    const-string/jumbo v0, "enable_webview_back"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 760
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/privilege/activity/HistoryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 765
    :cond_ab
    :goto_ab
    return-void

    .line 744
    :catch_ac
    move-exception v0

    move-object v0, p1

    goto :goto_2e

    .line 754
    :cond_af
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?redeem_key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&return_url=bzbs_return_url&cancel_url=bzbs_cancel_url"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_e0} :catch_e2

    move-result-object v0

    goto :goto_8f

    .line 761
    :catch_e2
    move-exception v0

    goto :goto_ab
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/HistoryActivity;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/HistoryActivity;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/HistoryActivity;Z)Z
    .registers 2

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/HistoryActivity;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/HistoryActivity;I)I
    .registers 2

    .prologue
    .line 65
    iput p1, p0, Lcom/samsung/privilege/activity/HistoryActivity;->j:I

    return p1
.end method

.method private b(Lcom/bzbs/bean/Purchasing;Z)V
    .registers 9

    .prologue
    const/4 v5, 0x1

    .line 496
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 497
    if-eqz v0, :cond_7c

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->W:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "api/redeem/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/bzbs/bean/Purchasing;->RedeemKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/use"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 499
    iget-object v2, p0, Lcom/samsung/privilege/activity/HistoryActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(getPurchaseItem) url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    new-instance v2, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v2}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 502
    const-string/jumbo v3, "token"

    invoke-virtual {v2, v3, v0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 507
    const-string/jumbo v3, ""

    const v4, 0x7f0900e6

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/privilege/activity/HistoryActivity;->c:Landroid/app/ProgressDialog;

    .line 508
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;

    invoke-direct {v4, p0, p1, p2}, Lcom/samsung/privilege/activity/HistoryActivity$PurchaseItemListener;-><init>(Lcom/samsung/privilege/activity/HistoryActivity;Lcom/bzbs/bean/Purchasing;Z)V

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 510
    :cond_7c
    return-void
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/HistoryActivity;Lcom/bzbs/bean/Purchasing;Z)V
    .registers 3

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/HistoryActivity;->b(Lcom/bzbs/bean/Purchasing;Z)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/HistoryActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/HistoryActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/HistoryActivity;)Z
    .registers 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/HistoryActivity;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/HistoryActivity;Z)Z
    .registers 2

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/HistoryActivity;->g:Z

    return p1
.end method

.method private b(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 472
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 475
    const/4 v2, 0x1

    :try_start_6
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_9} :catch_a

    .line 480
    :goto_9
    return v0

    .line 477
    :catch_a
    move-exception v0

    .line 478
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/HistoryActivity;I)I
    .registers 2

    .prologue
    .line 65
    iput p1, p0, Lcom/samsung/privilege/activity/HistoryActivity;->k:I

    return p1
.end method

.method private c(Lcom/bzbs/bean/Purchasing;Z)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 660
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 661
    if-eqz v0, :cond_9a

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->W:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/campaign/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/bzbs/bean/Purchasing;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/winner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 664
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(getWinnerData) url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 669
    const-string/jumbo v2, ""

    const v3, 0x7f0900e6

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/HistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/activity/HistoryActivity;->c:Landroid/app/ProgressDialog;

    .line 670
    new-instance v2, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 671
    invoke-virtual {v2, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    sget-boolean v3, Lcom/bzbs/data/AppSetting;->V:Z

    .line 672
    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    .line 673
    invoke-virtual {v2, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 674
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 675
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 676
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/HistoryActivity$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/privilege/activity/HistoryActivity$5;-><init>(Lcom/samsung/privilege/activity/HistoryActivity;Lcom/bzbs/bean/Purchasing;Z)V

    .line 677
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 731
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 733
    :cond_9a
    return-void
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/HistoryActivity;Lcom/bzbs/bean/Purchasing;Z)V
    .registers 3

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/HistoryActivity;->c(Lcom/bzbs/bean/Purchasing;Z)V

    return-void
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/HistoryActivity;)Z
    .registers 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/HistoryActivity;->h:Z

    return v0
.end method

.method static synthetic d(Lcom/samsung/privilege/activity/HistoryActivity;)I
    .registers 2

    .prologue
    .line 65
    iget v0, p0, Lcom/samsung/privilege/activity/HistoryActivity;->j:I

    return v0
.end method

.method static synthetic d(Lcom/samsung/privilege/activity/HistoryActivity;I)I
    .registers 2

    .prologue
    .line 65
    iput p1, p0, Lcom/samsung/privilege/activity/HistoryActivity;->i:I

    return p1
.end method

.method static synthetic e(Lcom/samsung/privilege/activity/HistoryActivity;)I
    .registers 2

    .prologue
    .line 65
    iget v0, p0, Lcom/samsung/privilege/activity/HistoryActivity;->i:I

    return v0
.end method

.method static synthetic f(Lcom/samsung/privilege/activity/HistoryActivity;)I
    .registers 2

    .prologue
    .line 65
    iget v0, p0, Lcom/samsung/privilege/activity/HistoryActivity;->k:I

    return v0
.end method

.method private f()V
    .registers 3

    .prologue
    .line 114
    const v0, 0x7f10016a

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity;->d:Landroid/support/v7/widget/RecyclerView;

    .line 115
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity;->d:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 117
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity;->e:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 118
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity;->e:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 119
    return-void
.end method

.method static synthetic g(Lcom/samsung/privilege/activity/HistoryActivity;)J
    .registers 3

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/samsung/privilege/activity/HistoryActivity;->l:J

    return-wide v0
.end method

.method private g()V
    .registers 4

    .prologue
    .line 127
    const v0, 0x7f10011d

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 128
    new-instance v1, Lcom/samsung/privilege/activity/HistoryActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/HistoryActivity$2;-><init>(Lcom/samsung/privilege/activity/HistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 135
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity;->d:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/samsung/privilege/activity/HistoryActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/HistoryActivity$3;-><init>(Lcom/samsung/privilege/activity/HistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 151
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity;->d:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bzbs/event/RecyclerItemClickListener;

    new-instance v2, Lcom/samsung/privilege/activity/HistoryActivity$4;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/HistoryActivity$4;-><init>(Lcom/samsung/privilege/activity/HistoryActivity;)V

    invoke-direct {v1, p0, v2}, Lcom/bzbs/event/RecyclerItemClickListener;-><init>(Landroid/content/Context;Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 469
    return-void
.end method

.method static synthetic h(Lcom/samsung/privilege/activity/HistoryActivity;)Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity;->f:Lcom/samsung/privilege/activity/HistoryActivity$HistoryAdapter;

    return-object v0
.end method

.method static synthetic i(Lcom/samsung/privilege/activity/HistoryActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/samsung/privilege/activity/HistoryActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity;->c:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic k(Lcom/samsung/privilege/activity/HistoryActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lcom/samsung/privilege/activity/HistoryActivity;)Landroid/support/v7/widget/RecyclerView;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity;->d:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryActivity;->finish()V

    .line 123
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const v0, 0x7f040033

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/HistoryActivity;->setContentView(I)V

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/HistoryActivity;->b:Landroid/os/Handler;

    .line 88
    const v0, 0x7f1000be

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/HistoryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 90
    invoke-direct {p0}, Lcom/samsung/privilege/activity/HistoryActivity;->f()V

    .line 91
    invoke-direct {p0}, Lcom/samsung/privilege/activity/HistoryActivity;->g()V

    .line 93
    const-string/jumbo v0, "History"

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 98
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/HistoryActivity;->a(I)V

    .line 101
    return-void
.end method
