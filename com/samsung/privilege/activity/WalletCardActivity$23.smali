.class Lcom/samsung/privilege/activity/WalletCardActivity$23;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity;->a(Landroid/view/View;Landroid/view/View;ZZ)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Lcom/samsung/privilege/activity/WalletCardActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity;Landroid/view/View;Landroid/view/View;ZZ)V
    .registers 6

    .prologue
    .line 1938
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23;->b:Landroid/view/View;

    iput-boolean p4, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23;->c:Z

    iput-boolean p5, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    .prologue
    .line 1946
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23;->a:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1948
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23;->e:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v1, 0x7f05001a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1949
    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WalletCardActivity$23$1;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity$23;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1978
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 1979
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1980
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$23;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1981
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 1986
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 1942
    return-void
.end method
