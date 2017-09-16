.class public Lcom/samsung/privilege/fragment/StampListGiftFragment;
.super Landroid/support/v4/app/Fragment;
.source "StampListGiftFragment.java"


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private c:Landroid/view/View;

.field private d:Landroid/os/Handler;

.field private e:Landroid/support/v7/widget/RecyclerView;

.field private f:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private g:Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Lcom/samsung/privilege/fragment/StampListGiftFragment$UserLoginListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-string/jumbo v0, "cache_stamp_gift"

    sput-object v0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 50
    const-class v0, Lcom/samsung/privilege/fragment/StampListGiftFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->a:Ljava/lang/String;

    .line 61
    iput-boolean v1, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->h:Z

    .line 62
    iput-boolean v1, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->i:Z

    .line 64
    const/16 v0, 0x19

    iput v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->m:I

    .line 65
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->n:Ljava/lang/String;

    .line 152
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->o:I

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/StampListGiftFragment;)Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->f:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/StampListGiftFragment;Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;)Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->g:Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/StampListGiftFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 137
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 138
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_1a

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 148
    :goto_19
    return-object v0

    .line 142
    :cond_1a
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 145
    :cond_27
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_34

    move-result-object v0

    goto :goto_19

    .line 147
    :catch_34
    move-exception v0

    .line 148
    const-string/jumbo v0, ""

    goto :goto_19
.end method

.method private a(I)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 250
    new-instance v0, Lcom/bzbs/util/ConnectionDetector;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bzbs/util/ConnectionDetector;-><init>(Landroid/content/Context;)V

    .line 251
    invoke-virtual {v0}, Lcom/bzbs/util/ConnectionDetector;->a()Z

    move-result v0

    if-nez v0, :cond_20

    .line 252
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->c:Landroid/view/View;

    const v1, 0x7f10011d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 253
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 403
    :cond_1f
    :goto_1f
    return-void

    .line 258
    :cond_20
    iget-boolean v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->h:Z

    if-eq v0, v4, :cond_1f

    .line 262
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->d:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/fragment/StampListGiftFragment$4;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/StampListGiftFragment$4;-><init>(Lcom/samsung/privilege/fragment/StampListGiftFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/stamp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?device_app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 274
    if-eqz v1, :cond_ec

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ec

    .line 280
    :goto_77
    if-lez p1, :cond_91

    .line 281
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

    .line 284
    :cond_91
    iget-object v1, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadStampList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iput-boolean v4, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->h:Z

    .line 286
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 287
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 288
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v4, Lcom/bzbs/data/AppSetting;->V:Z

    .line 289
    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 290
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 291
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 292
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/fragment/StampListGiftFragment$5;

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/samsung/privilege/fragment/StampListGiftFragment$5;-><init>(Lcom/samsung/privilege/fragment/StampListGiftFragment;JI)V

    .line 293
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 402
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_1f

    .line 277
    :cond_ec
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&device_locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_77
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/StampListGiftFragment;I)V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/StampListGiftFragment;Z)Z
    .registers 2

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/privilege/fragment/StampListGiftFragment;I)I
    .registers 2

    .prologue
    .line 48
    iput p1, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->k:I

    return p1
.end method

.method private b()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 154
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->c:Landroid/view/View;

    const v1, 0x7f100509

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->e:Landroid/support/v7/widget/RecyclerView;

    .line 155
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 157
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    .line 158
    packed-switch v0, :pswitch_data_46

    .line 172
    iput v2, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->o:I

    .line 175
    :goto_24
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->o:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->f:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 176
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->f:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 177
    return-void

    .line 160
    :pswitch_39
    iput v2, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->o:I

    goto :goto_24

    .line 163
    :pswitch_3c
    iput v2, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->o:I

    goto :goto_24

    .line 166
    :pswitch_3f
    iput v2, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->o:I

    goto :goto_24

    .line 169
    :pswitch_42
    iput v2, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->o:I

    goto :goto_24

    .line 158
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
    .end packed-switch
.end method

.method static synthetic b(Lcom/samsung/privilege/fragment/StampListGiftFragment;)Z
    .registers 2

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/samsung/privilege/fragment/StampListGiftFragment;Z)Z
    .registers 2

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->i:Z

    return p1
.end method

.method static synthetic c(Lcom/samsung/privilege/fragment/StampListGiftFragment;I)I
    .registers 2

    .prologue
    .line 48
    iput p1, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->l:I

    return p1
