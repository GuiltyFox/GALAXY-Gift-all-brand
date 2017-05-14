.class public abstract Lcom/bzbs/marketplace/base/BaseAppCompatActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseAppCompatActivity.java"


# static fields
.field public static A:I

.field public static B:I

.field public static final F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static z:I


# instance fields
.field public C:Landroid/os/Bundle;

.field public D:Landroid/support/v4/app/Fragment;

.field public E:Lcom/facebook/CallbackManager;

.field public G:Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;

.field H:Z

.field public I:Lcom/tbruyelle/rxpermissions/RxPermissions;

.field J:Landroid/view/View$OnClickListener;

.field K:Landroid/location/LocationListener;

.field private L:Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener;

.field private final a:Ljava/lang/String;

.field private b:Landroid/os/Handler;

.field public c:Z

.field protected d:D

.field protected e:D

.field public f:Z

.field protected g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

.field protected h:Landroid/support/v7/widget/Toolbar;

.field protected i:Landroid/widget/TextView;

.field protected j:Landroid/widget/TextView;

.field protected k:Landroid/widget/TextView;

.field protected l:Landroid/widget/TextView;

.field protected m:Landroid/widget/TextView;

.field protected n:Landroid/widget/LinearLayout;

.field protected o:Landroid/widget/ImageView;

.field protected p:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

.field protected q:Landroid/widget/RelativeLayout;

.field protected r:Landroid/widget/ImageView;

.field protected s:Landroid/widget/ImageView;

.field protected t:Landroid/widget/ImageView;

.field protected u:Landroid/widget/ImageView;

.field protected v:Landroid/widget/RelativeLayout;

.field protected w:Landroid/widget/LinearLayout;

.field protected x:Landroid/os/Handler;

.field public y:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 107
    sput v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->z:I

    .line 108
    sput v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->A:I

    .line 109
    sput v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->B:I

    .line 118
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "public_profile"

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->F:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 76
    iput-boolean v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->c:Z

    .line 77
    const-class v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->a:Ljava/lang/String;

    .line 81
    iput-wide v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->d:D

    iput-wide v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->e:D

    .line 84
    iput-boolean v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->f:Z

    .line 86
    iput-object p0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    .line 120
    sget-object v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;

    iput-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->G:Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;

    .line 124
    iput-boolean v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->H:Z

    .line 565
    new-instance v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$5;

    invoke-direct {v0, p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$5;-><init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)V

    iput-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->J:Landroid/view/View$OnClickListener;

    .line 675
    new-instance v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$8;

    invoke-direct {v0, p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$8;-><init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)V

    iput-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->K:Landroid/location/LocationListener;

    return-void
.end method

