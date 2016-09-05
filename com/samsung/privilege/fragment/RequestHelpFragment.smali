.class public Lcom/samsung/privilege/fragment/RequestHelpFragment;
.super Lcom/bzbs/marketplace/base/BaseFragment;
.source "RequestHelpFragment.java"


# instance fields
.field btnAddPicture:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100674
    .end annotation
.end field

.field contentImagePost:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100668
    .end annotation
.end field

.field edtTextComment:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10066b
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/marketplace/model/review/ReviewModel;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/samsung/privilege/adapter/RequestHelpAdapter;

.field private i:Z

.field imagePost:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100669
    .end annotation
.end field

.field private j:Landroid/support/v7/widget/LinearLayoutManager;

.field private k:Z

.field private l:I

.field private m:I

.field mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10061b
    .end annotation
.end field

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Landroid/net/Uri;

.field pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100667
    .end annotation
.end field

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100675
    .end annotation
.end field

.field recyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f100666
    .end annotation
.end field

.field private s:Ljava/lang/String;

.field private t:Z

.field tvResult:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10065a
    .end annotation
.end field

.field private u:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

.field private v:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/bzbs/marketplace/base/BaseFragment;-><init>()V

    .line 99
    iput-boolean v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->i:Z

    .line 101
    iput-boolean v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->k:Z

    .line 106
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->o:Ljava/lang/String;

    .line 108
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->q:Ljava/lang/String;

    .line 109
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->r:Ljava/lang/String;

    .line 110
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->s:Ljava/lang/String;

    .line 111
    iput-boolean v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->t:Z

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/RequestHelpFragment;I)I
    .registers 2

    .prologue
    .line 66
    iput p1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->m:I

    return p1
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/RequestHelpFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->p:Landroid/net/Uri;

    return-object p1
.end method