.end method

.method private c()V
    .registers 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->c:Landroid/view/View;

    const v1, 0x7f10011d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 181
    new-instance v1, Lcom/samsung/privilege/fragment/StampListGiftFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/StampListGiftFragment$2;-><init>(Lcom/samsung/privilege/fragment/StampListGiftFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 188
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->e:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/samsung/privilege/fragment/StampListGiftFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/StampListGiftFragment$3;-><init>(Lcom/samsung/privilege/fragment/StampListGiftFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 222
    return-void
.end method

.method static synthetic c(Lcom/samsung/privilege/fragment/StampListGiftFragment;)Z
    .registers 2

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->i:Z

    return v0
.end method

.method static synthetic d(Lcom/samsung/privilege/fragment/StampListGiftFragment;)I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->k:I

    return v0
.end method

.method static synthetic d(Lcom/samsung/privilege/fragment/StampListGiftFragment;I)I
    .registers 2

    .prologue
    .line 48
    iput p1, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->j:I

    return p1
.end method

.method private d()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 225
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_46

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 227
    sget-object v0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LocalFileHelper;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 228
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 230
    :try_start_27
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bzbs/bean/StampAgency;->GetArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 232
    new-instance v1, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;

    invoke-direct {v1, p0, v0}, Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;-><init>(Lcom/samsung/privilege/fragment/StampListGiftFragment;Ljava/util/List;)V

    iput-object v1, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->g:Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;

    .line 233
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->g:Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_3e} :catch_5f

    .line 238
    :goto_3e
    invoke-direct {p0, v2}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->a(I)V

    .line 247
    :goto_41
    return-void

    .line 240
    :cond_42
    invoke-direct {p0, v2}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->a(I)V

    goto :goto_41

    .line 243
    :cond_46
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->c:Landroid/view/View;

    const v1, 0x7f10050a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 244
    const v1, 0x7f09017f

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_41

    .line 234
    :catch_5f
    move-exception v0

    goto :goto_3e
.end method

.method static synthetic e(Lcom/samsung/privilege/fragment/StampListGiftFragment;)I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->j:I

    return v0
.end method

.method static synthetic f(Lcom/samsung/privilege/fragment/StampListGiftFragment;)I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->l:I

    return v0
.end method

.method static synthetic g(Lcom/samsung/privilege/fragment/StampListGiftFragment;)Landroid/view/View;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/samsung/privilege/fragment/StampListGiftFragment;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/samsung/privilege/fragment/StampListGiftFragment;)I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->m:I

    return v0
.end method

.method static synthetic j(Lcom/samsung/privilege/fragment/StampListGiftFragment;)Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->g:Lcom/samsung/privilege/fragment/StampListGiftFragment$StampListAdapter;

    return-object v0
.end method

.method static synthetic k(Lcom/samsung/privilege/fragment/StampListGiftFragment;)Landroid/support/v7/widget/RecyclerView;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->e:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic l(Lcom/samsung/privilege/fragment/StampListGiftFragment;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->d:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->d:Landroid/os/Handler;

    .line 73
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 75
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->n:Ljava/lang/String;

    .line 77
    const-string/jumbo v0, "Stamp List"

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .prologue
    .line 82
    const v0, 0x7f0400ff

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->c:Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->c:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 122
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 123
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 115
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 117
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->p:Lcom/samsung/privilege/fragment/StampListGiftFragment$UserLoginListener;

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->b(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 118
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 98
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 100
    new-instance v0, Lcom/samsung/privilege/fragment/StampListGiftFragment$UserLoginListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/fragment/StampListGiftFragment$UserLoginListener;-><init>(Lcom/samsung/privilege/fragment/StampListGiftFragment;Lcom/samsung/privilege/fragment/StampListGiftFragment$1;)V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->p:Lcom/samsung/privilege/fragment/StampListGiftFragment$UserLoginListener;

    .line 101
    iget-object v0, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->p:Lcom/samsung/privilege/fragment/StampListGiftFragment$UserLoginListener;

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->a(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 104
    :try_start_10
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/samsung/privilege/fragment/StampListGiftFragment;->n:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 106
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->d()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_23} :catch_24

    .line 111
    :cond_23
    :goto_23
    return-void

    .line 108
    :catch_24
    move-exception v0

    goto :goto_23
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->b()V

    .line 92
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->c()V

    .line 93
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/StampListGiftFragment;->d()V

    .line 94
    return-void
.end method
