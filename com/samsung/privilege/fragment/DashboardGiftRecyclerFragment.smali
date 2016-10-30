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

.field private o:Lcom/facebook/CallbackManager;

.field private p:Ljava/util/TimerTask;

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 104
    sput v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a:I

    .line 105
    sput v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 97
    const-class v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->d:Ljava/lang/String;

    .line 114
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->m:Ljava/lang/String;

    .line 116
    iput-boolean v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->n:Z

    .line 2533
    iput-boolean v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->q:Z

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;)Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;
    .registers 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->l:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;)Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;
    .registers 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .registers 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->e:Landroid/view/View;

    const v1, 0x7f100627

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->i:Landroid/support/v7/widget/RecyclerView;

    .line 226
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->i:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 228
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->j:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 229
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->j:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 230
    return-void
.end method

.method private a(JLandroid/support/v4/view/ViewPager;)V
    .registers 11

    .prologue
    .line 187
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->p:Ljava/util/TimerTask;

    if-eqz v0, :cond_9

    .line 188
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->p:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 191
    :cond_9
    new-instance v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$1;

    invoke-direct {v0, p0, p3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$1;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->p:Ljava/util/TimerTask;

    .line 211
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->p:Ljava/util/TimerTask;

    move-wide v2, p1

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 212
    return-void
.end method

.method private a(Lcom/bzbs/bean/DashboardItem;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2269
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_9

    .line 2531
    :cond_8
    :goto_8
    return-void

    .line 2273
    :cond_9
    const-string/jumbo v0, "Click"

    invoke-direct {p0, v0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Ljava/lang/String;Lcom/bzbs/bean/DashboardItem;)V

    .line 2276
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "campaign"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b8

    .line 2277
    iget-boolean v0, p1, Lcom/bzbs/bean/DashboardItem;->autoredeem:Z

    if-ne v0, v2, :cond_175

    .line 2278
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_37

    .line 2279
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0900c4

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_8

    .line 2281
    :cond_37
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2282
    if-eqz v0, :cond_10b

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10b

    .line 2284
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v3, p1, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bzbs/data/UserLogin;->r(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2285
    if-eqz v3, :cond_c1

    const-string/jumbo v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c1

    .line 2286
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    if-eqz v0, :cond_bf

    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bf

    move v0, v1

    .line 2295
    :goto_73
    if-ne v0, v2, :cond_c3

    .line 2296
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2297
    const v2, 0x7f0903ed

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2298
    const v2, 0x7f0900bb

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090333

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$8;

    invoke-direct {v3, p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$8;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090344

    .line 2304
    invoke-virtual {p0, v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$7;

    invoke-direct {v3, p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$7;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2314
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2315
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_8

    :cond_bf
    move v0, v2

    .line 2289
    goto :goto_73

    :cond_c1
    move v0, v2

    .line 2292
    goto :goto_73

    .line 2318
    :cond_c3
    :try_start_c3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v0, v4, :cond_df

    .line 2320
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v4, "clipboard"

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 2321
    invoke-virtual {v0, v3}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 2323
    const-string/jumbo v0, "Your discount code is already in clipboard."

    invoke-direct {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Ljava/lang/String;)V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_df} :catch_555

    .line 2329
    :cond_df
    :goto_df
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/samsung/privilege/activity/WebViewRedeemActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2330
    const-string/jumbo v4, "url"

    iget-object v5, p1, Lcom/bzbs/bean/DashboardItem;->autoredeem_url:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2331
    const-string/jumbo v4, "serial"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2332
    const-string/jumbo v3, "enable_webview_back"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2333
    const-string/jumbo v2, "hide_serial"

    iget-boolean v3, p1, Lcom/bzbs/bean/DashboardItem;->autoredeem_hideserial:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2334
    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_8

    .line 2337
    :cond_10b
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/privilege/activity/DashboardActivity;

    if-eqz v0, :cond_144

    .line 2338
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

    goto/16 :goto_8

    .line 2340
    :cond_144
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

    goto/16 :goto_8

    .line 2345
    :cond_175
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->campaigndetail_layout:Ljava/lang/String;

    const-string/jumbo v1, "premium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19c

    .line 2350
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2352
    const-string/jumbo v1, "campaign_id"

    iget v2, p1, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2353
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 2355
    :cond_19c
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2357
    const-string/jumbo v1, "campaign_id"

    iget v2, p1, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2358
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 2363
    :cond_1b8
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "bzbs_campaign"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_201

    .line 2369
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2370
    new-instance v2, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-direct {v2}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;-><init>()V

    .line 2371
    iget v3, p1, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setID(Ljava/lang/String;)V

    .line 2372
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2373
    const-string/jumbo v4, "ItemMarketPlace"

    invoke-static {v2}, Lorg/parceler/Parcels;->a(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2374
    const-string/jumbo v2, "ItemMarketPlace::Ads::Ins"

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2375
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2376
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 2379
    :cond_201
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "bzbs_campaign_ads"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24a

    .line 2385
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2386
    new-instance v1, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-direct {v1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;-><init>()V

    .line 2387
    iget v3, p1, Lcom/bzbs/bean/DashboardItem;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setID(Ljava/lang/String;)V

    .line 2388
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2389
    const-string/jumbo v4, "ItemMarketPlace"

    invoke-static {v1}, Lorg/parceler/Parcels;->a(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2390
    const-string/jumbo v1, "ItemMarketPlace::Ads::Ins"

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2391
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2392
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 2395
    :cond_24a
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "cat"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_266

    .line 2396
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/activity/MainPagerActivity;

    .line 2397
    iget-object v1, p1, Lcom/bzbs/bean/DashboardItem;->cat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2400
    :cond_266
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2402
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "link"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_297

    .line 2403
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    iget-object v2, p1, Lcom/bzbs/bean/DashboardItem;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2404
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 2407
    :cond_297
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "openapp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a1

    .line 2409
    :try_start_2a6
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p1, Lcom/bzbs/bean/DashboardItem;->and_ns:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2b3
    .catch Ljava/lang/Exception; {:try_start_2a6 .. :try_end_2b3} :catch_351

    move-result-object v2

    .line 2412
    :try_start_2b4
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->and_ns_params:Ljava/lang/String;

    if-eqz v0, :cond_34c

    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->and_ns_params:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34c

    .line 2413
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->and_ns_params:Ljava/lang/String;

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 2414
    :goto_2cd
    array-length v1, v3
    :try_end_2ce
    .catch Ljava/lang/Exception; {:try_start_2b4 .. :try_end_2ce} :catch_34b

    if-ge v0, v1, :cond_34c

    .line 2416
    :try_start_2d0
    aget-object v1, v3, v0

    const-string/jumbo v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2417
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 2418
    const/4 v5, 0x1

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2419
    const-string/jumbo v5, "<"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_347

    .line 2420
    const-string/jumbo v5, ">"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2421
    const/4 v5, 0x0

    aget-object v5, v1, v5

    const-string/jumbo v6, "<int"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_310

    .line 2422
    const/4 v5, 0x1

    aget-object v1, v1, v5

    invoke-static {v1}, Lcom/bzbs/util/BBUtil;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2414
    :goto_30d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2cd

    .line 2424
    :cond_310
    const/4 v5, 0x0

    aget-object v5, v1, v5

    const-string/jumbo v6, "<double"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_329

    .line 2425
    const/4 v5, 0x1

    aget-object v1, v1, v5

    invoke-static {v1}, Lcom/bzbs/util/BBUtil;->a(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_30d

    .line 2438
    :catch_327
    move-exception v1

    goto :goto_30d

    .line 2427
    :cond_329
    const/4 v5, 0x0

    aget-object v5, v1, v5

    const-string/jumbo v6, "<boolean"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_340

    .line 2428
    const/4 v5, 0x1

    aget-object v1, v1, v5

    invoke-static {v1}, Lcom/bzbs/util/BBUtil;->d(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_30d

    .line 2431
    :cond_340
    const/4 v5, 0x1

    aget-object v1, v1, v5

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_30d

    .line 2435
    :cond_347
    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_34a
    .catch Ljava/lang/Exception; {:try_start_2d0 .. :try_end_34a} :catch_327

    goto :goto_30d

    .line 2443
    :catch_34b
    move-exception v0

    .line 2447
    :cond_34c
    :try_start_34c
    invoke-virtual {p0, v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_34f
    .catch Ljava/lang/Exception; {:try_start_34c .. :try_end_34f} :catch_351

    goto/16 :goto_8

    .line 2448
    :catch_351
    move-exception v0

    .line 2450
    :try_start_352
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
    :try_end_377
    .catch Landroid/content/ActivityNotFoundException; {:try_start_352 .. :try_end_377} :catch_379

    goto/16 :goto_8

    .line 2451
    :catch_379
    move-exception v0

    .line 2452
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

    goto/16 :goto_8

    .line 2457
    :cond_3a1
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bzbs_market"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c4

    .line 2463
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2464
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 2467
    :cond_3c4
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bzbs_market_cate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e2

    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bzbs_cat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3fe

    .line 2474
    :cond_3e2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2475
    const-string/jumbo v1, "catId"

    iget-object v2, p1, Lcom/bzbs/bean/DashboardItem;->cat:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2476
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 2479
    :cond_3fe
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bzbs_dashboard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_421

    .line 2485
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2486
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 2489
    :cond_421
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sub_dashboard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_465

    .line 2490
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/DashboardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2491
    const-string/jumbo v1, "header_en"

    iget-object v2, p1, Lcom/bzbs/bean/DashboardItem;->ga_label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2492
    const-string/jumbo v1, "header"

    iget-object v2, p1, Lcom/bzbs/bean/DashboardItem;->ga_label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2493
    const-string/jumbo v1, "cat"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2494
    const-string/jumbo v1, "dashboard_key"

    iget-object v2, p1, Lcom/bzbs/bean/DashboardItem;->sub_dashboard_key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2495
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 2496
    :cond_465
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "menu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2498
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->menu:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "newsfeeds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2500
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->menu:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "activities"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2502
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->menu:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "friends"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2505
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->menu:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bzbs_fanpage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2507
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->menu:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "badges"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2509
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->menu:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "marketplace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2511
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->menu:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "checkins"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2513
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->menu:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "my_profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_500

    .line 2514
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2515
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 2516
    :cond_500
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->menu:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "qr_code"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_523

    .line 2517
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/QRLandingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2518
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 2519
    :cond_523
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->menu:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "inapps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2522
    iget-object v0, p1, Lcom/bzbs/bean/DashboardItem;->menu:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "about_us"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2523
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/AboutUsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2524
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 2325
    :catch_555
    move-exception v0

    goto/16 :goto_df
.end method

.method private a(Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 2707
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

    .line 2708
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

    .line 2709
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 2710
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 2711
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 2712
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2713
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 2714
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$10;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;)V

    .line 2715
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2793
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 2794
    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;JLandroid/support/v4/view/ViewPager;)V
    .registers 5

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(JLandroid/support/v4/view/ViewPager;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/bzbs/bean/DashboardItem;)V
    .registers 2

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Lcom/bzbs/bean/DashboardItem;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Lcom/bzbs/bean/DashboardItem;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;Lcom/bzbs/bean/DashboardItem;)V
    .registers 3

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Ljava/lang/String;Lcom/bzbs/bean/DashboardItem;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .registers 5

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 3

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->d(Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 215
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->f:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$2;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 222
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/bzbs/bean/DashboardItem;)V
    .registers 9

    .prologue
    const-wide/16 v4, 0x1

    .line 2247
    if-eqz p2, :cond_68

    .line 2248
    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v1, "campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 2249
    iget-boolean v0, p2, Lcom/bzbs/bean/DashboardItem;->autoredeem:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_69

    .line 2250
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

    .line 2266
    :cond_68
    :goto_68
    return-void

    .line 2252
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

    .line 2254
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

    .line 2255
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

    .line 2256
    :cond_12a
    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v1, "cat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18b

    .line 2257
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

    .line 2258
    :cond_18b
    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v1, "bzbs_cat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ec

    .line 2259
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

    .line 2261
    :cond_1ec
    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->ga_label:Ljava/lang/String;

    if-eqz v0, :cond_68

    iget-object v0, p2, Lcom/bzbs/bean/DashboardItem;->ga_label:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 2262
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
    .line 522
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

    .line 523
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

    .line 525
    if-eqz p1, :cond_59

    const-string/jumbo v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 526
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

    .line 528
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

    .line 530
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

    .line 531
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 532
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 533
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 534
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 535
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 536
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$5;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$5;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 577
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 578
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
    .line 498
    const/4 v0, 0x1

    if-ne p4, v0, :cond_7

    .line 499
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 518
    :cond_6
    :goto_6
    return-void

    .line 501
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

    .line 502
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

    .line 503
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    .line 505
    :try_start_50
    invoke-direct {p0, v0, p3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_8a

    .line 510
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

    .line 511
    sget v2, Lcom/bzbs/data/AppSetting;->Z:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 512
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_6

    .line 515
    :cond_85
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_6

    .line 506
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

    .line 582
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_140

    .line 583
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 585
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 586
    const-string/jumbo v0, ""

    move v2, v1

    .line 587
    :goto_15
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_13f

    move-result v0

    if-ge v2, v0, :cond_141

    .line 589
    :try_start_1b
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 591
    const-string/jumbo v5, "CategoryName"

    invoke-static {v0, v5}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 602
    new-instance v5, Lcom/bzbs/bean/DashboardItem;

    invoke-direct {v5}, Lcom/bzbs/bean/DashboardItem;-><init>()V

    .line 603
    const-string/jumbo v6, "campaign"

    iput-object v6, v5, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    .line 604
    const-string/jumbo v6, "small"

    iput-object v6, v5, Lcom/bzbs/bean/DashboardItem;->size:Ljava/lang/String;

    .line 605
    const-string/jumbo v6, "ID"

    invoke-static {v0, v6}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/bzbs/bean/DashboardItem;->id:I

    .line 606
    const-string/jumbo v6, "AgencyName"

    invoke-static {v0, v6}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bzbs/bean/DashboardItem;->line1:Ljava/lang/String;

    .line 607
    const-string/jumbo v6, "Name"

    invoke-static {v0, v6}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bzbs/bean/DashboardItem;->line2:Ljava/lang/String;

    .line 608
    const-string/jumbo v6, "Type"

    invoke-static {v0, v6}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bzbs/bean/DashboardItem;->campaigntype:Ljava/lang/String;

    .line 609
    const-string/jumbo v6, "PointPerUnit"

    invoke-static {v0, v6}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/bzbs/bean/DashboardItem;->campaignpoint:I

    .line 610
    const-string/jumbo v6, "Barcode"

    invoke-static {v0, v6}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bzbs/bean/DashboardItem;->campaignbarcode:Ljava/lang/String;

    .line 611
    const-string/jumbo v6, "Discount"

    invoke-static {v0, v6}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/bzbs/bean/DashboardItem;->campaigndiscount:I

    .line 612
    const-string/jumbo v6, "FullImageUrl"

    invoke-static {v0, v6}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bzbs/bean/DashboardItem;->image_url:Ljava/lang/String;

    .line 613
    const-string/jumbo v6, "premium"

    iput-object v6, v5, Lcom/bzbs/bean/DashboardItem;->dashboard_layout:Ljava/lang/String;

    .line 614
    const-string/jumbo v6, "premium"

    iput-object v6, v5, Lcom/bzbs/bean/DashboardItem;->campaigndetail_layout:Ljava/lang/String;

    .line 615
    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/bzbs/bean/DashboardItem;->autoredeem:Z

    .line 617
    new-instance v6, Ljava/text/DecimalFormat;

    const-string/jumbo v7, "#,###,###"

    invoke-direct {v6, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 618
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

    .line 620
    const-string/jumbo v6, "ExpireDate"

    invoke-static {v0, v6}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    const-string/jumbo v8, "CurrentDate"

    invoke-static {v0, v8}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 621
    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_116

    .line 622
    const-wide/32 v8, 0x15180

    div-long/2addr v6, v8

    .line 623
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

    .line 628
    :goto_10e
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    :goto_111
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_15

    .line 625
    :cond_116
    const v0, 0x7f0900d4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/bzbs/bean/DashboardItem;->campaignstatus:Ljava/lang/String;
    :try_end_11f
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_11f} :catch_120
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_11f} :catch_13f

    goto :goto_10e

    .line 631
    :catch_120
    move-exception v0

    .line 632
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

    .line 650
    :catch_13f
    move-exception v0

    .line 653
    :cond_140
    :goto_140
    return-void

    .line 636
    :cond_141
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 637
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 639
    :goto_149
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_163

    .line 640
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/DashboardItem;

    .line 642
    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v4, "hashtag"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_167

    .line 643
    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 648
    :cond_163
    invoke-direct {p0, v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->c(Ljava/util/ArrayList;)V
    :try_end_166
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_166} :catch_13f

    goto :goto_140

    .line 639
    :cond_167
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_149
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Z)Z
    .registers 2

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->m:Ljava/lang/String;

    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 297
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 298
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_1a

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 308
    :goto_19
    return-object v0

    .line 302
    :cond_1a
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 305
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

    .line 307
    :catch_34
    move-exception v0

    .line 308
    const-string/jumbo v0, ""

    goto :goto_19
.end method

.method private b()V
    .registers 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->e:Landroid/view/View;

    const v1, 0x7f100111

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 234
    new-instance v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$3;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 240
    return-void
.end method

.method static synthetic b(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/bzbs/bean/DashboardItem;)V
    .registers 2

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->doRedeem(Lcom/bzbs/bean/DashboardItem;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->c(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Z)Z
    .registers 2

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->q:Z

    return p1
.end method

.method static synthetic c(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Landroid/view/View;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->e:Landroid/view/View;

    return-object v0
.end method

.method private c()V
    .registers 7

    .prologue
    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->i:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_9e

    .line 245
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

    .line 246
    const/4 v0, 0x0

    move v2, v0

    :goto_25
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_9e

    .line 247
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 248
    const v0, 0x7f10020e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 249
    const v3, 0x7f1001f5

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 250
    if-eqz v0, :cond_92

    .line 251
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
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

    .line 253
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/bzbs/data/UserLogin;->v(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_96

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_96

    .line 255
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

    .line 246
    :cond_92
    :goto_92
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_25

    .line 257
    :cond_96
    const-string/jumbo v0, "0 THB"

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9c} :catch_9d

    goto :goto_92

    .line 262
    :catch_9d
    move-exception v0

    .line 265
    :cond_9e
    return-void
.end method

.method static synthetic c(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/util/ArrayList;)V
    .registers 8
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
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 656
    invoke-static {p1}, Lcom/bzbs/bean/DashboardRow;->GetArrayList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    move v1, v0

    move v2, v0

    .line 659
    :goto_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_24

    .line 660
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/DashboardItem;

    .line 661
    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v5, "wallet"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v2, v3

    .line 659
    :cond_20
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 666
    :cond_24
    if-ne v2, v3, :cond_4c

    .line 667
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 668
    if-eqz v0, :cond_3d

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 669
    invoke-direct {p0, v4}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->d(Ljava/util/ArrayList;)V

    .line 678
    :goto_3c
    return-void

    .line 671
    :cond_3d
    new-instance v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    invoke-direct {v0, p0, v4}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    .line 672
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_3c

    .line 675
    :cond_4c
    new-instance v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    invoke-direct {v0, p0, v4}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    .line 676
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_3c
.end method

.method static synthetic d(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    return-object v0
.end method

.method private d()V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 313
    const-string/jumbo v0, "dashboard_json"

    invoke-direct {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    if-eqz v0, :cond_53

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_53

    .line 316
    :try_start_14
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bzbs/bean/DashboardItem;->GetArrayList(Lorg/json/JSONArray;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    .line 318
    if-eqz v4, :cond_4e

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4e

    move v3, v2

    .line 320
    :goto_2a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_118

    .line 321
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/DashboardItem;

    .line 323
    iget-object v5, v0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v6, "hashtag"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 325
    iget-object v2, v0, Lcom/bzbs/bean/DashboardItem;->hashtag_list_agency:Ljava/lang/String;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->hashtag_list_config:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v4, v3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 330
    :goto_49
    if-nez v1, :cond_4e

    .line 331
    invoke-direct {p0, v4}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->c(Ljava/util/ArrayList;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_4e} :catch_113

    .line 372
    :cond_4e
    :goto_4e
    return-void

    .line 320
    :cond_4f
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2a

    .line 338
    :cond_53
    const-string/jumbo v0, "dashboard_key"

    invoke-direct {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 339
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

    .line 340
    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10c

    .line 342
    :try_start_92
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bzbs/bean/DashboardItem;->GetArrayList(Lorg/json/JSONArray;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    .line 344
    if-eqz v5, :cond_cd

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_cd

    move v3, v2

    .line 346
    :goto_a8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_116

    .line 347
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/DashboardItem;

    .line 349
    iget-object v6, v0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v7, "hashtag"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_108

    .line 351
    iget-object v3, v0, Lcom/bzbs/bean/DashboardItem;->hashtag_list_agency:Ljava/lang/String;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->hashtag_list_config:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {p0, v3, v0, v5, v6}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    move v0, v1

    .line 356
    :goto_c8
    if-nez v0, :cond_cd

    .line 357
    invoke-direct {p0, v5}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->c(Ljava/util/ArrayList;)V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_cd} :catch_111

    .line 364
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

    .line 365
    sget v3, Lcom/bzbs/data/AppSetting;->Z:I

    int-to-long v4, v3

    cmp-long v0, v0, v4

    if-lez v0, :cond_4e

    .line 366
    invoke-virtual {p0, v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Z)V

    goto/16 :goto_4e

    .line 346
    :cond_108
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_a8

    .line 369
    :cond_10c
    invoke-virtual {p0, v2}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a(Z)V

    goto/16 :goto_4e

    .line 360
    :catch_111
    move-exception v0

    goto :goto_cd

    .line 334
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
    .line 764
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

    .line 765
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

    .line 766
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->e:Landroid/view/View;

    const v2, 0x7f1000d8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 767
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 768
    new-instance v2, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 769
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    sget-boolean v3, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 770
    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    .line 771
    invoke-virtual {v2, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 772
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-object v2, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 773
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$6;

    invoke-direct {v2, p0, v0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$6;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Landroid/widget/ProgressBar;Ljava/util/ArrayList;)V

    .line 774
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 851
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 852
    return-void
.end method

.method private doRedeem(Lcom/bzbs/bean/DashboardItem;)V
    .registers 9

    .prologue
    const/4 v6, 0x1

    .line 2535
    iget-boolean v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->q:Z

    if-ne v0, v6, :cond_e

    .line 2536
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->d:Ljava/lang/String;

    const-string/jumbo v1, "if (doRedeeming == true) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2703
    :cond_d
    :goto_d
    return-void

    .line 2538
    :cond_e
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2539
    if-eqz v0, :cond_d

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2540
    iput-boolean v6, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->q:Z

    .line 2542
    new-instance v0, Lcom/bzbs/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 2543
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/PhoneManagerUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2547
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

    .line 2548
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

    .line 2550
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v3, ""

    const v4, 0x7f090281

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v6, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->g:Landroid/app/ProgressDialog;

    .line 2553
    :try_start_85
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->g:Landroid/app/ProgressDialog;

    const v3, 0x102000b

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2554
    if-eqz v0, :cond_a2

    .line 2555
    iget-object v3, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->h:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2556
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_a2} :catch_e8

    .line 2562
    :cond_a2
    :goto_a2
    new-instance v0, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v0}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 2564
    const-string/jumbo v3, "carrier"

    invoke-virtual {v0, v3, v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 2566
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 2567
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v3, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 2568
    invoke-virtual {v1, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 2569
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 2570
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2571
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 2572
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$9;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/bzbs/bean/DashboardItem;)V

    .line 2573
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2700
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_d

    .line 2558
    :catch_e8
    move-exception v0

    goto :goto_a2
.end method

.method static synthetic e(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Landroid/support/v7/widget/RecyclerView;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->i:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic f(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)V
    .registers 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->d()V

    return-void
.end method

.method static synthetic g(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->l:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;

    return-object v0
.end method

.method static synthetic h(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 95
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

    .line 681
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    if-eqz v0, :cond_79

    .line 682
    invoke-static {p1}, Lcom/bzbs/bean/DashboardRow;->GetArrayList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    move v1, v2

    .line 684
    :goto_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    .line 685
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/DashboardRow;

    const-string/jumbo v4, "wallet"

    iput-object v4, v0, Lcom/bzbs/bean/DashboardRow;->RowTag:Ljava/lang/String;

    .line 684
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 688
    :cond_1f
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 689
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2a
    if-ltz v1, :cond_4c

    .line 690
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

    .line 691
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 689
    :cond_48
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2a

    .line 695
    :cond_4c
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 696
    :goto_54
    if-ge v2, v1, :cond_74

    .line 697
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/DashboardRow;

    .line 698
    iget-object v0, v0, Lcom/bzbs/bean/DashboardRow;->dashboardItemA:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v4, "wallet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 699
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->a(ILjava/util/List;)V

    .line 705
    :cond_74
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->notifyDataSetChanged()V

    .line 707
    :cond_79
    return-void

    .line 696
    :cond_7a
    add-int/lit8 v2, v2, 0x1

    goto :goto_54
.end method

.method public a(Z)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 375
    iget-boolean v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->n:Z

    if-ne v0, v4, :cond_6

    .line 495
    :goto_5
    return-void

    .line 379
    :cond_6
    const-string/jumbo v0, "dashboard_key"

    invoke-direct {p0, v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    const-string/jumbo v1, ""

    .line 381
    const-string/jumbo v1, "main"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 382
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

    .line 387
    :goto_3b
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

    .line 388
    iput-boolean v4, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->n:Z

    .line 389
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 390
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 391
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v4, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 392
    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 393
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 394
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 395
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$4;

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$4;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;JZ)V

    .line 396
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 494
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_5

    .line 384
    :cond_96
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

    goto :goto_3b
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

    .line 710
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    if-eqz v0, :cond_9d

    .line 711
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 713
    :goto_b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2a

    .line 714
    new-instance v4, Lcom/bzbs/bean/DashboardItem;

    invoke-direct {v4}, Lcom/bzbs/bean/DashboardItem;-><init>()V

    .line 715
    const-string/jumbo v0, "wallet_history"

    iput-object v0, v4, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    .line 716
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/HistoryWallet;

    iput-object v0, v4, Lcom/bzbs/bean/DashboardItem;->historyWallet:Lcom/bzbs/bean/HistoryWallet;

    .line 717
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 730
    :cond_2a
    invoke-static {v3}, Lcom/bzbs/bean/DashboardRow;->GetArrayList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    move v1, v2

    .line 732
    :goto_2f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_44

    .line 733
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/DashboardRow;

    const-string/jumbo v4, "wallet"

    iput-object v4, v0, Lcom/bzbs/bean/DashboardRow;->RowTag:Ljava/lang/String;

    .line 732
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2f

    .line 736
    :cond_44
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 737
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_4f
    if-ltz v1, :cond_71

    .line 738
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

    .line 739
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 737
    :cond_6d
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_4f

    .line 743
    :cond_71
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v1, v2

    .line 744
    :goto_7a
    if-ge v1, v4, :cond_98

    .line 745
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/DashboardRow;

    .line 746
    iget-object v0, v0, Lcom/bzbs/bean/DashboardRow;->dashboardItemA:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v5, "wallet"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 748
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->a(ILjava/util/List;)V

    .line 756
    :cond_98
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->k:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->notifyDataSetChanged()V

    .line 761
    :cond_9d
    return-void

    .line 744
    :cond_9e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7a
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->f:Landroid/os/Handler;

    .line 125
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

    .line 127
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 128
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 129
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b:I

    .line 130
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a:I

    .line 132
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 133
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->o:Lcom/facebook/CallbackManager;

    .line 135
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 136
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .prologue
    .line 140
    const v0, 0x7f04013c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->e:Landroid/view/View;

    .line 142
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/privilege/activity/DashboardActivity;

    if-eqz v0, :cond_1a

    .line 143
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->e:Landroid/view/View;

    const v1, 0x7f02006a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 146
    :cond_1a
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->e:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 178
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 180
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->l:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;

    if-eqz v0, :cond_c

    .line 181
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->l:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardImagePagerAdapter;->d()V

    .line 183
    :cond_c
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 170
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 172
    invoke-static {}, Lcom/bzbs/event/WalletEvents;->a()V

    .line 173
    invoke-static {}, Lcom/bzbs/event/LoginEvents;->a()V

    .line 174
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 162
    new-instance v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$CheckWalletListener;

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$CheckWalletListener;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$1;)V

    invoke-static {v0}, Lcom/bzbs/event/WalletEvents;->a(Lcom/bzbs/event/WalletEvents$WalletListener;)V

    .line 163
    new-instance v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$UserLoginListener;-><init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$1;)V

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->a(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 165
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->c()V

    .line 166
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->a()V

    .line 152
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->b()V

    .line 153
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->d()V

    .line 155
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

    .line 156
    return-void
.end method