.method private a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/model/review/ReviewModel;
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 463
    new-instance v0, Lcom/bzbs/marketplace/model/review/ReviewModel;

    invoke-direct {v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;-><init>()V

    .line 464
    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setUserId(Ljava/lang/String;)V

    .line 465
    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setName(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v0, p2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setMessage(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v0, v2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setCommentCount(I)V

    .line 468
    invoke-virtual {v0, v2}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setLikes(I)V

    .line 469
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 470
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 471
    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setCreatedTime(J)V

    .line 472
    invoke-virtual {v0, p4}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setSticker(Ljava/lang/String;)V

    .line 473
    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setImageUrl(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v0, p1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setHeader(Z)V

    .line 475
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/model/review/ReviewModel;->setFile(Ljava/io/File;)V

    .line 477
    return-object v0
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/RequestHelpFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->g:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a(I)V
    .registers 4

    .prologue
    .line 265
    if-eqz p1, :cond_d

    .line 266
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/util/KeyboardStatus;->a(Landroid/view/View;Landroid/app/Activity;)V

    .line 268
    :cond_d
    return-void
.end method

.method private synthetic a(IILandroid/content/Intent;Ljava/lang/Boolean;)V
    .registers 8

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 498
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 499
    packed-switch p1, :pswitch_data_3e

    .line 517
    :cond_b
    :goto_b
    return-void

    .line 501
    :pswitch_c
    if-ne p2, v1, :cond_b

    .line 502
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 503
    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/util/OutputMediaFile;->a(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/marketplace/util/BitmapScale;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->o:Ljava/lang/String;

    .line 504
    invoke-direct {p0, v2, v2}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a(ZZ)V

    goto :goto_b

    .line 508
    :pswitch_26
    if-ne p2, v1, :cond_b

    .line 509
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->p:Landroid/net/Uri;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/util/OutputMediaFile;->a(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/marketplace/util/BitmapScale;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->o:Ljava/lang/String;

    .line 510
    invoke-direct {p0, v2, v2}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a(ZZ)V

    goto :goto_b

    .line 499
    :pswitch_data_3e
    .packed-switch 0x270e
        :pswitch_26
        :pswitch_c
    .end packed-switch
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->e()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/RequestHelpFragment;IILandroid/content/Intent;Ljava/lang/Boolean;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a(IILandroid/content/Intent;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/RequestHelpFragment;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/fragment/RequestHelpFragment;Z)V
    .registers 2

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->b(Z)V

    return-void
.end method

.method private synthetic a(Ljava/lang/Boolean;)V
    .registers 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 357
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_189

    .line 359
    new-instance v0, Lcom/bzbs/util/DeviceHelper;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 360
    invoke-virtual {v0}, Lcom/bzbs/util/DeviceHelper;->d()Ljava/lang/String;

    move-result-object v0

    .line 361
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "samsung"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SM-G935F"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UserId= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Name= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Surname= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "IMEI= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "osVersion= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Platform= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->edtTextComment:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "api/buzz/f-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/buzz?token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 368
    new-instance v3, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v3}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 370
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "------------------------"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 372
    const-string/jumbo v0, "message"

    invoke-virtual {v3, v0, v1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iput-boolean v7, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->t:Z

    .line 375
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0xa

    if-le v0, v4, :cond_14a

    .line 376
    iput-boolean v6, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->t:Z

    .line 378
    :try_start_13d
    const-string/jumbo v0, "source"

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->o:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/File;)V
    :try_end_14a
    .catch Ljava/io/FileNotFoundException; {:try_start_13d .. :try_end_14a} :catch_18a

    .line 384
    :cond_14a
    :goto_14a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 385
    iget-object v4, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->o:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->r:Ljava/lang/String;

    invoke-direct {p0, v6, v1, v4, v5}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bzbs/marketplace/model/review/ReviewModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 387
    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->g:Ljava/util/ArrayList;

    .line 388
    invoke-direct {p0, v7, v6}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a(ZZ)V

    .line 389
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->f()V

    .line 391
    invoke-direct {p0, v6}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a(Z)V

    .line 392
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->edtTextComment:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 393
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->i()V

    .line 395
    new-instance v0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    sget-object v4, Lcom/bzbs/marketplace/asynctask/http/HttpMethod;->b:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/bzbs/marketplace/asynctask/http/HttpMethod;)V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->v:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    .line 396
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->v:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    new-instance v1, Lcom/samsung/privilege/fragment/RequestHelpFragment$7;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment$7;-><init>(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a(Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;)V

    .line 447
    :cond_189
    return-void

    .line 379
    :catch_18a
    move-exception v0

    .line 380
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_14a
.end method

.method private a(Z)V
    .registers 4

    .prologue
    .line 452
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;

    if-eqz v0, :cond_17

    .line 453
    if-eqz p1, :cond_18

    .line 454
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rey/material/widget/ProgressView;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rey/material/widget/ProgressView;->setProgress(F)V

    .line 456
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;

    invoke-virtual {v0}, Lcom/rey/material/widget/ProgressView;->a()V

    .line 460
    :cond_17
    :goto_17
    return-void

    .line 458
    :cond_18
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->pvLinearDeterminate:Lcom/rey/material/widget/ProgressView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/rey/material/widget/ProgressView;->setVisibility(I)V

    goto :goto_17
.end method

.method private a(ZZ)V
    .registers 6

    .prologue
    .line 271
    if-nez p1, :cond_29

    .line 272
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->r:Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->q:Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->o:Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->btnAddPicture:Landroid/widget/ImageView;

    const v1, 0x7f020265

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 276
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->contentImagePost:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/util/KeyboardStatus;->a(Landroid/view/View;Landroid/app/Activity;)V

    .line 286
    :goto_28
    return-void

    .line 280
    :cond_29
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->contentImagePost:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 281
    if-eqz p2, :cond_52

    .line 282
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->a(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->o:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/io/File;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->c()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->b:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->imagePost:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_28

    .line 284
    :cond_52
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->a(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->c()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->imagePost:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_28
.end method

.method static synthetic b(Lcom/samsung/privilege/fragment/RequestHelpFragment;I)I
    .registers 2

    .prologue
    .line 66
    iput p1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->n:I

    return p1
.end method

.method private b()V
    .registers 4

    .prologue
    .line 141
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->b(Z)V

    .line 142
    const/4 v0, 0x0

    .line 143
    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_21

    .line 144
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/review/ReviewModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/review/ReviewModel;->getRowKey()Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_21
    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlRequestHelp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    new-instance v1, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    iget-object v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->u:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    .line 148
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->u:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    new-instance v1, Lcom/samsung/privilege/fragment/RequestHelpFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment$1;-><init>(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;->a(Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask$CallbackList;)V

    .line 179
    return-void
.end method

.method private b(Z)V
    .registers 4

    .prologue
    .line 534
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/samsung/privilege/activity/RequestHelpActivity;

    if-eqz v0, :cond_10

    .line 535
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/privilege/activity/RequestHelpActivity;

    if-eqz p1, :cond_11

    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/RequestHelpActivity;->c(I)V

    .line 537
    :cond_10
    return-void

    .line 535
    :cond_11
    const/16 v1, 0x8

    goto :goto_d
.end method

.method static synthetic b(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Z
    .registers 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/samsung/privilege/fragment/RequestHelpFragment;Z)Z
    .registers 2

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->k:Z

    return p1
.end method

.method static synthetic c(Lcom/samsung/privilege/fragment/RequestHelpFragment;I)I
    .registers 2

    .prologue
    .line 66
    iput p1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->l:I

    return p1
.end method

.method static synthetic c(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method private c()V
    .registers 3

    .prologue
    .line 182
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->j:Landroid/support/v7/widget/LinearLayoutManager;

    .line 183
    new-instance v0, Lcom/samsung/privilege/adapter/RequestHelpAdapter;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/privilege/adapter/RequestHelpAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->h:Lcom/samsung/privilege/adapter/RequestHelpAdapter;

    .line 184
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->j:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 185
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->h:Lcom/samsung/privilege/adapter/RequestHelpAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 187
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/samsung/privilege/fragment/RequestHelpFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment$2;-><init>(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 207
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->h:Lcom/samsung/privilege/adapter/RequestHelpAdapter;

    new-instance v1, Lcom/samsung/privilege/fragment/RequestHelpFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment$3;-><init>(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/adapter/RequestHelpAdapter;->a(Lcom/bzbs/marketplace/listener/OnTabItemListener;)V

    .line 218
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/samsung/privilege/fragment/RequestHelpFragment$4;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment$4;-><init>(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 224
    return-void
.end method

.method static synthetic c(Lcom/samsung/privilege/fragment/RequestHelpFragment;Z)Z
    .registers 2

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->i:Z

    return p1
.end method

.method private d()V
    .registers 2

    .prologue
    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->i:Z

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->g:Ljava/util/ArrayList;

    .line 229
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->b()V

    .line 230
    return-void
.end method

.method static synthetic d(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->f()V

    return-void
.end method

.method static synthetic d(Lcom/samsung/privilege/fragment/RequestHelpFragment;Z)V
    .registers 2

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a(Z)V

    return-void
.end method

.method static synthetic e(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Landroid/support/v7/widget/LinearLayoutManager;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->j:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method private e()V
    .registers 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_a

    .line 234
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 236
    :cond_a
    return-void
.end method

.method static synthetic e(Lcom/samsung/privilege/fragment/RequestHelpFragment;Z)Z
    .registers 2

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->t:Z

    return p1
.end method

.method private f()V
    .registers 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->h:Lcom/samsung/privilege/adapter/RequestHelpAdapter;

    if-eqz v0, :cond_b

    .line 240
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->h:Lcom/samsung/privilege/adapter/RequestHelpAdapter;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/adapter/RequestHelpAdapter;->a(Ljava/util/ArrayList;)V

    .line 242
    :cond_b
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->edtTextComment:Landroid/widget/EditText;

    if-eqz v0, :cond_19

    .line 243
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->edtTextComment:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/privilege/fragment/RequestHelpFragment$5;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment$5;-><init>(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    :cond_19
    return-void
.end method

.method static synthetic f(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Z
    .registers 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->k:Z

    return v0
.end method

.method static synthetic g(Lcom/samsung/privilege/fragment/RequestHelpFragment;)I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->m:I

    return v0
.end method

.method private g()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 252
    iget-object v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v2, :cond_22

    .line 253
    iget-object v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_22

    .line 254
    iget-object v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 255
    invoke-direct {p0, v0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a(I)V

    .line 256
    iget-object v2, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 259
    :goto_21
    return v0

    :cond_22
    move v0, v1

    goto :goto_21
.end method

.method static synthetic h(Lcom/samsung/privilege/fragment/RequestHelpFragment;)I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->l:I

    return v0
.end method

.method private h()V
    .registers 6

    .prologue
    .line 289
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 290
    new-instance v0, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;-><init>(Landroid/app/Activity;)V

    .line 291
    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 292
    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->recyclerItemBelow:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 294
    new-instance v1, Lcom/samsung/privilege/fragment/RequestHelpFragment$6;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment$6;-><init>(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/adapter/ReviewPickAdapter;->a(Lcom/bzbs/marketplace/listener/OnTabItemListener;)V

    .line 329
    return-void
.end method

.method static synthetic i(Lcom/samsung/privilege/fragment/RequestHelpFragment;)I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->n:I

    return v0
.end method

.method private i()V
    .registers 3

    .prologue
    .line 521
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/util/KeyboardStatus;->a(Landroid/view/View;Landroid/app/Activity;)V

    .line 522
    return-void
.end method

.method static synthetic j(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->b()V

    return-void
.end method

.method static synthetic k(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Lcom/samsung/privilege/adapter/RequestHelpAdapter;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->h:Lcom/samsung/privilege/adapter/RequestHelpAdapter;

    return-object v0
.end method

.method static synthetic l(Lcom/samsung/privilege/fragment/RequestHelpFragment;)V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->d()V

    return-void
.end method

.method static synthetic m(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Z
    .registers 2

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic n(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Landroid/net/Uri;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->p:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic o(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Z
    .registers 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->t:Z

    return v0
.end method


# virtual methods
.method protected a()I
    .registers 3

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 127
    const v0, 0x7f04014a

    return v0
.end method

.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->i()V

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->g:Ljava/util/ArrayList;

    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a(Z)V

    .line 136
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->c()V

    .line 137
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->b()V

    .line 138
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    .prologue
    .line 495
    invoke-super {p0, p1, p2, p3}, Lcom/bzbs/marketplace/base/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 496
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->I:Lcom/tbruyelle/rxpermissions/RxPermissions;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->a([Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/privilege/fragment/RequestHelpFragment$$Lambda$2;->a(Lcom/samsung/privilege/fragment/RequestHelpFragment;IILandroid/content/Intent;)Lrx/functions/Action1;

    move-result-object v1

    .line 497
    invoke-virtual {v0, v1}, Lrx/Observable;->a(Lrx/functions/Action1;)Lrx/Subscription;

    .line 518
    return-void
.end method

.method public onClickAdd(Landroid/view/View;)V
    .registers 4
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f100674
        }
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 335
    invoke-direct {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->h()V

    .line 336
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a(I)V

    .line 337
    return-void
.end method

.method public onClickCancel(Landroid/view/View;)V
    .registers 6
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f10066a,
            0x7f10041a
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 341
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f10066a

    if-ne v0, v1, :cond_f

    .line 342
    invoke-direct {p0, v3, v2}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a(ZZ)V

    .line 449
    :cond_e
    :goto_e
    return-void

    .line 345
    :cond_f
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 346
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_2d

    .line 347
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    const v1, 0x7f090251

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/fragment/RequestHelpFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_e

    .line 351
    :cond_2d
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->edtTextComment:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_e

    .line 355
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->a:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->I:Lcom/tbruyelle/rxpermissions/RxPermissions;

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->a([Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/privilege/fragment/RequestHelpFragment$$Lambda$1;->a(Lcom/samsung/privilege/fragment/RequestHelpFragment;)Lrx/functions/Action1;

    move-result-object v1

    .line 356
    invoke-virtual {v0, v1}, Lrx/Observable;->a(Lrx/functions/Action1;)Lrx/Subscription;

    goto :goto_e
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 526
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseFragment;->onDestroyView()V

    .line 527
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->v:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    if-eqz v0, :cond_c

    .line 528
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->v:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b()V

    .line 529
    :cond_c
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->u:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    if-eqz v0, :cond_15

    .line 530
    iget-object v0, p0, Lcom/samsung/privilege/fragment/RequestHelpFragment;->u:Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/asynctask/review/ReviewAsynctask;->a()V

    .line 531
    :cond_15
    return-void
.end method
