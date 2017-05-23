.class public Lcom/samsung/privilege/fragment/CampaignListGiftFragment;
.super Landroid/support/v4/app/Fragment;
.source "CampaignListGiftFragment.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/view/View;

.field private c:Landroid/os/Handler;

.field private d:Landroid/support/v7/widget/RecyclerView;

.field private e:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private f:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$UserLoginListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 49
    const-class v0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->a:Ljava/lang/String;

    .line 58
    iput-boolean v1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->g:Z

    .line 59
    iput-boolean v1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->h:Z

    .line 61
    const/16 v0, 0x19

    iput v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->l:I

    .line 62
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->m:Ljava/lang/String;

    .line 147
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->n:I

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->e:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;)Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->f:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 132
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 133
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_1a

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 143
    :goto_19
    return-object v0

    .line 137
    :cond_1a
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 140
    :cond_27
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_34

    move-result-object v0

    goto :goto_19

    .line 142
    :catch_34
    move-exception v0

    .line 143
    const-string/jumbo v0, ""

    goto :goto_19
.end method

.method private a()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 149
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->b:Landroid/view/View;

    const v1, 0x7f100463

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->d:Landroid/support/v7/widget/RecyclerView;

    .line 150
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->d:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 152
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    .line 153
    packed-switch v0, :pswitch_data_48

    .line 167
    iput v2, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->n:I

    .line 171
    :goto_25
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->n:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->e:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 172
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->e:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 178
    return-void

    .line 155
    :pswitch_3a
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->n:I

    goto :goto_25

    .line 158
    :pswitch_3e
    iput v2, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->n:I

    goto :goto_25

    .line 161
    :pswitch_41
    iput v2, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->n:I

    goto :goto_25

    .line 164
    :pswitch_44
    iput v2, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->n:I

    goto :goto_25

    .line 153
    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3a
    .end packed-switch
.end method

.method private a(I)V
    .registers 9

    .prologue
    const/4 v6, 0x1

    .line 282
    iget-boolean v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->g:Z

    if-ne v0, v6, :cond_6

    .line 459
    :goto_5
    return-void

    .line 301
    :cond_6
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->c:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$5;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$5;-><init>(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 310
    const-string/jumbo v0, "mode"

    invoke-direct {p0, v0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    if-nez v0, :cond_1c

    const-string/jumbo v0, ""

    .line 312
    :cond_1c
    const-string/jumbo v1, "tags"

    invoke-direct {p0, v1}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 313
    const-string/jumbo v2, "cat"

    invoke-direct {p0, v2}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 314
    const-string/jumbo v3, "list_config"

    invoke-direct {p0, v3}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 316
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "api/campaign"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 317
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "?device_app_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 318
    const-string/jumbo v5, "cat"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11b

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&cat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&byConfig=true&config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    :goto_93
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 326
    if-eqz v1, :cond_163

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_163

    .line 332
    :goto_a6
    if-lez p1, :cond_c0

    .line 333
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

    .line 336
    :cond_c0
    iget-object v1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadCampaignList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iput-boolean v6, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->g:Z

    .line 338
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 339
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 340
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v4, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 341
    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 342
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 343
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 344
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;-><init>(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;JI)V

    .line 345
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 458
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_5

    .line 320
    :cond_11b
    const-string/jumbo v2, "tags"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_149

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "&tags="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&byConfig=true&config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_93

    .line 323
    :cond_149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&byConfig=true&config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_93

    .line 329
    :cond_163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&device_locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a6
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;I)V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;Z)Z
    .registers 2

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;I)I
    .registers 2

    .prologue
    .line 47
    iput p1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->j:I

    return p1
.end method

.method private b()V
    .registers 5

    .prologue
    .line 216
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->b:Landroid/view/View;

    const v1, 0x7f100116

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 217
    new-instance v1, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$2;-><init>(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 224
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->d:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$3;-><init>(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 240
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->d:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/bzbs/event/RecyclerItemClickListener;

    .line 241
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$4;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$4;-><init>(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)V

    invoke-direct {v1, v2, v3}, Lcom/bzbs/event/RecyclerItemClickListener;-><init>(Landroid/content/Context;Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;)V

    .line 240
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 260
    return-void
.end method

.method static synthetic b(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)Z
    .registers 2

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;Z)Z
    .registers 2

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;I)I
    .registers 2

    .prologue
    .line 47
    iput p1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->k:I

    return p1
.end method

.method private c()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 263
    const-string/jumbo v0, "cat"

    invoke-direct {p0, v0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cache_campaign_gift_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LocalFileHelper;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 265
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 267
    :try_start_2d
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bzbs/bean/Campaign;->GetArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 269
    new-instance v1, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;

    invoke-direct {v1, p0, v0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;-><init>(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;Ljava/util/List;)V

    iput-object v1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->f:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;

    .line 270
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->f:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_44} :catch_4c

    .line 275
    :goto_44
    invoke-direct {p0, v3}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->a(I)V

    .line 279
    :goto_47
    return-void

    .line 277
    :cond_48
    invoke-direct {p0, v3}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->a(I)V

    goto :goto_47

    .line 271
    :catch_4c
    move-exception v0

    goto :goto_44
.end method

.method static synthetic c(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)Z
    .registers 2

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->h:Z

    return v0
.end method

.method static synthetic d(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->j:I

    return v0
.end method

.method static synthetic d(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;I)I
    .registers 2

    .prologue
    .line 47
    iput p1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->i:I

    return p1
.end method

.method static synthetic e(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->i:I

    return v0
.end method

.method static synthetic f(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->k:I

    return v0
.end method

.method static synthetic g(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->f:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$CampaignListAdapter;

    return-object v0
.end method

.method static synthetic h(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)Landroid/view/View;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic i(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->l:I

    return v0
.end method

.method static synthetic k(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)Landroid/support/v7/widget/RecyclerView;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->d:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic l(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic m(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->n:I

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->c:Landroid/os/Handler;

    .line 70
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 72
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->m:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .prologue
    .line 77
    const v0, 0x7f0400d1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->b:Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->b:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 117
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 118
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 110
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 112
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->o:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$UserLoginListener;

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->b(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 113
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 93
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 95
    new-instance v0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$UserLoginListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$UserLoginListener;-><init>(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;Lcom/samsung/privilege/fragment/CampaignListGiftFragment$1;)V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->o:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$UserLoginListener;

    .line 96
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->o:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$UserLoginListener;

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->a(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 99
    :try_start_10
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->m:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 101
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->c()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_23} :catch_24

    .line 106
    :cond_23
    :goto_23
    return-void

    .line 103
    :catch_24
    move-exception v0

    goto :goto_23
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->a()V

    .line 87
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->b()V

    .line 88
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->c()V

    .line 89
    return-void
.end method
