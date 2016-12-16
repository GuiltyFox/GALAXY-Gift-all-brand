.class public Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;
.super Landroid/support/v4/app/Fragment;
.source "DashboardGiftRecyclerFragment.java"


# static fields
.field public static a:I

.field public static b:I


# instance fields
.field public c:Lcom/samsung/privilege/holder/DashboardHolder_wallet;

.field private d:Ljava/lang/String;

.field private e:Landroid/view/View;

.field private f:Landroid/os/Handler;

.field private g:Landroid/app/ProgressDialog;

.field private h:Landroid/graphics/Typeface;

.field private i:Landroid/support/v7/widget/RecyclerView;

.field private j:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

.field private l:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Lcom/facebook/CallbackManager;

.field private q:Ljava/util/TimerTask;

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 111
    sput v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a:I

    .line 112
    sput v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 104
    const-class v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->d:Ljava/lang/String;

    .line 121
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->m:Ljava/lang/String;

    .line 123
    iput-boolean v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->n:Z

    .line 124
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->o:Ljava/lang/String;

    .line 2572
    iput-boolean v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->r:Z

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;)Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;
    .registers 2

    .prologue
    .line 102
    iput-object p1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->l:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;)Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;
    .registers 2

    .prologue
    .line 102
    iput-object p1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .registers 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->e:Landroid/view/View;

    const v1, 0x7f10064a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->i:Landroid/support/v7/widget/RecyclerView;

    .line 245
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->i:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 247
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->j:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 248
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->j:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 249
    return-void
.end method

