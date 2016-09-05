.class Lcom/bzbs/marketplace/fragment/ReviewFragment$10;
.super Ljava/lang/Object;
.source "ReviewFragment.java"

# interfaces
.implements Lcom/bzbs/marketplace/listener/OnTabItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/ReviewFragment;->i()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/fragment/ReviewFragment;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/ReviewFragment;)V
    .registers 2

    .prologue
    .line 629
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$10;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/bzbs/marketplace/fragment/ReviewFragment$10;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/fragment/ReviewFragment$10;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/Boolean;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 650
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 651
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 652
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$10;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-static {v3}, Lcom/bzbs/marketplace/util/OutputMediaFile;->a(I)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a(Lcom/bzbs/marketplace/fragment/ReviewFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 653
    const-string/jumbo v1, "output"

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$10;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-static {v2}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->q(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 654
    const-string/jumbo v1, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 655
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$10;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    const/16 v2, 0x270e

    invoke-virtual {v1, v0, v2}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 659
    :cond_31
    return-void
.end method

.method static synthetic b(Lcom/bzbs/marketplace/fragment/ReviewFragment$10;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/fragment/ReviewFragment$10;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/Boolean;)V
    .registers 5

    .prologue
    .line 637
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 638
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 639
    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 640
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$10;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    const/16 v2, 0x270f

    invoke-virtual {v1, v0, v2}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 644
    :cond_1b
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 632
    packed-switch p2, :pswitch_data_42

    .line 664
    :goto_5
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$10;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->m(Lcom/bzbs/marketplace/fragment/ReviewFragment;)Z

    .line 665
    return-void

    .line 635
    :pswitch_b
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$10;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->I:Lcom/tbruyelle/rxpermissions/RxPermissions;

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->a([Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment$10$$Lambda$1;->a(Lcom/bzbs/marketplace/fragment/ReviewFragment$10;)Lrx/functions/Action1;

    move-result-object v1

    .line 636
    invoke-virtual {v0, v1}, Lrx/Observable;->a(Lrx/functions/Action1;)Lrx/Subscription;

    goto :goto_5

    .line 648
    :pswitch_26
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$10;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->I:Lcom/tbruyelle/rxpermissions/RxPermissions;

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.CAMERA"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->a([Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/bzbs/marketplace/fragment/ReviewFragment$10$$Lambda$2;->a(Lcom/bzbs/marketplace/fragment/ReviewFragment$10;)Lrx/functions/Action1;

    move-result-object v1

    .line 649
    invoke-virtual {v0, v1}, Lrx/Observable;->a(Lrx/functions/Action1;)Lrx/Subscription;

    goto :goto_5

    .line 632
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_b
        :pswitch_26
    .end packed-switch
.end method