.method static synthetic a(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(F)I
    .registers 4

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 270
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public a(I)V
    .registers 4

    .prologue
    .line 251
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->s:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    .line 252
    if-eqz p1, :cond_c

    .line 253
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 257
    :cond_b
    :goto_b
    return-void

    .line 255
    :cond_c
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->s:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b
.end method

.method public abstract a(Landroid/os/Bundle;)V
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 232
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_10

    .line 234
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    :cond_10
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/bzbs/marketplace/listener/OnShareSuccessListener;)V
    .registers 8

    .prologue
    .line 633
    new-instance v0, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v0}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 634
    const-string/jumbo v1, "token"

    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "content"

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlShare(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 639
    new-instance v2, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    iget-object v3, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    sget-object v4, Lcom/bzbs/marketplace/asynctask/http/HttpMethod;->b:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/bzbs/marketplace/asynctask/http/HttpMethod;)V

    new-instance v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$7;

    invoke-direct {v0, p0, p2}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$7;-><init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;Lcom/bzbs/marketplace/listener/OnShareSuccessListener;)V

    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a(Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;)V

    .line 660
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/marketplace/listener/OnShareSuccessListener;)V
    .registers 14

    .prologue
    .line 595
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->E:Lcom/facebook/CallbackManager;

    .line 596
    new-instance v1, Lcom/facebook/share/widget/ShareDialog;

    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-direct {v1, v0}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 597
    new-instance v0, Lcom/bzbs/util/ConnectionDetector;

    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-direct {v0, v2}, Lcom/bzbs/util/ConnectionDetector;-><init>(Landroid/content/Context;)V

    .line 598
    invoke-virtual {v0}, Lcom/bzbs/util/ConnectionDetector;->a()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 599
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, ""

    const v3, 0x7f090460

    invoke-virtual {p0, v3}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f09043a

    invoke-virtual {p0, v4}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f090211

    invoke-virtual {p0, v5}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-static/range {v0 .. v6}, Lcom/bzbs/marketplace/dialog/util/DialogUtils;->a(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :goto_3e
    return-void

    .line 603
    :cond_3f
    new-instance v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    .line 604
    invoke-virtual {v0, p2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    .line 605
    invoke-virtual {v0, p3}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    .line 606
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    .line 607
    invoke-static {p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 608
    invoke-virtual {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v0

    .line 610
    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->E:Lcom/facebook/CallbackManager;

    new-instance v3, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$6;

    invoke-direct {v3, p0, p1, p6}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$6;-><init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;Ljava/lang/String;Lcom/bzbs/marketplace/listener/OnShareSuccessListener;)V

    invoke-virtual {v1, v2, v3}, Lcom/facebook/share/widget/ShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 628
    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v1, v0}, Lcom/facebook/share/widget/ShareDialog;->show(Landroid/app/Activity;Lcom/facebook/share/model/ShareContent;)V

    goto :goto_3e
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 5

    .prologue
    .line 240
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    .line 242
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    if-eqz p2, :cond_12

    const/4 v0, 0x0

    .line 246
    :goto_c
    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    :cond_11
    return-void

    .line 244
    :cond_12
    const/16 v0, 0x8

    goto :goto_c
.end method

.method protected a(Z)V
    .registers 4

    .prologue
    .line 302
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_8

    if-eqz p1, :cond_8

    .line 305
    :cond_8
    return-void
.end method

.method public a(ZI)V
    .registers 7

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 546
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->o:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->v:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_c

    .line 556
    :cond_b
    :goto_b
    return-void

    .line 549
    :cond_c
    iget-object v3, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->v:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_31

    move v0, v1

    :goto_11
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 551
    if-nez p2, :cond_20

    .line 552
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 554
    :cond_20
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->m:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->v:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_b

    :cond_31
    move v0, v2

    .line 549
    goto :goto_11
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 213
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->a(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 214
    return-void
.end method

.method protected b(I)V
    .registers 4

    .prologue
    .line 260
    if-nez p1, :cond_9

    .line 261
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->h:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 264
    :goto_8
    return-void

    .line 263
    :cond_9
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->h:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    goto :goto_8
.end method

.method protected b(Z)V
    .registers 4

    .prologue
    .line 669
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->n:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_f

    .line 670
    iput-boolean p1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->H:Z

    .line 671
    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->n:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_10

    const/16 v0, 0x8

    :goto_c
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 673
    :cond_f
    return-void

    .line 671
    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public c(I)V
    .registers 3

    .prologue
    .line 711
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->y:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    if-eqz v0, :cond_9

    .line 712
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->y:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setVisibility(I)V

    .line 714
    :cond_9
    return-void
.end method

.method public c(Z)V
    .registers 7

    .prologue
    .line 692
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 693
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->a(ZI)V

    .line 694
    new-instance v0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlCountCart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/bzbs/marketplace/asynctask/http/HttpMethod;->a:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/bzbs/marketplace/asynctask/http/HttpMethod;)V

    new-instance v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$9;-><init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a(Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;)V

    .line 708
    :cond_37
    return-void
.end method

.method public doBack(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->finish()V

    .line 397
    return-void
.end method

.method public abstract f()I
.end method

.method protected abstract g()V
.end method

.method public i()V
    .registers 2

    .prologue
    .line 217
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->E:Lcom/facebook/CallbackManager;

    .line 218
    return-void
.end method

.method protected j()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 227
    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->b(Z)V

    .line 228
    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->a(Z)V

    .line 229
    return-void
.end method

.method public k()I
    .registers 6

    .prologue
    .line 274
    const/4 v0, 0x0

    .line 275
    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "status_bar_height"

    const-string/jumbo v3, "dimen"

    const-string/jumbo v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 276
    if-lez v1, :cond_1c

    .line 277
    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 279
    :cond_1c
    return v0
.end method

.method public l()V
    .registers 7

    .prologue
    .line 310
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->j:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 368
    :goto_4
    return-void

    .line 313
    :cond_5
    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 315
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 316
    if-eqz v0, :cond_6e

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    .line 317
    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->k:Landroid/widget/TextView;

    const v2, 0x7f0903f6

    invoke-virtual {p0, v2}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->j:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/privilege/GalaxyGift;->c:Ljava/text/DecimalFormat;

    iget-object v4, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->D(Landroid/content/Context;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->l:Landroid/widget/TextView;

    const v2, 0x7f0901c6

    invoke-virtual {p0, v2}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    invoke-static {v0}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlPoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    new-instance v1, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;

    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-direct {v1, v2, v0}, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    new-instance v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;

    invoke-direct {v0, p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;-><init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)V

    invoke-virtual {v1, v0}, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->a(Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackModel;)V

    goto :goto_4

    .line 364
    :cond_6e
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->k:Landroid/widget/TextView;

    const v1, 0x7f0903f7

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->j:Landroid/widget/TextView;

    const v1, 0x7f0903f8

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->l:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method

.method public m()V
    .registers 3

    .prologue
    .line 531
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->q:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_5

    .line 536
    :goto_4
    return-void

    .line 535
    :cond_5
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->q:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_4
.end method

.method public n()V
    .registers 3

    .prologue
    .line 539
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->r:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    .line 543
    :goto_4
    return-void

    .line 542
    :cond_5
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->r:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .prologue
    .line 664
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 665
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->E:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 666
    return-void
.end method

.method public onClickUpdate(Landroid/view/View;)V
    .registers 7
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f10072e,
            0x7f10072f,
            0x7f100730
        }
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 378
    if-eqz v0, :cond_24

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 379
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    instance-of v0, v0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    if-eqz v0, :cond_23

    .line 381
    const-string/jumbo v0, "BZB Marketplace"

    const-string/jumbo v1, "Click My Points"

    const-string/jumbo v2, "Marketplace | My Points"

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_23
    :goto_23
    return-void

    .line 386
    :cond_24
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    instance-of v0, v0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    if-eqz v0, :cond_36

    .line 388
    const-string/jumbo v0, "BZB Marketplace"

    const-string/jumbo v1, "Click You Are Not Logged In"

    const-string/jumbo v2, "Marketplace | You Are Not Logged In"

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_36
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->E:Lcom/facebook/CallbackManager;

    const-string/jumbo v3, "Marketplace"

    const-string/jumbo v4, "account"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 133
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->b:Landroid/os/Handler;

    .line 137
    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "isAnimation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->a(Z)V

    .line 138
    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->setContentView(I)V

    .line 141
    :try_start_20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_34

    .line 144
    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string/jumbo v1, "#6A75BA"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_34} :catch_162

    .line 150
    :cond_34
    :goto_34
    invoke-static {p0}, Lcom/tbruyelle/rxpermissions/RxPermissions;->a(Landroid/content/Context;)Lcom/tbruyelle/rxpermissions/RxPermissions;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->I:Lcom/tbruyelle/rxpermissions/RxPermissions;

    .line 151
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->I:Lcom/tbruyelle/rxpermissions/RxPermissions;

    invoke-virtual {v0, v2}, Lcom/tbruyelle/rxpermissions/RxPermissions;->a(Z)V

    .line 153
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 154
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->x:Landroid/os/Handler;

    .line 155
    const v0, 0x7f100722

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->h:Landroid/support/v7/widget/Toolbar;

    .line 156
    const v0, 0x7f100682

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->i:Landroid/widget/TextView;

    .line 157
    const v0, 0x7f10072f

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->j:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f10072e

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->k:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f100730

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->l:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f100728

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->n:Landroid/widget/LinearLayout;

    .line 161
    const v0, 0x7f100726

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->o:Landroid/widget/ImageView;

    .line 162
    const v0, 0x7f100727

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->m:Landroid/widget/TextView;

    .line 163
    const v0, 0x7f100725

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->v:Landroid/widget/RelativeLayout;

    .line 164
    const v0, 0x7f10072a

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->w:Landroid/widget/LinearLayout;

    .line 165
    const v0, 0x7f10018b

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iput-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->p:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    .line 166
    const v0, 0x7f10072c

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->q:Landroid/widget/RelativeLayout;

    .line 167
    const v0, 0x7f1003cc

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->r:Landroid/widget/ImageView;

    .line 168
    const v0, 0x7f10072d

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->s:Landroid/widget/ImageView;

    .line 169
    const v0, 0x7f10072b

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->t:Landroid/widget/ImageView;

    .line 170
    const v0, 0x7f100724

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->u:Landroid/widget/ImageView;

    .line 172
    const v0, 0x7f1006dd

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    iput-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->y:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    .line 173
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->h:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_117

    .line 174
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->h:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->a(Landroid/support/v7/widget/Toolbar;)V

    .line 178
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->u:Landroid/widget/ImageView;

    new-instance v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$1;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$1;-><init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    :cond_117
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 188
    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 189
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->A:I

    .line 190
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->z:I

    .line 191
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v1, 0x42440000    # 49.0f

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->a(F)I

    move-result v1

    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->k()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    sput v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->B:I

    .line 192
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->l(Landroid/content/Context;)V

    .line 194
    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->i()V

    .line 195
    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->g()V

    .line 197
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v0}, Lcom/bzbs/marketplace/util/ScreenUtils;->a(Landroid/app/Activity;)V

    .line 199
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$2;-><init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;Landroid/os/Bundle;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 208
    invoke-virtual {p0, p1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->a(Landroid/os/Bundle;)V

    .line 209
    return-void

    .line 146
    :catch_162
    move-exception v0

    goto/16 :goto_34
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .prologue
    .line 284
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_c

    .line 285
    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->onBackPressed()V

    .line 287
    :cond_c
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 447
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 449
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->L:Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener;

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->b(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 452
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_20

    .line 453
    const-string/jumbo v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_20

    const-string/jumbo v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_20

    .line 465
    :cond_20
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 471
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 473
    new-instance v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener;-><init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;Lcom/bzbs/marketplace/base/BaseAppCompatActivity$1;)V

    iput-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->L:Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener;

    .line 474
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->L:Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener;

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->a(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 475
    iget-boolean v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->f:Z

    if-eqz v0, :cond_14

    .line 488
    :cond_14
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->l(Landroid/content/Context;)V

    .line 490
    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->l()V

    .line 526
    return-void
.end method