.method private a(JLandroid/support/v4/view/ViewPager;)V
    .registers 11

    .prologue
    .line 206
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->q:Ljava/util/TimerTask;

    if-eqz v0, :cond_9

    .line 207
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->q:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 210
    :cond_9
    new-instance v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$1;

    invoke-direct {v0, p0, p3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$1;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->q:Ljava/util/TimerTask;

    .line 230
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->q:Ljava/util/TimerTask;

    move-wide v2, p1

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 231
    return-void
.end method

.method private a(Lcom/bzbs/bean/DashboardItem;)V
    .registers 9

    .prologue
    const v4, 0x7f0903aa

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2306
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_c

    .line 2570
    :cond_b
    :goto_b
    return-void

    .line 2310
    :cond_c
    const-string/jumbo v0, "Click"

    invoke-direct {p0, v0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Ljava/lang/String;Lcom/bzbs/bean/DashboardItem;)V

    .line 2313
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "campaign"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bb

    .line 2314
    iget-boolean v0, p1, Lcom/bzbs/bean/DashboardItem;->autoredeem:Z

    if-ne v0, v2, :cond_178

    .line 2315
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 2316
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0900c4

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_b

    .line 2318
    :cond_3a
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2319
    if-eqz v0, :cond_10e

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e

    .line 2321
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v3, p1, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bzbs/data/UserLogin;->r(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2322
    if-eqz v3, :cond_c4

    const-string/jumbo v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c4

    .line 2323
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    if-eqz v0, :cond_c2

    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c2

    move v0, v1

    .line 2332
    :goto_76
    if-ne v0, v2, :cond_c6

    .line 2333
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2334
    const v2, 0x7f09040b

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2335
    const v2, 0x7f0900bb

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090348

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$8;

    invoke-direct {v3, p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$8;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09035a

    .line 2341
    invoke-virtual {p0, v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$7;

    invoke-direct {v3, p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$7;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2351
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2352
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_b

    :cond_c2
    move v0, v2

    .line 2326
    goto :goto_76

    :cond_c4
    move v0, v2

    .line 2329
    goto :goto_76

    .line 2355
    :cond_c6
    :try_start_c6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v0, v4, :cond_e2

    .line 2357
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v4, "clipboard"

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 2358
    invoke-virtual {v0, v3}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 2360
    const-string/jumbo v0, "Your discount code is already in clipboard."

    invoke-direct {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Ljava/lang/String;)V
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_e2} :catch_612

    .line 2366
    :cond_e2
    :goto_e2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2367
    const-string/jumbo v4, "url"

    iget-object v5, p1, Lcom/bzbs/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2368
    const-string/jumbo v4, "serial"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2369
    const-string/jumbo v3, "enable_webview_back"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2370
    const-string/jumbo v2, "hide_serial"

    iget-boolean v3, p1, Lcom/bzbs/bean/DashboardItem;->autoredeem_hideserial:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2371
    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_b

    .line 2374
    :cond_10e
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/privilege/activity/DashboardActivity;

    if-eqz v0, :cond_147

    .line 2375
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->f:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/activity/DashboardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/DashboardActivity;->a:Lcom/facebook/CallbackManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Dashboard "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "header_en"

    invoke-direct {p0, v4}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "autoredeem"

    invoke-static {v1, v2, v0, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 2377
    :cond_147
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->f:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/activity/MainPagerActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Dashboard "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "header_en"

    invoke-direct {p0, v4}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "autoredeem"

    invoke-static {v1, v2, v0, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 2382
    :cond_178
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->campaigndetail_layout:Ljava/lang/String;

    const-string/jumbo v1, "premium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19f

    .line 2387
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2389
    const-string/jumbo v1, "campaign_id"

    iget v2, p1, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2390
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_b

    .line 2392
    :cond_19f
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2394
    const-string/jumbo v1, "campaign_id"

    iget v2, p1, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2395
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_b

    .line 2398
    :cond_1bb
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "bzbs_campaign"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_204

    .line 2404
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2405
    new-instance v2, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-direct {v2}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;-><init>()V

    .line 2406
    iget v3, p1, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setID(Ljava/lang/String;)V

    .line 2407
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2408
    const-string/jumbo v4, "ItemMarketPlace"

    invoke-static {v2}, Lorg/parceler/Parcels;->a(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2409
    const-string/jumbo v2, "ItemMarketPlace::Ads::Ins"

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2410
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2411
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_b

    .line 2412
    :cond_204
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "bzbs_campaign_ads"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24d

    .line 2418
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2419
    new-instance v1, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-direct {v1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;-><init>()V

    .line 2420
    iget v3, p1, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setID(Ljava/lang/String;)V

    .line 2421
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2422
    const-string/jumbo v4, "ItemMarketPlace"

    invoke-static {v1}, Lorg/parceler/Parcels;->a(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2423
    const-string/jumbo v1, "ItemMarketPlace::Ads::Ins"

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2424
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2425
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_b

    .line 2426
    :cond_24d
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "cat"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_269

    .line 2427
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/activity/MainPagerActivity;

    .line 2428
    iget-object v1, p1, Lcom/bzbs/bean/DashboardItem;->cat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 2429
    :cond_269
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2431
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "link"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29a

    .line 2432
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    iget-object v2, p1, Lcom/bzbs/bean/DashboardItem;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2433
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_b

    .line 2434
    :cond_29a
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "webview"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c5

    .line 2435
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2436
    const-string/jumbo v1, "url"

    iget-object v2, p1, Lcom/bzbs/bean/DashboardItem;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2437
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_b

    .line 2438
    :cond_2c5
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "openapp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3cf

    .line 2440
    :try_start_2d4
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p1, Lcom/bzbs/bean/DashboardItem;->and_ns:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2e1
    .catch Ljava/lang/Exception; {:try_start_2d4 .. :try_end_2e1} :catch_37f

    move-result-object v2

    .line 2443
    :try_start_2e2
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->and_ns_params:Ljava/lang/String;

    if-eqz v0, :cond_37a

    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->and_ns_params:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37a

    .line 2444
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->and_ns_params:Ljava/lang/String;

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 2445
    :goto_2fb
    array-length v1, v3
    :try_end_2fc
    .catch Ljava/lang/Exception; {:try_start_2e2 .. :try_end_2fc} :catch_379

    if-ge v0, v1, :cond_37a

    .line 2447
    :try_start_2fe
    aget-object v1, v3, v0

    const-string/jumbo v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2448
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 2449
    const/4 v5, 0x1

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2450
    const-string/jumbo v5, "<"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_375

    .line 2451
    const-string/jumbo v5, ">"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2452
    const/4 v5, 0x0

    aget-object v5, v1, v5

    const-string/jumbo v6, "<int"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33e

    .line 2453
    const/4 v5, 0x1

    aget-object v1, v1, v5

    invoke-static {v1}, Lcom/bzbs/util/BBUtil;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2445
    :goto_33b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2fb

    .line 2455
    :cond_33e
    const/4 v5, 0x0

    aget-object v5, v1, v5

    const-string/jumbo v6, "<double"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_357

    .line 2456
    const/4 v5, 0x1

    aget-object v1, v1, v5

    invoke-static {v1}, Lcom/bzbs/util/BBUtil;->a(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_33b

    .line 2469
    :catch_355
    move-exception v1

    goto :goto_33b

    .line 2458
    :cond_357
    const/4 v5, 0x0

    aget-object v5, v1, v5

    const-string/jumbo v6, "<boolean"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36e

    .line 2459
    const/4 v5, 0x1

    aget-object v1, v1, v5

    invoke-static {v1}, Lcom/bzbs/util/BBUtil;->d(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_33b

    .line 2462
    :cond_36e
    const/4 v5, 0x1

    aget-object v1, v1, v5

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_33b

    .line 2466
    :cond_375
    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_378
    .catch Ljava/lang/Exception; {:try_start_2fe .. :try_end_378} :catch_355

    goto :goto_33b

    .line 2474
    :catch_379
    move-exception v0

    .line 2478
    :cond_37a
    :try_start_37a
    invoke-virtual {p0, v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_37d
    .catch Ljava/lang/Exception; {:try_start_37a .. :try_end_37d} :catch_37f

    goto/16 :goto_b

    .line 2479
    :catch_37f
    move-exception v0

    .line 2481
    :try_start_380
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/bzbs/bean/DashboardItem;->and_ns:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_3a5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_380 .. :try_end_3a5} :catch_3a7

    goto/16 :goto_b

    .line 2482
    :catch_3a7
    move-exception v0

    .line 2483
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/bzbs/bean/DashboardItem;->and_ns:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_b

    .line 2488
    :cond_3cf
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bzbs_market"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f2

    .line 2494
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2495
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_b

    .line 2496
    :cond_3f2
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bzbs_market_cate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_410

    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bzbs_cat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42c

    .line 2503
    :cond_410
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2504
    const-string/jumbo v1, "catId"

    iget-object v2, p1, Lcom/bzbs/bean/DashboardItem;->cat:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2505
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_b

    .line 2506
    :cond_42c
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bzbs_dashboard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44f

    .line 2512
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2513
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_b

    .line 2514
    :cond_44f
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sub_dashboard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_493

    .line 2515
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/DashboardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2516
    const-string/jumbo v1, "header_en"

    iget-object v2, p1, Lcom/bzbs/bean/DashboardItem;->ga_label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2517
    const-string/jumbo v1, "header"

    iget-object v2, p1, Lcom/bzbs/bean/DashboardItem;->ga_label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2518
    const-string/jumbo v1, "cat"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2519
    const-string/jumbo v1, "dashboard_key"

    iget-object v2, p1, Lcom/bzbs/bean/DashboardItem;->sub_dashboard_key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2520
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_b

    .line 2521
    :cond_493
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wallet_transfer_truemoney"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4dc

    .line 2523
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p1, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->v(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2524
    const-string/jumbo v1, "0.00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c7

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c7

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d4

    .line 2525
    :cond_4c7
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 2527
    :cond_4d4
    const-string/jumbo v0, ""

    invoke-direct {p0, p1, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 2529
    :cond_4dc
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wallet_transfer_t2p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_522

    .line 2531
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p1, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->v(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2532
    const-string/jumbo v1, "0.00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_510

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_510

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51d

    .line 2533
    :cond_510
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 2536
    :cond_51d
    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b(Lcom/bzbs/bean/DashboardItem;)V

    goto/16 :goto_b

    .line 2538
    :cond_522
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2539
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->menu:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "newsfeeds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2541
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->menu:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "activities"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2543
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->menu:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "friends"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2545
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->menu:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bzbs_fanpage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2547
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->menu:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "badges"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2549
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->menu:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "marketplace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2551
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->menu:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "checkins"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2553
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->menu:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "my_profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5bd

    .line 2554
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2555
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_b

    .line 2556
    :cond_5bd
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->menu:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "qr_code"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e0

    .line 2557
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/QRLandingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2558
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_b

    .line 2559
    :cond_5e0
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->menu:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "inapps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2561
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->menu:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "about_us"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2562
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/AboutUsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2563
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_b

    .line 2362
    :catch_612
    move-exception v0

    goto/16 :goto_e2
.end method

.method private a(Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 2829
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

    .line 2830
    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doWalletTransfer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2831
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, ""

    const v3, 0x7f090282

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->g:Landroid/app/ProgressDialog;

    .line 2832
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 2833
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 2834
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 2835
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2836
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 2837
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$13;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;)V

    .line 2838
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2897
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 2898
    return-void
.end method

.method private a(Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 2901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->V:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wallet/transfer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2902
    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doWalletTransferT2P="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2904
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 2905
    const-string/jumbo v2, "cardId"

    invoke-virtual {v1, v2, p2}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 2906
    iget-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cardId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2908
    const-string/jumbo v2, "dest"

    const-string/jumbo v3, "t2p"

    invoke-virtual {v1, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 2909
    iget-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->d:Ljava/lang/String;

    const-string/jumbo v3, "dest=t2p"

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2911
    const-string/jumbo v2, "contact_number"

    invoke-virtual {v1, v2, p3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 2912
    iget-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "contact_number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2914
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string/jumbo v3, ""

    const v4, 0x7f090282

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->g:Landroid/app/ProgressDialog;

    .line 2915
    new-instance v2, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 2916
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    sget-boolean v3, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 2917
    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    .line 2918
    invoke-virtual {v2, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2919
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2920
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 2921
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$14;

    invoke-direct {v1, p0, p1, p3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$14;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;)V

    .line 2922
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2960
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 2961
    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;JLandroid/support/v4/view/ViewPager;)V
    .registers 5

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(JLandroid/support/v4/view/ViewPager;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/bzbs/bean/DashboardItem;)V
    .registers 2

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Lcom/bzbs/bean/DashboardItem;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b(Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;Lcom/bzbs/bean/DashboardItem;)V
    .registers 3

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Ljava/lang/String;Lcom/bzbs/bean/DashboardItem;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .registers 5

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 3

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->d(Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 234
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->f:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$2;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 241
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/bzbs/bean/DashboardItem;)V
    .registers 9

    .prologue
    const-wide/16 v4, 0x1

    .line 2284
    if-eqz p2, :cond_68

    .line 2285
    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v1, "campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 2286
    iget-boolean v0, p2, Lcom/bzbs/bean/DashboardItem;->autoredeem:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_69

    .line 2287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Dashboard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "header_en"

    invoke-direct {p0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Campaign Autoredeem"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p2, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/bzbs/bean/DashboardItem;->GetCampaignNameForGA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 2303
    :cond_68
    :goto_68
    return-void

    .line 2289
    :cond_69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Dashboard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "header_en"

    invoke-direct {p0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Campaign Banner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p2, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/bzbs/bean/DashboardItem;->GetCampaignNameForGA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_68

    .line 2291
    :cond_be
    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v1, "bzbs_campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d4

    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v1, "bzbs_campaign_ads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12a

    .line 2292
    :cond_d4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Dashboard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "header_en"

    invoke-direct {p0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " BZB Campaign Banner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p2, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/bzbs/bean/DashboardItem;->GetCampaignNameForGA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_68

    .line 2293
    :cond_12a
    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v1, "cat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18b

    .line 2294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Dashboard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "header_en"

    invoke-direct {p0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Category Banner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lcom/bzbs/bean/DashboardItem;->cat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/bzbs/bean/DashboardItem;->GetCategoryNameForGA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_68

    .line 2295
    :cond_18b
    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v1, "bzbs_cat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ec

    .line 2296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Dashboard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "header_en"

    invoke-direct {p0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " BZB Category Banner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lcom/bzbs/bean/DashboardItem;->cat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/bzbs/bean/DashboardItem;->GetCategoryNameForGA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_68

    .line 2298
    :cond_1ec
    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->ga_label:Ljava/lang/String;

    if-eqz v0, :cond_68

    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->ga_label:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 2299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Dashboard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "header_en"

    invoke-direct {p0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/bzbs/bean/DashboardItem;->ga_label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/bzbs/bean/DashboardItem;->ga_label:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_68
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/DashboardItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 546
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

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?device_app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 549
    if-eqz p1, :cond_59

    const-string/jumbo v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&locationagencyid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 552
    :cond_59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&byConfig=true&config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&format=json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 554
    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "premium_load="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 556
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 557
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 558
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 559
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 560
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$5;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$5;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 601
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 602
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/DashboardItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 522
    const/4 v0, 0x1

    if-ne p4, v0, :cond_7

    .line 523
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 542
    :cond_6
    :goto_6
    return-void

    .line 525
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "dashboard_premium_data_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LocalFileHelper;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 526
    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "catch_premium_data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    .line 529
    :try_start_50
    invoke-direct {p0, v0, p3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_8a

    .line 534
    :goto_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "dashboard_premium_data_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LocalFileHelper;->c(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v0

    .line 535
    sget v2, Lcom/bzbs/data/AppSetting;->Z:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 536
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_6

    .line 539
    :cond_85
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_6

    .line 530
    :catch_8a
    move-exception v0

    goto :goto_53
.end method

.method private a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/DashboardItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 606
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_140

    .line 607
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 609
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 610
    const-string/jumbo v0, ""

    move v2, v1

    .line 611
    :goto_15
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_13f

    move-result v0

    if-ge v2, v0, :cond_141

    .line 613
    :try_start_1b
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 615
    const-string/jumbo v5, "CategoryName"

    invoke-static {v0, v5}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 626
    new-instance v5, Lcom/bzbs/bean/DashboardItem;

    invoke-direct {v5}, Lcom/bzbs/bean/DashboardItem;-><init>()V

    .line 627
    const-string/jumbo v6, "campaign"

    iput-object v6, v5, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    .line 628
    const-string/jumbo v6, "small"

    iput-object v6, v5, Lcom/bzbs/bean/DashboardItem;->size:Ljava/lang/String;

    .line 629
    const-string/jumbo v6, "ID"

    invoke-static {v0, v6}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/bzbs/bean/DashboardItem;->id:I

    .line 630
    const-string/jumbo v6, "AgencyName"

    invoke-static {v0, v6}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bzbs/bean/DashboardItem;->line1:Ljava/lang/String;

    .line 631
    const-string/jumbo v6, "Name"

    invoke-static {v0, v6}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bzbs/bean/DashboardItem;->line2:Ljava/lang/String;

    .line 632
    const-string/jumbo v6, "Type"

    invoke-static {v0, v6}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bzbs/bean/DashboardItem;->campaigntype:Ljava/lang/String;

    .line 633
    const-string/jumbo v6, "PointPerUnit"

    invoke-static {v0, v6}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/bzbs/bean/DashboardItem;->campaignpoint:I

    .line 634
    const-string/jumbo v6, "Barcode"

    invoke-static {v0, v6}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bzbs/bean/DashboardItem;->campaignbarcode:Ljava/lang/String;

    .line 635
    const-string/jumbo v6, "Discount"

    invoke-static {v0, v6}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/bzbs/bean/DashboardItem;->campaigndiscount:I

    .line 636
    const-string/jumbo v6, "FullImageUrl"

    invoke-static {v0, v6}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bzbs/bean/DashboardItem;->image_url:Ljava/lang/String;

    .line 637
    const-string/jumbo v6, "premium"

    iput-object v6, v5, Lcom/bzbs/bean/DashboardItem;->dashboard_layout:Ljava/lang/String;

    .line 638
    const-string/jumbo v6, "premium"

    iput-object v6, v5, Lcom/bzbs/bean/DashboardItem;->campaigndetail_layout:Ljava/lang/String;

    .line 639
    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/bzbs/bean/DashboardItem;->autoredeem:Z

    .line 641
    new-instance v6, Ljava/text/DecimalFormat;

    const-string/jumbo v7, "#,###,###"

    invoke-direct {v6, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 642
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const v9, 0x7f0900d1

    invoke-virtual {v8, v9}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "Qty"

    invoke-static {v0, v8}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v6, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bzbs/bean/DashboardItem;->campaignremaining:Ljava/lang/String;

    .line 644
    const-string/jumbo v6, "ExpireDate"

    invoke-static {v0, v6}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    const-string/jumbo v8, "CurrentDate"

    invoke-static {v0, v8}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 645
    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_116

    .line 646
    const-wide/32 v8, 0x15180

    div-long/2addr v6, v8

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0900d2

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v6, 0x7f0900d3

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/bzbs/bean/DashboardItem;->campaignstatus:Ljava/lang/String;

    .line 652
    :goto_10e
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    :goto_111
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_15

    .line 649
    :cond_116
    const v0, 0x7f0900d4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/bzbs/bean/DashboardItem;->campaignstatus:Ljava/lang/String;
    :try_end_11f
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_11f} :catch_120
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_11f} :catch_13f

    goto :goto_10e

    .line 655
    :catch_120
    move-exception v0

    .line 656
    :try_start_121
    iget-object v5, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->d:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "(processJsonPremium):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_111

    .line 674
    :catch_13f
    move-exception v0

    .line 677
    :cond_140
    :goto_140
    return-void

    .line 660
    :cond_141
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 661
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 663
    :goto_149
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_163

    .line 664
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/DashboardItem;

    .line 666
    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v4, "hashtag"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_167

    .line 667
    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 672
    :cond_163
    invoke-direct {p0, v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->c(Ljava/util/ArrayList;)V
    :try_end_166
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_166} :catch_13f

    goto :goto_140

    .line 663
    :cond_167
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_149
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Z)Z
    .registers 2

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    iput-object p1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->m:Ljava/lang/String;

    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 321
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 322
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_1a

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 332
    :goto_19
    return-object v0

    .line 326
    :cond_1a
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 329
    :cond_27
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_34

    move-result-object v0

    goto :goto_19

    .line 331
    :catch_34
    move-exception v0

    .line 332
    const-string/jumbo v0, ""

    goto :goto_19
.end method

.method private b()V
    .registers 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->e:Landroid/view/View;

    const v1, 0x7f100111

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 253
    new-instance v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$3;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 259
    return-void
.end method

.method private b(Lcom/bzbs/bean/DashboardItem;)V
    .registers 8

    .prologue
    .line 2745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/profile/me"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2746
    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doWalletCheckProfile="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2747
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, ""

    const v3, 0x7f090282

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->g:Landroid/app/ProgressDialog;

    .line 2748
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 2749
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 2750
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 2751
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2752
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 2753
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$10;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$10;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/bzbs/bean/DashboardItem;)V

    .line 2754
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2786
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 2787
    return-void
.end method

.method private b(Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 2965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/redeem?campaignId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&type=list2&mode=all"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2966
    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(getLastRedeemCode)url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2967
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 2968
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 2969
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 2970
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2971
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 2972
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$15;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;)V

    .line 2973
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 3051
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 3052
    return-void
.end method

.method static synthetic b(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/bzbs/bean/DashboardItem;)V
    .registers 2

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->doRedeem(Lcom/bzbs/bean/DashboardItem;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->c(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Z)Z
    .registers 2

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->r:Z

    return p1
.end method

.method static synthetic c(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Landroid/view/View;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->e:Landroid/view/View;

    return-object v0
.end method

.method private c()V
    .registers 7

    .prologue
    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->i:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_9e

    .line 264
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRecyclerDashboard.getChildCount()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const/4 v0, 0x0

    move v2, v0

    :goto_25
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_9e

    .line 266
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 267
    const v0, 0x7f10021e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 268
    const v3, 0x7f1001fa

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 269
    if-eqz v0, :cond_92

    .line 270
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    iget-object v3, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "issuer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/bzbs/data/UserLogin;->v(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    if-eqz v0, :cond_96

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_96

    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " THB"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :cond_92
    :goto_92
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_25

    .line 276
    :cond_96
    const-string/jumbo v0, "0 THB"

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9c} :catch_9d

    goto :goto_92

    .line 281
    :catch_9d
    move-exception v0

    .line 284
    :cond_9e
    return-void
.end method

.method private c(Lcom/bzbs/bean/DashboardItem;)V
    .registers 6

    .prologue
    .line 2790
    new-instance v2, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x1030010

    invoke-direct {v2, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2792
    const v0, 0x7f040132

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 2794
    const v0, 0x7f1001d0

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 2796
    const v1, 0x7f10016d

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 2797
    new-instance v3, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$11;

    invoke-direct {v3, p0, v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$11;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Landroid/app/Dialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2803
    const v1, 0x7f100586

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 2804
    new-instance v3, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$12;

    invoke-direct {v3, p0, v0, v2, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$12;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Landroid/widget/EditText;Landroid/app/Dialog;Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2821
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2822
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2823
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2825
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 2826
    return-void
.end method

.method static synthetic c(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/bzbs/bean/DashboardItem;)V
    .registers 2

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->c(Lcom/bzbs/bean/DashboardItem;)V

    return-void
.end method

.method static synthetic c(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/DashboardItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 680
    invoke-static {p1}, Lcom/bzbs/bean/DashboardRow;->GetArrayList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    move v1, v0

    move v2, v0

    move v3, v0

    .line 684
    :goto_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_56

    .line 685
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/DashboardItem;

    .line 686
    iget-object v6, v0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v7, "wallet"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    move v3, v4

    .line 690
    :cond_21
    iget v6, v0, Lcom/bzbs/bean/DashboardItem;->image_height:I

    if-lez v6, :cond_2c

    .line 691
    iget v0, v0, Lcom/bzbs/bean/DashboardItem;->image_height:I

    add-int/2addr v2, v0

    .line 684
    :cond_28
    :goto_28
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 692
    :cond_2c
    iget-object v6, v0, Lcom/bzbs/bean/DashboardItem;->size:Ljava/lang/String;

    const-string/jumbo v7, "big"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 693
    add-int/lit16 v2, v2, 0x190

    goto :goto_28

    .line 694
    :cond_3a
    iget-object v6, v0, Lcom/bzbs/bean/DashboardItem;->size:Ljava/lang/String;

    const-string/jumbo v7, "medium"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 695
    add-int/lit16 v2, v2, 0x96

    goto :goto_28

    .line 696
    :cond_48
    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->size:Ljava/lang/String;

    const-string/jumbo v6, "small"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 697
    add-int/lit16 v2, v2, 0x96

    goto :goto_28

    .line 701
    :cond_56
    invoke-static {v2}, Lcom/bzbs/event/DashboardEvents;->a(I)V

    .line 703
    if-ne v3, v4, :cond_81

    .line 704
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 705
    if-eqz v0, :cond_72

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 706
    invoke-direct {p0, v5}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->d(Ljava/util/ArrayList;)V

    .line 715
    :goto_71
    return-void

    .line 708
    :cond_72
    new-instance v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    invoke-direct {v0, p0, v5}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    .line 709
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_71

    .line 712
    :cond_81
    new-instance v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    invoke-direct {v0, p0, v5}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    .line 713
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_71
.end method

.method static synthetic d(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    return-object v0
.end method

.method private d()V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 337
    const-string/jumbo v0, "dashboard_json"

    invoke-direct {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_53

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_53

    .line 340
    :try_start_14
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bzbs/bean/DashboardItem;->GetArrayList(Lorg/json/JSONArray;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    .line 342
    if-eqz v4, :cond_4e

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4e

    move v3, v2

    .line 344
    :goto_2a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_118

    .line 345
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/DashboardItem;

    .line 347
    iget-object v5, v0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v6, "hashtag"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 349
    iget-object v2, v0, Lcom/bzbs/bean/DashboardItem;->hashtag_list_agency:Ljava/lang/String;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->hashtag_list_config:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v4, v3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 354
    :goto_49
    if-nez v1, :cond_4e

    .line 355
    invoke-direct {p0, v4}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->c(Ljava/util/ArrayList;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_4e} :catch_113

    .line 396
    :cond_4e
    :goto_4e
    return-void

    .line 344
    :cond_4f
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2a

    .line 362
    :cond_53
    const-string/jumbo v0, "dashboard_key"

    invoke-direct {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cache_dashboard_gift_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bzbs/util/LocalFileHelper;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 364
    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10c

    .line 366
    :try_start_92
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bzbs/bean/DashboardItem;->GetArrayList(Lorg/json/JSONArray;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    .line 368
    if-eqz v5, :cond_cd

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_cd

    move v3, v2

    .line 370
    :goto_a8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_116

    .line 371
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/DashboardItem;

    .line 373
    iget-object v6, v0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v7, "hashtag"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_108

    .line 375
    iget-object v3, v0, Lcom/bzbs/bean/DashboardItem;->hashtag_list_agency:Ljava/lang/String;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->hashtag_list_config:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {p0, v3, v0, v5, v6}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    move v0, v1

    .line 380
    :goto_c8
    if-nez v0, :cond_cd

    .line 381
    invoke-direct {p0, v5}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->c(Ljava/util/ArrayList;)V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_cd} :catch_111

    .line 388
    :cond_cd
    :goto_cd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cache_dashboard_gift_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LocalFileHelper;->c(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v0

    .line 389
    sget v3, Lcom/bzbs/data/AppSetting;->Z:I

    int-to-long v4, v3

    cmp-long v0, v0, v4

    if-lez v0, :cond_4e

    .line 390
    invoke-virtual {p0, v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Z)V

    goto/16 :goto_4e

    .line 370
    :cond_108
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_a8

    .line 393
    :cond_10c
    invoke-virtual {p0, v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Z)V

    goto/16 :goto_4e

    .line 384
    :catch_111
    move-exception v0

    goto :goto_cd

    .line 358
    :catch_113
    move-exception v0

    goto/16 :goto_4e

    :cond_116
    move v0, v2

    goto :goto_c8

    :cond_118
    move v1, v2

    goto/16 :goto_49
.end method

.method private d(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/DashboardRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->V:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "card?mode=user_all"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 802
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getWalletCardList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->e:Landroid/view/View;

    const v2, 0x7f1000d8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 804
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 805
    new-instance v2, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 806
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    sget-boolean v3, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 807
    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    .line 808
    invoke-virtual {v2, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 809
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-object v2, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 810
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$6;

    invoke-direct {v2, p0, v0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$6;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Landroid/widget/ProgressBar;Ljava/util/ArrayList;)V

    .line 811
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 888
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 889
    return-void
.end method

.method private doRedeem(Lcom/bzbs/bean/DashboardItem;)V
    .registers 9

    .prologue
    const/4 v6, 0x1

    .line 2574
    iget-boolean v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->r:Z

    if-ne v0, v6, :cond_e

    .line 2575
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->d:Ljava/lang/String;

    const-string/jumbo v1, "if (doRedeeming == true) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2742
    :cond_d
    :goto_d
    return-void

    .line 2577
    :cond_e
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2578
    if-eqz v0, :cond_d

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2579
    iput-boolean v6, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->r:Z

    .line 2581
    new-instance v0, Lcom/bzbs/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 2582
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/PhoneManagerUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "api/campaign/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/redeem"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2587
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(doRedeem)url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2589
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v3, ""

    const v4, 0x7f090282

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v6, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->g:Landroid/app/ProgressDialog;

    .line 2592
    :try_start_85
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->g:Landroid/app/ProgressDialog;

    const v3, 0x102000b

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2593
    if-eqz v0, :cond_a2

    .line 2594
    iget-object v3, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->h:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2595
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_a2} :catch_e8

    .line 2601
    :cond_a2
    :goto_a2
    new-instance v0, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v0}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 2603
    const-string/jumbo v3, "carrier"

    invoke-virtual {v0, v3, v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 2605
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 2606
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v3, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 2607
    invoke-virtual {v1, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 2608
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 2609
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2610
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 2611
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/bzbs/bean/DashboardItem;)V

    .line 2612
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2739
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_d

    .line 2597
    :catch_e8
    move-exception v0

    goto :goto_a2
.end method

.method static synthetic e(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Landroid/support/v7/widget/RecyclerView;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->i:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic f(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)V
    .registers 1

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->d()V

    return-void
.end method

.method static synthetic g(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->l:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;

    return-object v0
.end method

.method static synthetic h(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->g:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/DashboardItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 718
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    if-eqz v0, :cond_79

    .line 719
    invoke-static {p1}, Lcom/bzbs/bean/DashboardRow;->GetArrayList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    move v1, v2

    .line 721
    :goto_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    .line 722
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/DashboardRow;

    const-string/jumbo v4, "wallet"

    iput-object v4, v0, Lcom/bzbs/bean/DashboardRow;->RowTag:Ljava/lang/String;

    .line 721
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 725
    :cond_1f
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 726
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2a
    if-ltz v1, :cond_4c

    .line 727
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/DashboardRow;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardRow;->RowTag:Ljava/lang/String;

    const-string/jumbo v4, "wallet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 728
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 726
    :cond_48
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2a

    .line 732
    :cond_4c
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 733
    :goto_54
    if-ge v2, v1, :cond_74

    .line 734
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/DashboardRow;

    .line 735
    iget-object v0, v0, Lcom/bzbs/bean/DashboardRow;->dashboardItemA:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v4, "wallet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 736
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->a(ILjava/util/List;)V

    .line 742
    :cond_74
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->notifyDataSetChanged()V

    .line 744
    :cond_79
    return-void

    .line 733
    :cond_7a
    add-int/lit8 v2, v2, 0x1

    goto :goto_54
.end method

.method public a(Z)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 399
    iget-boolean v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->n:Z

    if-ne v0, v4, :cond_6

    .line 519
    :cond_5
    :goto_5
    return-void

    .line 403
    :cond_6
    const-string/jumbo v0, "dashboard_key"

    invoke-direct {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    if-eqz v0, :cond_5

    .line 408
    const-string/jumbo v1, ""

    .line 409
    if-eqz v0, :cond_9a

    const-string/jumbo v1, "main"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/main/dashboard?app_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 415
    :goto_3f
    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadDashboard="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iput-boolean v4, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->n:Z

    .line 417
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 418
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 419
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v4, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 420
    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 421
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 422
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 423
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$4;

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$4;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;JZ)V

    .line 424
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 518
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_5

    .line 412
    :cond_9a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "api/dashboard/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3f
.end method

.method public b(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/HistoryWallet;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 747
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    if-eqz v0, :cond_9d

    .line 748
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 750
    :goto_b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2a

    .line 751
    new-instance v4, Lcom/bzbs/bean/DashboardItem;

    invoke-direct {v4}, Lcom/bzbs/bean/DashboardItem;-><init>()V

    .line 752
    const-string/jumbo v0, "wallet_history"

    iput-object v0, v4, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    .line 753
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/HistoryWallet;

    iput-object v0, v4, Lcom/bzbs/bean/DashboardItem;->historyWallet:Lcom/bzbs/bean/HistoryWallet;

    .line 754
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 767
    :cond_2a
    invoke-static {v3}, Lcom/bzbs/bean/DashboardRow;->GetArrayList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    move v1, v2

    .line 769
    :goto_2f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_44

    .line 770
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/DashboardRow;

    const-string/jumbo v4, "wallet"

    iput-object v4, v0, Lcom/bzbs/bean/DashboardRow;->RowTag:Ljava/lang/String;

    .line 769
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2f

    .line 773
    :cond_44
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 774
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_4f
    if-ltz v1, :cond_71

    .line 775
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/DashboardRow;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardRow;->RowTag:Ljava/lang/String;

    const-string/jumbo v4, "wallet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 776
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 774
    :cond_6d
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_4f

    .line 780
    :cond_71
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v1, v2

    .line 781
    :goto_7a
    if-ge v1, v4, :cond_98

    .line 782
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/DashboardRow;

    .line 783
    iget-object v0, v0, Lcom/bzbs/bean/DashboardRow;->dashboardItemA:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v5, "wallet"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 785
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->a(ILjava/util/List;)V

    .line 793
    :cond_98
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->notifyDataSetChanged()V

    .line 798
    :cond_9d
    return-void

    .line 781
    :cond_9e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7a
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->f:Landroid/os/Handler;

    .line 133
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->h:Landroid/graphics/Typeface;

    .line 135
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 136
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 137
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b:I

    .line 138
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a:I

    .line 140
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 141
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->p:Lcom/facebook/CallbackManager;

    .line 143
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 145
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->o:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .prologue
    .line 150
    const v0, 0x7f040142

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->e:Landroid/view/View;

    .line 152
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/privilege/activity/DashboardActivity;

    if-eqz v0, :cond_1a

    .line 153
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->e:Landroid/view/View;

    const v1, 0x7f02006c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 156
    :cond_1a
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->e:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 197
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 199
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->l:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;

    if-eqz v0, :cond_c

    .line 200
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->l:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;->d()V

    .line 202
    :cond_c
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 189
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 191
    invoke-static {}, Lcom/bzbs/event/WalletEvents;->a()V

    .line 192
    invoke-static {}, Lcom/bzbs/event/LoginEvents;->a()V

    .line 193
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 172
    new-instance v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$CheckWalletListener;

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$CheckWalletListener;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$1;)V

    invoke-static {v0}, Lcom/bzbs/event/WalletEvents;->a(Lcom/bzbs/event/WalletEvents$WalletListener;)V

    .line 173
    new-instance v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$1;)V

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->a(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 176
    :try_start_14
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->o:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 178
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->d()V

    .line 185
    :goto_27
    return-void

    .line 180
    :cond_28
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->c()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2b} :catch_2c

    goto :goto_27

    .line 182
    :catch_2c
    move-exception v0

    goto :goto_27
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a()V

    .line 162
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b()V

    .line 163
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->d()V

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Dashboard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "header_en"

    invoke-direct {p0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;)V

    .line 166
    return-void
.end method
